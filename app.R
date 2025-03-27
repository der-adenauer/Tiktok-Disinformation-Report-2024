###############################################################################
# app.R – "Europäische Karte zum Code of Practice on Disinformation von TikTok 2024"
###############################################################################

# Wichtig: Diese Version erzeugt für SLI 17.1.1, 18.2.1 und 21.1.1
# jeweils mehrere Einträge in sli_data_list, damit in jedem Tab
# Balkendiagramme erstellt werden können. (Z. B. "SLI 17.1.1 (StateControlledMedia)",
# "SLI 17.1.1 (VideoNoticeHolocaust)" usw.)
# So werden separate Plots für jeden Teil-Dataframe ermöglicht.

# Pakete laden (Installation bei Bedarf):
# install.packages(c("shiny","leaflet","dplyr","rnaturalearth","rnaturalearthdata",
#                    "sf","ggplot2","countrycode","markdown","DT"))

library(shiny)
library(leaflet)
library(dplyr)
library(rnaturalearth)
library(rnaturalearthdata)
library(sf)
library(ggplot2)
library(countrycode)
library(markdown)  # Für markdownToHTML
library(DT)        # Für DataTable

# ----------------------------------------------------------------------------
# "ttdata.R" sollte alle Dataframes (df_SLI_xxx) und *_info sowie tiktok_users
# enthalten. Alternativ könnten diese Dataframes im Skript selbst definiert sein.
# ----------------------------------------------------------------------------
source("ttdata.R")

# ----------------------------------------------------------------------------
# Flaggen-Emojis (optional)
# ----------------------------------------------------------------------------
flag_map <- list(
  "Austria"        = "\U0001F1E6\U0001F1F9",
  "Belgium"        = "\U0001F1E7\U0001F1EA",
  "Bulgaria"       = "\U0001F1E7\U0001F1EC",
  "Croatia"        = "\U0001F1ED\U0001F1F7",
  "Cyprus"         = "\U0001F1E8\U0001F1FE",
  "Czech Republic" = "\U0001F1E8\U0001F1FF",
  "Germany"        = "\U0001F1E9\U0001F1EA",
  "Denmark"        = "\U0001F1E9\U0001F1F0",
  "Estonia"        = "\U0001F1EA\U0001F1EA",
  "Finland"        = "\U0001F1EB\U0001F1EE",
  "France"         = "\U0001F1EB\U0001F1F7",
  "Greece"         = "\U0001F1EC\U0001F1F7",
  "Hungary"        = "\U0001F1ED\U0001F1FA",
  "Ireland"        = "\U0001F1EE\U0001F1EA",
  "Italy"          = "\U0001F1EE\U0001F1F9",
  "Latvia"         = "\U0001F1F1\U0001F1FB",
  "Lithuania"      = "\U0001F1F1\U0001F1F9",
  "Luxembourg"     = "\U0001F1F1\U0001F1FA",
  "Malta"          = "\U0001F1F2\U0001F1FD",
  "Netherlands"    = "\U0001F1F3\U0001F1F1",
  "Poland"         = "\U0001F1F5\U0001F1F1",
  "Portugal"       = "\U0001F1F5\U0001F1F9",
  "Romania"        = "\U0001F1F7\U0001F1F4",
  "Slovakia"       = "\U0001F1F8\U0001F1F0",
  "Slovenia"       = "\U0001F1F8\U0001F1EE",
  "Spain"          = "\U0001F1EA\U0001F1F8",
  "Sweden"         = "\U0001F1F8\U0001F1EA",
  "Iceland"        = "\U0001F1EE\U0001F1F8",
  "Liechtenstein"  = "\U0001F1F1\U0001F1EE",
  "Norway"         = "\U0001F1F3\U0001F1F4",
  "Moldova"        = "\U0001F1F2\U0001F1E9"
)

# ----------------------------------------------------------------------------
# Lesbare Aliase für SLIs
# ----------------------------------------------------------------------------
sli_alias <- list(
  "SLI 1.1.1" = "Werbeanzeigen (Politik/Falschinfo)",
  "SLI 1.1.2" = "Schätzung demonetisierter Desinformation (Werbung)",
  "SLI 2.1.1" = "Entfernte Werbeanzeigen – Politik/Falschinfo (Basis)",
  "SLI 2.3.1" = "Entfernte Ads + Impressionen (Politik/Falschinfo)",
  "SLI 2.4.1" = "Einsprüche gegen entfernte Ads (Politik/Falschinfo)",
  "SLI 14.2.1–14.2.4" = "Fake-Accounts/Botnets (TTP #1)",
  "TTP OR ACTION 2" = "Fake-Likes (TTP #2)",
  "TTP OR ACTION 3" = "Fake-Follower (TTP #3)",
  "TTP OR ACTION 6" = "Gezielte Ansprache (TTP #6)",
  "TTP OR ACTION 7" = "Täuschend manipulierte Medien (TTP #7)",
  
  # SLI 17.1.1 wird in viele Teil-Dataframes aufgespalten (für Plots):
  "SLI 17.1.1 (StateControlledMedia)"       = "Interventionen/Labels: Staatlich kontrollierte Medien",
  "SLI 17.1.1 (VideoNoticeHolocaust)"       = "Interventionen/Labels: Holocaust Notice",
  "SLI 17.1.1 (VideoNoticeMpox)"            = "Interventionen/Labels: Mpox Notice",
  "SLI 17.1.1 (VideoInterventionElection)"   = "Interventionen/Labels: Wahl-Intervention",
  "SLI 17.1.1 (SearchInterventionHolocaust)" = "Interventionen/Labels: Suche Holocaust",
  "SLI 17.1.1 (SearchInterventionMpox)"      = "Interventionen/Labels: Suche Mpox",
  "SLI 17.1.1 (SearchInterventionClimate)"   = "Interventionen/Labels: Suche Klima",
  "SLI 17.1.1 (SearchInterventionElection)"  = "Interventionen/Labels: Suche Wahlen",
  "SLI 17.1.1 (PSAHolocaust)"               = "Interventionen/Labels: PSA Holocaust",
  "SLI 17.1.1 (PSAMpox)"                    = "Interventionen/Labels: PSA Mpox",
  
  # SLI 18.2.1 in zwei Teil-Dataframes:
  "SLI 18.2.1 (MisinformationPolicy)"     = "Entfernte Videos: Falschinfo",
  "SLI 18.2.1 (CivicAndSynthetic)"        = "Entfernte Videos: Wahlen + AI/Synthetic",
  
  "SLI 19.2.1" = "Benutzereinstellungen",
  
  # SLI 21.1.1 in drei Teil-Dataframes:
  "SLI 21.1.1 (Misinformation)"        = "Maßnahmen: Falschinfo",
  "SLI 21.1.1 (Civic/Election)"        = "Maßnahmen: Wahlen",
  "SLI 21.1.1 (Synthetic/Manipulated)" = "Maßnahmen: Synthetische Medien",
  
  "SLI 21.1.2" = "Label 'Unverified Content' (Pop-up)",
  
  "SLI 24.1.1 (Kompakt)"                           = "Durchsetzungsmaßnahmen (Kompakt)",
  "SLI 24.1.1 (Misinformation/Civic/Synthetic)"    = "Durchsetzungsmaßnahmen (Detail)",
  
  "LI 31.1.1"  = "Faktenchecks – Anzahl",
  "SLI 31.1.2" = "Faktencheck-Entfernungen – Absolut",
  "SLI 31.1.3" = "Faktencheck-Entfernungen – Prozent"
)

# ----------------------------------------------------------------------------
# Sammlung von Ländern
# ----------------------------------------------------------------------------
all_dataframes <- list(
  df_SLI_1_1_1, df_SLI_1_1_2,
  df_SLI_2_1_1, df_SLI_2_3_1, df_SLI_2_4_1,
  df_SLI_14_2_1_to_14_2_4,
  df_TTP_OR_ACTION_2, df_TTP_OR_ACTION_3, df_TTP_OR_ACTION_6, df_TTP_OR_ACTION_7,
  
  # SLI 17.1.1: 10 Teil-Dataframes
  df_SLI_17_1_1_StateControlledMedia,
  df_SLI_17_1_1_VideoNoticeHolocaust,
  df_SLI_17_1_1_VideoNoticeMpox,
  df_SLI_17_1_1_VideoIntervention_Election,
  df_SLI_17_1_1_SearchIntervention_Holocaust,
  df_SLI_17_1_1_SearchIntervention_Mpox,
  df_SLI_17_1_1_SearchIntervention_Climate,
  df_SLI_17_1_1_SearchIntervention_Election,
  df_SLI_17_1_1_PSA_Holocaust,
  df_SLI_17_1_1_PSA_Mpox,
  
  # SLI 18.2.1: 2 Teil-Dataframes
  df_SLI_18_2_1_misinformation,
  df_SLI_18_2_1_civic_synthetic,
  
  df_SLI_19_2_1,
  
  # SLI 21.1.1: 3 Teil-Dataframes
  df_SLI_21_1_1_misinformation,
  df_SLI_21_1_1_civic_election,
  df_SLI_21_1_1_synthetic,
  
  df_SLI_21_1_2,
  
  df_SLI_24_1_1,  # Kompakte Version
  
  df_SLI_24_1_1_misinformation,
  df_SLI_24_1_1_civic_election,
  df_SLI_24_1_1_synthetic,
  
  df_SLI_31_1_1, df_SLI_31_1_2, df_SLI_31_1_3
)

all_countries <- unique(
  unlist(
    lapply(all_dataframes, function(df){
      if(!is.null(df)){
        if("member_states" %in% names(df)){
          df[["member_states"]]
        } else if("network_origin" %in% names(df)){
          df[["network_origin"]]
        } else { NULL }
      } else { NULL }
    })
  )
)
all_countries <- sort(unique(all_countries[!is.na(all_countries)]))

# ----------------------------------------------------------------------------
# Welt-Karte rnaturalearth (gefiltert auf verwendete Länder)
# ----------------------------------------------------------------------------
world <- ne_countries(scale = "medium", returnclass = "sf")
world$std_name <- countrycode(world$name, origin="country.name", 
                              destination="country.name", warn=FALSE)

filtered_map <- world %>%
  filter(std_name %in% countrycode(all_countries, "country.name", 
                                   "country.name", warn=FALSE)) %>%
  mutate(
    join_name = std_name,
    layer_id  = join_name
  )

# ----------------------------------------------------------------------------
# Hilfsfunktion: Balkendiagramm
# ----------------------------------------------------------------------------
plot_sli_barchart <- function(df, numeric_col){
  if(is.null(df) || !numeric_col %in% names(df)){
    return(
      ggplot() +
        ggtitle("Keine Daten oder Spalte nicht vorhanden") +
        theme_minimal()
    )
  }
  # Falls % enthalten => entfernen, dann as.numeric
  df[[numeric_col]] <- gsub("%","", df[[numeric_col]])
  df[[numeric_col]] <- suppressWarnings(as.numeric(df[[numeric_col]]))
  
  df_clean <- df %>% filter(!is.na(.data[[numeric_col]]))
  if(nrow(df_clean)==0){
    return(
      ggplot() + 
        ggtitle("Keine numerischen Daten für Plot") + 
        theme_minimal()
    )
  }
  
  df_clean <- df_clean %>% arrange(desc(.data[[numeric_col]]))
  
  ggplot(df_clean, aes(x = reorder(member_states, .data[[numeric_col]]),
                       y = .data[[numeric_col]])) +
    geom_col(width=0.7, fill="grey50") +
    coord_flip() +
    geom_text(aes(label = .data[[numeric_col]]),
              size=4, color="black", hjust=-0.1) +
    scale_y_continuous(expand = expansion(mult = c(0,0.2))) +
    labs(x=NULL, y=numeric_col,
         title=paste("Balkendiagramm:", numeric_col)) +
    theme_minimal(base_size=16) +
    theme(
      axis.text.y = element_text(size=14),
      axis.text.x = element_text(size=12)
    )
}

# ----------------------------------------------------------------------------
# Zusammenstellung der SLI-Daten (inkl. Sub-Dataframes)
# ----------------------------------------------------------------------------
sli_data_list <- list(
  # Vorherige SLIs
  "SLI 1.1.1" = list(data = df_SLI_1_1_1, info = df_SLI_1_1_1_info),
  "SLI 1.1.2" = list(data = df_SLI_1_1_2, info = df_SLI_1_1_2_info),
  "SLI 2.1.1" = list(data = df_SLI_2_1_1, info = df_SLI_2_1_1_info),
  "SLI 2.3.1" = list(data = df_SLI_2_3_1, info = df_SLI_2_3_1_info),
  "SLI 2.4.1" = list(data = df_SLI_2_4_1, info = df_SLI_2_4_1_info),
  "SLI 14.2.1–14.2.4" = list(data = df_SLI_14_2_1_to_14_2_4, info = df_SLI_14_2_1_to_14_2_4_info),
  "TTP OR ACTION 2" = list(data = df_TTP_OR_ACTION_2, info = df_TTP_OR_ACTION_2_info),
  "TTP OR ACTION 3" = list(data = df_TTP_OR_ACTION_3, info = df_TTP_OR_ACTION_3_info),
  "TTP OR ACTION 6" = list(data = df_TTP_OR_ACTION_6, info = df_TTP_OR_ACTION_6_info),
  "TTP OR ACTION 7" = list(data = df_TTP_OR_ACTION_7, info = df_TTP_OR_ACTION_7_info),
  
  # Aufgesplittetes SLI 17.1.1
  "SLI 17.1.1 (StateControlledMedia)"       = list(data = df_SLI_17_1_1_StateControlledMedia,        info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (VideoNoticeHolocaust)"       = list(data = df_SLI_17_1_1_VideoNoticeHolocaust,         info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (VideoNoticeMpox)"            = list(data = df_SLI_17_1_1_VideoNoticeMpox,              info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (VideoInterventionElection)"   = list(data = df_SLI_17_1_1_VideoIntervention_Election,   info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (SearchInterventionHolocaust)" = list(data = df_SLI_17_1_1_SearchIntervention_Holocaust, info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (SearchInterventionMpox)"      = list(data = df_SLI_17_1_1_SearchIntervention_Mpox,      info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (SearchInterventionClimate)"   = list(data = df_SLI_17_1_1_SearchIntervention_Climate,   info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (SearchInterventionElection)"  = list(data = df_SLI_17_1_1_SearchIntervention_Election,  info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (PSAHolocaust)"               = list(data = df_SLI_17_1_1_PSA_Holocaust,                info = df_SLI_17_1_1_info),
  "SLI 17.1.1 (PSAMpox)"                    = list(data = df_SLI_17_1_1_PSA_Mpox,                     info = df_SLI_17_1_1_info),
  
  # Aufgesplittetes SLI 18.2.1
  "SLI 18.2.1 (MisinformationPolicy)"     = list(data = df_SLI_18_2_1_misinformation, info = df_SLI_18_2_1_info),
  "SLI 18.2.1 (CivicAndSynthetic)"        = list(data = df_SLI_18_2_1_civic_synthetic, info = df_SLI_18_2_1_info),
  
  "SLI 19.2.1" = list(data = df_SLI_19_2_1, info = df_SLI_19_2_1_info),
  
  # Aufgesplittetes SLI 21.1.1
  "SLI 21.1.1 (Misinformation)"        = list(data = df_SLI_21_1_1_misinformation,   info = df_SLI_21_1_1_info),
  "SLI 21.1.1 (Civic/Election)"        = list(data = df_SLI_21_1_1_civic_election,   info = df_SLI_21_1_1_info),
  "SLI 21.1.1 (Synthetic/Manipulated)" = list(data = df_SLI_21_1_1_synthetic,         info = df_SLI_21_1_1_info),
  
  "SLI 21.1.2" = list(data = df_SLI_21_1_2, info = df_SLI_21_1_2_info),
  
  # SLI 24.1.1 (Kompakt) plus Sub-Dataframes
  "SLI 24.1.1 (Kompakt)" = list(data = df_SLI_24_1_1, info = df_SLI_24_1_1_info),
  
  # Diese drei Sub-Dataframes (Misinformation, Civic/Election, Synthetic) aus
  # df_SLI_24_1_1_misinformation, df_SLI_24_1_1_civic_election, df_SLI_24_1_1_synthetic
  # kann man alle unter "Detail" aufteilen oder separat. Hier separat:
  "SLI 24.1.1 (Misinformation/Civic/Synthetic)"         = list(data = NULL, info = df_SLI_24_1_1_info),
  "SLI 24.1.1 (Misinformation Sub)"                     = list(data = df_SLI_24_1_1_misinformation, info = df_SLI_24_1_1_info),
  "SLI 24.1.1 (Civic/Election Sub)"                     = list(data = df_SLI_24_1_1_civic_election, info = df_SLI_24_1_1_info),
  "SLI 24.1.1 (Synthetic Sub)"                          = list(data = df_SLI_24_1_1_synthetic,      info = df_SLI_24_1_1_info),
  
  "LI 31.1.1"  = list(data = df_SLI_31_1_1, info = df_SLI_31_1_1_info),
  "SLI 31.1.2" = list(data = df_SLI_31_1_2, info = df_SLI_31_1_2_info),
  "SLI 31.1.3" = list(data = df_SLI_31_1_3, info = df_SLI_31_1_3_info)
)

# ----------------------------------------------------------------------------
# UI
# ----------------------------------------------------------------------------
ui <- fluidPage(
  fluidRow(
    style="background-color:#f2f2f2; padding:10px; margin-bottom:10px;",
    column(
      width=6,
      tags$h2("Europäische Karte zum Code of Practice on Disinformation von TikTok 2024")
    ),
    column(
      width=6, align="right",
      actionButton("btn_copd", "Code of Practice on Disinformation", 
                   onclick="window.open('https://ec.europa.eu/commission/presscorner/detail/en/ip_22_3664','_blank')",
                   style="margin-right:10px;"
      ),
      actionButton("btn_tiktok_dsa", "TikTok-DSA-Transparency-Report 2024", 
                   onclick="window.open('https://www.tiktok.com/safety/en/transparency-data','_blank')"
      )
    )
  ),
  
  sidebarLayout(
    sidebarPanel(
      h4("Land-Details"),
      htmlOutput("steckbrief_anzeige")
    ),
    mainPanel(
      leafletOutput("eu_map", height="500px"),
      tabsetPanel(
        id="main_tabs",
        tabPanel(
          "SLI Data & Plots",
          uiOutput("dynamic_sli_tabs")
        )
      )
    )
  )
)

# ----------------------------------------------------------------------------
# SERVER
# ----------------------------------------------------------------------------
server <- function(input, output, session){
  
  # ------------------------------------------------------------------------
  # Leaflet-Karte
  # ------------------------------------------------------------------------
  output$eu_map <- renderLeaflet({
    leaflet(filtered_map) %>%
      addProviderTiles("CartoDB.Positron") %>%
      setView(lng=10, lat=50, zoom=4) %>%  # Europa
      addPolygons(
        layerId = ~layer_id,
        fillColor="lightblue",
        color="gray",
        weight=1,
        fillOpacity=0.7,
        highlight=highlightOptions(
          weight=3,
          color="black",
          fillOpacity=0.7,
          bringToFront=TRUE
        ),
        label=~layer_id,
        labelOptions=labelOptions(direction="auto")
      )
  })
  
  # ------------------------------------------------------------------------
  # Klick auf Land
  # ------------------------------------------------------------------------
  ausgewaehlt_land <- reactiveVal(NULL)
  observeEvent(input$eu_map_shape_click, {
    ausgewaehlt_land(input$eu_map_shape_click$id)
  })
  
  # ------------------------------------------------------------------------
  # Steckbrief
  # ------------------------------------------------------------------------
  output$steckbrief_anzeige <- renderUI({
    land <- ausgewaehlt_land()
    if(is.null(land)){
      return(HTML("<p>Kein Land ausgewählt.</p>"))
    }
    
    # Einwohner ermitteln
    row_map <- filtered_map %>% filter(layer_id==land)
    pop_html <- ""
    if("pop_est" %in% names(row_map)){
      pop_est_val <- row_map$pop_est[1]
      pop_mio <- pop_est_val / 1e6
      pop_str <- paste0(round(pop_mio,1),"M")
      pop_html <- paste0("<div style='font-size:120%;'><b>Einwohner:</b> ", pop_str, "</div>")
    }
    
    # TikTok monthly active recipients
    iso_code <- countrycode(land, "country.name","iso2c", warn=FALSE)
    user_html <- ""
    if(!is.na(iso_code)){
      df_u <- tiktok_users %>% filter(code==iso_code)
      if(nrow(df_u)==1){
        # extrahieren
        m_str <- gsub("[^0-9\\.]","", df_u$monthly_active_recipients)
        num_val <- suppressWarnings(as.numeric(m_str))
        if(!is.na(num_val)){
          user_html <- paste0("<div style='font-size:120%;'><b>TikTok-Nutzer:</b> ", round(num_val,1), "M</div>")
        }
      }
    }
    
    # Flagge
    flag_emoji <- flag_map[[land]]
    if(is.null(flag_emoji)) {
      flag_emoji <- "\U0001F3F3"
    }
    flag_html <- paste0("<span style='font-size:300%; float:right;'>", flag_emoji, "</span>")
    main_title <- paste0("<h3 style='font-size:150%; clear:both;'>", land, flag_html, "</h3>")
    
    # Metrik-Tabellen
    metric_html <- ""
    for(nm in names(sli_data_list)){
      df_local <- sli_data_list[[nm]]$data
      if(!is.null(df_local) && "member_states" %in% names(df_local)){
        rowdf <- df_local %>% filter(member_states==land)
        if(nrow(rowdf)>0){
          alias_title <- sli_alias[[nm]]
          if(is.null(alias_title)) alias_title <- nm
          
          cols <- setdiff(names(rowdf), "member_states")
          row_vals <- rowdf[1, cols, drop=FALSE]
          
          subtable <- paste0(
            "<table style='border:1px solid #ccc; margin-bottom:10px; width:100%; table-layout:fixed; word-wrap:break-word;'>",
            "<tr style='background-color:#eee;'><th colspan='2' style='text-align:left;'>",
            alias_title, "</th></tr>"
          )
          for(cc in cols){
            val <- as.character(row_vals[[cc]])
            if(is.na(val) || val=="") val <- "—"
            
            # Numerische Formatierung
            val_num <- suppressWarnings(as.numeric(val))
            if(!is.na(val_num)){
              val <- format(round(val_num,0), big.mark=".")
            }
            subtable <- paste0(
              subtable,
              "<tr><td style='width:150px;'><b>", cc, "</b></td><td>", val, "</td></tr>"
            )
          }
          subtable <- paste0(subtable, "</table>")
          metric_html <- paste0(metric_html, subtable)
        }
      }
    }
    
    HTML(paste0(main_title, pop_html, user_html, "<hr/>", metric_html))
  })
  
  # ------------------------------------------------------------------------
  # Dynamische SLI-Tabs
  # ------------------------------------------------------------------------
  output$dynamic_sli_tabs <- renderUI({
    sub_panels <- lapply(names(sli_data_list), function(orig_name){
      display_title <- sli_alias[[orig_name]]
      if(is.null(display_title)) display_title <- orig_name
      
      this_data <- sli_data_list[[orig_name]]$data
      this_info <- sli_data_list[[orig_name]]$info
      
      # Sonderfall TTP OR ACTION 6 -> "network_origin"
      if(orig_name=="TTP OR ACTION 6" && !is.null(this_data) && "network_origin" %in% names(this_data)){
        tabPanel(
          display_title,
          tagList(
            h4("DataTable: Gezielte Ansprache (TTP #6)"),
            DTOutput(paste0("dt_", orig_name)),
            if(!is.null(this_info)){
              tagList(hr(), uiOutput(paste0("info_", orig_name)))
            }
          )
        )
      } else {
        # Normaler Fall: optional Plot + Info
        tabPanel(
          display_title,
          tagList(
            if(!is.null(this_data)){
              tagList(
                {
                  numeric_cols <- setdiff(names(this_data), "member_states")
                  numeric_cols <- numeric_cols[sapply(numeric_cols, function(x){
                    vals <- this_data[[x]]
                    vals <- gsub("%","", vals)
                    suppressWarnings(!all(is.na(as.numeric(vals))))
                  })]
                  if(length(numeric_cols)==0){
                    p("Keine numerisch interpretierbaren Spalten.")
                  } else {
                    tagList(
                      selectInput(
                        paste0("col_select_", orig_name),
                        "Spalte für Balkendiagramm:",
                        choices = numeric_cols
                      ),
                      plotOutput(paste0("plot_", orig_name), height="400px")
                    )
                  }
                }
              )
            },
            if(!is.null(this_info)){
              tagList(hr(), uiOutput(paste0("info_", orig_name)))
            }
          )
        )
      }
    })
    do.call(tabsetPanel, c(id="sub_sli_tabs", sub_panels))
  })
  
  # ------------------------------------------------------------------------
  # Rendern von Plots, Info, Tabellen
  # ------------------------------------------------------------------------
  observe({
    for(orig_name in names(sli_data_list)){
      local({
        nm <- orig_name
        df_local <- sli_data_list[[nm]]$data
        info_loc <- sli_data_list[[nm]]$info
        
        # Markdown-Info
        if(!is.null(info_loc)){
          output[[paste0("info_", nm)]] <- renderUI({
            md_html <- tryCatch(
              markdownToHTML(text=info_loc, fragment.only=TRUE),
              error=function(e) paste("<pre>", e$message, "</pre>")
            )
            HTML(md_html)
          })
        }
        
        # Datatable TTP OR ACTION 6
        if(nm=="TTP OR ACTION 6" && !is.null(df_local) && "network_origin" %in% names(df_local)){
          output[[paste0("dt_", nm)]] <- renderDT({
            datatable(df_local, options=list(pageLength=10, autoWidth=TRUE))
          })
        }
        
        # Plot
        if(!is.null(df_local) && nm!="TTP OR ACTION 6"){
          output[[paste0("plot_", nm)]] <- renderPlot({
            req(input[[paste0("col_select_", nm)]])
            colname <- input[[paste0("col_select_", nm)]]
            plot_sli_barchart(df_local, colname)
          })
        }
      })
    }
  })
}

cat("==== Starting shinyApp ====\n")
shinyApp(ui=ui, server=server, options=list(host="0.0.0.0", port=4077, launch.browser=FALSE))
