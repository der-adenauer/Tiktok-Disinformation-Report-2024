# Übersetzte Version (auf Deutsch), Daten unverändert, ohne Personalpronomen.

###############################################################################
# Dataframe für SLI 1.1.1 – Zahlen nach Maßnahmen zur Durchsetzung der oben genannten Richtlinien
###############################################################################
df_SLI_1_1_1 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  political_content_ad_removals = c(
    746, 1152, 328, 3, 128, 111, 409, 90, 235, 4621, 6498, 911, 512, 565, 2781, 131,
    19, 86, NA, 1179, 1118, 438, 10698, 145, 52, 2558, 752, NA, NA, 474
  ),
  granular_misinformation_ad_removals = c(
    3, 1, 7, 0, 0, 0, 0, 0, 0, 7, 63, 8, 2, 1, 8, 4,
    0, 0, NA, 3, 4, 1, 2, 4, 0, 17, 0, NA, NA, 2
  )
)

# Erläuterung zum Dataframe im Markdown-Format (übersetzt, ohne Personalpronomen):
df_SLI_1_1_1_info <- " 
# Dataframe: df_SLI_1_1_1

SLI 1.1.1 – Zahlen nach Maßnahmen zur Durchsetzung der oben genannten Richtlinien (angeben, ob auf Seiten- und/oder Domain-Ebene)

Methodik der Datenerfassung:
Angegeben ist die Anzahl der Werbeanzeigen, die aufgrund von Verstößen gegen Richtlinien zu politischem Inhalt entfernt wurden, sowie
gegen differenzierte Richtlinien zu medizinischer Falschinformation, gefährlicher Falschinformation, synthetischen und manipulierten Medien
und gefährlichen Verschwörungstheorien. Einführung einer differenzierten Richtlinie zu Falschinformationen über das Klima fand zum Ende
des Berichtszeitraums statt. Veröffentlichung von Daten dazu erfolgt, sobald ein vollständiger Berichtszeitraum vorliegt.

Die Mehrheit der Werbeanzeigen, die gegen die zuvor vier, inzwischen fünf, differenzierten Richtlinien zu Falschinformationen verstoßen, 
wäre bereits unter bestehenden Richtlinien entfernt worden. Falls eine Anzeige zusätzlich gegen andere Richtlinien verstößt und auch gegen 
diese neueren, differenzierten Richtlinien zu Falschinformationen, wird die Entfernung unter der bestehenden Richtlinie gezählt. Daher zeigt 
die zweite Spalte nur die Anzahl der Anzeigen, bei denen als alleiniger Grund eine dieser vier hier genannten zusätzlichen Richtlinien zu 
Falschinformationen vorlag, und die nicht bereits unter bestehenden Richtlinien entfernt wurden bzw. bei denen die Richtlinien zu 
Falschinformationen nicht maßgeblich waren.

TikTokʼs CoPD Report Juli bis Dezember 2024 23

Starker Fokus lag auf der Durchsetzung des Verbots politischer Werbung sowie auf internen Erkennungsmöglichkeiten für politische Inhalte
auf der Plattform. Dies umfasste die Einführung spezialisierter Schulungen für politische Inhalte und automatisierte Moderationsstrategien. 
Die Daten lassen erkennen, dass bestehende Richtlinien (z. B. zu politischem Inhalt und anderen Bereichen wie ungenauen, irreführenden oder 
falschen Inhalten) den Großteil schädlicher Falschinformationen bereits abdecken, da sie umfassend angelegt sind.

Angaben sind nur für monetarisierte Märkte gemacht, basierend auf dem Standort der Ausspielung der Anzeigen. Das 2. Halbjahr 2024 war 
geprägt von einem sehr intensiven Wahlzyklus in Europa, u. a. in Rumänien, Frankreich und Irland. Einträge mit 'N/A' wurden in NA umgewandelt. 
Zahlen mit Kommas (z. B. 1,179) wurden in Standard-Nummernschreibweise (1179) überführt.
 "


###############################################################################
# Dataframe für SLI 1.1.2
###############################################################################
df_SLI_1_1_2 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_political_content = c(
    2405688, 414078, 21839, 69, 10838, 187494, 1333325,
    14889, 7543943, 14427406, 45161261, 512170, 3675505, 1341419, 6836564,
    4551, 59348, 5472, NA, 879250, 610009, 409358, 27208895, 52215, 53989,
    9622981, 4565753, NA, NA, 120449
  ),
  impressions_granular_misinformation = c(
    0, 16971, 0, 0, 0, 0, 12268,
    0, 0, 510, 0, 12873, 0, 0, 12029,
    0, 0, 0, NA, 1048, 0, 0, 0, 0, 0,
    8551, 0, NA, NA, 1367
  ),
  ebiquity_conversion_factor = c(
    4, 5.5, 1.5, 3.5, 2.5, 4, 4.5,
    2.5, 4, 4, 4.5, 1.5, 2, 3, 3.5,
    3, 2.5, 0, 3, 5, 1.5, 2.5, 1.5, 2.5, 2,
    3, 4.5, 3, 0, 5.5
  ),
  euro_value_of_ads_demonetised = c(
    9622.752, 2370.7695, 32.7585, 0.2415, 27.095, 749.976, 6055.1685,
    37.2225, 30175.772, 57711.664, 203225.6745, 787.5645, 7351.01, 4024.257, 23970.0755,
    13.653, 148.37, 0, 0, 4401.49, 915.0135, 1023.395, 40813.3425, 130.5375, 107.978,
    28894.596, 20545.8885, 0, 0, 669.988
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_1_1_2_info <- " 
# Dataframe: df_SLI_1_1_2

SLI 1.1.2 – Die ständige Taskforce des EU-Verhaltenskodex hat Ebiquity Plc als ‘Dritten Schätzer’ benannt, um periodische Cost Per Mille
(CPM)-Umrechnungsfaktoren für Unterzeichner bereitzustellen. Anwendung dient allein für dieses SLI, um finanzielle Schätzungen in Bezug
auf demonetisierte Desinformation zu erstellen.

CPM-Daten stammen aus aggregierten und anonymisierten Mediainvestitionsdaten aus der Media Data Vault von Ebiquity. Entwicklung 
dreier dedizierter Channel-CPMs (Programmatic – Display, Programmatic – Online Video und Paid Social) sowie eines gemischten CPM
(„Blended CPM“).

Berechnete ungefähre finanzielle Werte basieren auf dem „Blended CPM“. Angabe gibt nur eine Schätzung zum Wert demonetisierter 
Desinformation, keine realistische Darstellung tatsächlicher Einnahmen.

Keine Beteiligung an der Entwicklung des Umrechnungsfaktors durch TikTok. Teilnahme am Arbeitskreis zur Verbesserung der Methodik 
und Datenqualität ist gegeben. Erhöhung vieler Conversion-Faktoren seit letztem Bericht wurde vermerkt.

Angaben nur für monetarisierte Märkte, basierend auf dem Anzeigenstandort.

**Euro-Wert demonetisierter Anzeigen**  
**Anzahl Impressionen für Anzeigen, entfernt nach Richtlinie zu politischem Inhalt**  
**Anzahl Impressionen für Anzeigen, entfernt nach differenzierten Richtlinien zu Falschinformationen**  
**Ebiquity-Umrechnungsfaktor**  
**Euro-Wert demonetisierter Anzeigen / 1000**

TikTokʼs CoPD Report Juli bis Dezember 2024 27

Anmerkung: Einträge 'N/A' in NA umgewandelt, Zahlen mit Kommas in Standardform konvertiert.

TikTokʼs CoPD Report Juli bis Dezember 2024 28–29
 "


###############################################################################
# Dataframe für SLI 2.1.1 – Zahlen nach Maßnahmen zur Durchsetzung der Richtlinien oben
###############################################################################
df_SLI_2_1_1 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  political_content_ad_removals = c(
    746, 1152, 328, 3, 128, 111, 409,
    90, 235, 4621, 6498, 911, 512, 565, 2781,
    131, 19, 86, NA, 1179, 1118, 438,
    10698, 145, 52, 2558, 752, NA, NA, 474
  ),
  granular_misinformation_ad_removals = c(
    3, 1, 7, 0, 0, 0, 0,
    0, 0, 7, 63, 8, 2, 1, 8,
    4, 0, 0, NA, 3, 4, 1,
    2, 4, 0, 17, 0, NA, NA, 2
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_2_1_1_info <- " 
# Dataframe: df_SLI_2_1_1

SLI 2.1.1 – Zahlen nach Maßnahmen zur Durchsetzung oben genannter Richtlinien

Methodik der Datenerfassung:
Auflistung der Anzahl der entfernten Werbeanzeigen wegen Verstößen gegen Richtlinien zu politischem Inhalt sowie gegen vier 
differenzierte Richtlinien (medizinische Falschinformation, gefährliche Falschinformation, synthetische und manipulierte Medien, 
gefährliche Verschwörungstheorien). Einführung einer Richtlinie zu Falschinformationen über das Klima erfolgte gegen Ende des 
Berichtszeitraums. Geplante Einbeziehung entsprechender Daten im nächsten vollständigen Zeitraum.

Mehrzahl von Werbeanzeigen, die gegen neu gestartete Richtlinien zu Falschinformationen verstoßen, wären bereits unter 
bestehenden Richtlinien entfernt worden. Falls Werbeanzeigen gegen andere Richtlinien und gleichzeitig gegen zusätzliche 
Falschinformationsrichtlinien verstoßen, erfolgt Zuordnung zu älterer Richtlinie. Spalte zwei zeigt nur die Anzahl der Werbeanzeigen, 
bei denen ausschließlich eine dieser vier zusätzlichen Richtlinien als Entfernungsgrund galt und keine Überlappung mit anderen 
Richtlinien vorlag.

Daten lassen erkennen, dass bestehende Richtlinien (z. B. zu politischem Inhalt) Großteil schädlicher Falschinformationen bereits 
abdecken.

Angaben nur für monetarisierte Märkte, basierend auf Anzeigenstandort.

**Anzahl entfernte Werbeanzeigen nach Richtlinie zu politischem Inhalt**  
**Anzahl entfernte Werbeanzeigen nach vier differenzierten Richtlinien zu Falschinformationen**

TikTokʼs CoPD Report Juli bis Dezember 2024 36–37

Einträge 'N/A' in NA umgewandelt und Zahlen mit Komma zu Standardform konvertiert.
 "


###############################################################################
# Dataframe für SLI 2.3.1
###############################################################################
df_SLI_2_3_1 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  political_content_ad_removals = c(
    746, 1152, 328, 3, 128, 111, 409,
    90, 235, 4621, 6498, 911, 512, 565, 2781,
    131, 19, 86, NA, 1179, 1118, 438,
    10698, 145, 52, 2558, 752, NA, NA, 474
  ),
  granular_misinformation_ad_removals = c(
    3, 1, 7, 0, 0, 0, 0,
    0, 0, 7, 63, 8, 2, 1, 8,
    4, 0, 0, NA, 3, 4, 1,
    2, 4, 0, 17, 0, NA, NA, 2
  ),
  impressions_political_content = c(
    2405688, 414078, 21839, 69, 10838, 187494, 1333325,
    14889, 7543943, 14427406, 45161261, 512170, 3675505, 1341419, 6836564,
    4551, 59348, 5472, NA, 879250, 610009, 409358,
    27208895, 52215, 53989, 9622981, 4565753, NA, NA, 120449
  ),
  impressions_granular_misinformation = c(
    0, 16971, 0, 0, 0, 0, 12268,
    0, 0, 510, 0, 12873, 0, 0, 12029,
    0, 0, 0, NA, 1048, 0, 0,
    0, 0, 0, 8551, 0, NA, NA, 1367
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_2_3_1_info <- " 
# Dataframe: df_SLI_2_3_1

SLI 2.3.1  
Bericht über entfernte Werbeanzeigen wegen Verstößen gegen Richtlinien zu politischem Inhalt sowie differenzierte Richtlinien zu 
Falschinformationen, inklusive Impressionen. Einführung der Richtlinie zu Falschinformationen über das Klima erfolgte gegen Ende 
des Berichtszeitraums. Aufnahme in künftigen Bericht geplant.

TikTokʼs CoPD Report Juli bis Dezember 2024 39

**Anzahl entfernter Werbeanzeigen nach Richtlinie zu politischem Inhalt**  
**Anzahl entfernter Werbeanzeigen nach vier differenzierten Richtlinien zu Falschinformationen**  
**Anzahl Impressionen entfernter Werbeanzeigen (politischer Inhalt)**  
**Anzahl Impressionen entfernter Werbeanzeigen (vier differenzierte Falschinformationen)**

Alle 'N/A' als NA, Zahlen mit Kommas in Standardform.

TikTokʼs CoPD Report Juli bis Dezember 2024 40
 "


###############################################################################
# Dataframe für SLI 2.4.1
###############################################################################
df_SLI_2_4_1 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  appeals_granular_misinformation = c(
    0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, NA,
    0, 0, 0, 0, 0, 0,
    0, 0, NA, NA, 0
  ),
  appeals_political_content = c(
    34, 18, 2, 2, 1, 6,
    18, 6, 15, 84, 78, 16, 11,
    32, 53, 2, 6, 0, NA,
    24, 9, 15, 75, 3, 0,
    90, 37, NA, NA, 27
  ),
  overturns_granular_misinformation = c(
    0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, NA,
    0, 0, 0, 0, 0, 0,
    0, 0, NA, NA, 0
  ),
  overturns_political_content = c(
    26, 8, 0, 2, 1, 1,
    10, 4, 7, 50, 45, 6, 5,
    18, 22, 1, 2, 0, NA,
    10, 3, 7, 31, 0, 0,
    35, 13, NA, NA, 11
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_2_4_1_info <- " 
# Dataframe: df_SLI_2_4_1

SLI 2.4.1  
Angabe zur Anzahl der Einsprüche gegen entfernte Werbeanzeigen (politischer Inhalt und vier differenzierte Richtlinien zu 
Falschinformationen) sowie Anzahl der entsprechenden Wiederherstellungen. Reduzierte Anzahl an Einsprüchen für politisch 
entfernte Anzeigen deutet auf verbesserte Moderation hin. Einführung der Klimafalschinformationsrichtlinie am Ende des 
Berichtszeitraums. Erfassung zusammen mit anderen differenzierten Richtlinien im nächsten vollen Zeitraum.

**Anzahl Einsprüche bei Entfernungen nach vier differenzierten Falschinformationsrichtlinien**  
**Anzahl Einsprüche bei Entfernungen nach Richtlinie zu politischem Inhalt**  
**Anzahl Wiederherstellungen (Einsprüche) nach vier Falschinformationsrichtlinien**  
**Anzahl Wiederherstellungen (Einsprüche) nach Richtlinie zu politischem Inhalt**

TikTokʼs CoPD Report Juli bis Dezember 2024 42–43

Einträge 'N/A' als NA, Zahlen mit Kommas in Standardform.
 "


###############################################################################
# Dataframe für SLI 14.2.1 – SLI 14.2.4
###############################################################################
df_SLI_14_2_1_to_14_2_4 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein",
    "Norway", "Total EU", "Total EEA"
  ),
  number_of_fake_accounts_removed = c(
    92511, 176327, 423060, 74704, 86741, 194925, 155675,
    111506, 99745, 2061174, 1678822, 133443, 84057, 321237, 672344,
    60145, 79417, 73258, 60192, 886619, 360959, 190906,
    294195, 131567, 298807, 709560, 239020, 31476, 1369,
    92800, 9750916, 9876561
  ),
  number_of_followers_of_fake_accounts = c(
    467635, 544073, 188995, 175230, 124021, 348626, 298306,
    239039, 195684, 20207105, 20545728, 1702918, 184291, 697840, 5900534,
    124765, 300241, 611602, 226073, 1575641, 3192516, 370719,
    4045608, 1347301, 45359, 5351682, 528326, 253997, 11129,
    151088, 69539858, 69956072
  ),
  ratio_monthly_average_fake_accounts_over_mau = c(
    rep(NA, 30),
    0.010,
    NA
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_14_2_1_to_14_2_4_info <- " 
# Dataframe: df_SLI_14_2_1_to_14_2_4

SLI 14.2.1 – SLI 14.2.4  
TTP ODER ACTION1 TTP Nr. 1: Erstellung von unechten Accounts oder Bot-Netzen (automatisierte, teilautomatisierte oder nicht-automatisierte Konten)

Methodik der Datenerfassung:
- (i) Anzahl entfernter Fake-Accounts und
- (ii) Anzahl der Follower dieser Fake-Accounts (zum Zeitpunkt der Entfernung)
zugeordnet nach Land, in dem der jeweilige Fake-Account zuletzt aktiv war.

Aktualisierte Methodik zur Angabe des Anteils des monatlichen Durchschnitts an Fake-Accounts im Verhältnis zu den monatlich aktiven Nutzern.

SLI 14.2.1 | SLI 14.2.2 | SLI 14.2.3 | SLI 14.2.4

**Anzahl der Maßnahmen pro Typ**  
**Interaktion/Engagement vor der Maßnahme**  
**TTP-bezogene Inhalte im Verhältnis zum Gesamtinhalt auf dem Dienst**

TikTokʼs CoPD Report Juli bis Dezember 2024 75–77

Auflistung pro Mitgliedstaat:
- Anzahl entfernter Fake-Accounts
- Anzahl der Follower dieser Fake-Accounts zum Zeitpunkt der Entfernung
- Verhältnis des monatlichen Durchschnitts an Fake-Accounts zu den monatlich aktiven Nutzern

Summen vorhanden für:
- **Total EU**
- **Total EEA**

Kommas in Zahlen entfernt, 'N/A' als NA behandelt.
 "


###############################################################################
# Dataframe für TTP OR ACTION 2 - Verwendung von Fake-/unechten Reaktionen
###############################################################################
df_TTP_OR_ACTION_2 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  fake_likes_removed = c(
    12262551, 16913076, 6468521, 1821268, 4176517, 3052689, 4183605,
    687649, 3086208, 78227394, 131158324, 14621872, 1950636, 4520433, 60514367,
    1690473, 1682687, 1920605, 1395676, 23557961, 8833014, 9239486,
    11254476, 1208123, 727133, 38331442, 15782957, 230931, 24827, 5457966
  ),
  fake_likes_prevented = c(
    39213306, 56682105, 40004761, 17901159, 6960047, 31099711, 17585666,
    7385026, 19264460, 336499329, 357582219, 84211417, 28069699, 31110363, 606697045,
    11600082, 11795998, 7987636, 3466698, 101316771, 208518568, 56146620,
    83405388, 18154505, 5843233, 161280031, 48240073, 1564206, 70045, 20708187
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_TTP_OR_ACTION_2_info <- " 
# Dataframe: df_TTP_OR_ACTION_2

TTP ODER  
ACTION 2 TTP Nr. 2: Verwendung von unechten Reaktionen (z. B. Likes, Upvotes, Kommentare)

Methodik der Datenerfassung:
Anzahl der entfernten Fake-Likes basierend auf dem Registrierungsland des Users. Ebenso bei den verhinderten Fake-Likes.

SLI 14.2.1 | SLI 14.2.2 | SLI 14.2.3 | SLI 14.2.4  

**Anzahl der Maßnahmen pro Typ**  
**Interaktion/Engagement vor der Maßnahme**

TikTokʼs CoPD Report Juli bis Dezember 2024 78–80

Auflistung pro Mitgliedstaat:
- Anzahl der entfernten Fake-Likes
- Anzahl der verhinderten Fake-Likes

Kommas in numerischen Werten entfernt.
 "


###############################################################################
# Dataframe für TTP OR ACTION 3 - Verwendung von Fake-Followern oder Abonnenten
###############################################################################
df_TTP_OR_ACTION_3 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein",
    "Norway"
  ),
  fake_followers_removed = c(
    9980544, 11916866, 4561129, 1965426, 1706405, 4342681, 3154022,
    482641, 3204999, 109481878, 125941360, 7880295, 2589692, 3213842, 35511559,
    732030, 2057659, 1574849, 401869, 17070055, 10128172, 3714261,
    14021343, 4288570, 678185, 31084803, 12342226, 120003, 893407,
    3756414
  ),
  fake_followers_prevented = c(
    25000123, 34550567, 26400841, 18990456, 18497473, 18233387, 23806634,
    16887949, 20303735, 127136908, 138933948, 38712931, 24773097, 25239860, 158916638,
    17952175, 18928046, 21051498, 15758979, 35162609, 54501610, 26901973,
    44172801, 21010637, 1942793, 73920335, 36451604, 2572695, 1045728,
    7242021
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_TTP_OR_ACTION_3_info <- " 
# Dataframe: df_TTP_OR_ACTION_3

TTP ODER  
ACTION 3 TTP Nr. 3: Verwendung von Fake-Followern oder Abonnenten

Methodik der Datenerfassung:
Anzahl der entfernten Fake-Follower und Anzahl der verhinderten Fake-Follower basieren auf dem Registrierungsland des Users.

TikTokʼs CoPD Report Juli bis Dezember 2024 81–84  

SLI 14.2.1 | SLI 14.2.2 | SLI 14.2.3 | SLI 14.2.4  

**Anzahl der Maßnahmen pro Typ**  
**Interaktion/Engagement vor der Maßnahme**  

Auflistung pro Mitgliedstaat:
- Anzahl entfernter Fake-Follower
- Anzahl verhinderter Fake-Follower

Kommas in Zahlen entfernt; ggf. Textumbrüche standardisiert.
 "




###############################################################################
# Dataframe für TTP OR ACTION 6 - Gezielte Ansprache verletzlicher Zielgruppen
###############################################################################
df_TTP_OR_ACTION_6 <- data.frame(
  network_origin = c(
    "Germany", "Italy", "Germany", "Romania", "Italy",
    "Moldova", "Romania", "Romania", "Romania", "Romania"
  ),
  accounts_in_network = c(
    29, 8, 42, 22, 22,
    68, 78, 12, 21, 27217
  ),
  removed_accounts = c(
    29, 8, 42, 22, 22,
    21, 78, 12, 21, 27217
  ),
  number_of_followers_at_removal = c(
    137671, 3790110, 127451, 299692, 157913,
    123, 1781, 1704, 123, 70892
  ),
  views_impressions_after_action = rep(NA, 10),
  interaction_after_action = rep(NA, 10),
  trends_on_targeted_audiences = c(
    "Operated from Germany, targeted primarily a German audience plus other European markets, amplifying pro-Russian narratives via inauthentic accounts.",
    "Operated from Italy, targeted a global audience, promoting Russian administration. Displayed anomalous user behaviour to amplify content.",
    "Operated from Germany, targeted a German audience. Coordinated on a messaging platform to amplify pro-AFD political content for 2024 German state elections.",
    "Operated from Romania, targeted a Romanian audience. Created inauthentic accounts to spread misinformation critical of the Romanian government, redirecting users to network-managed news websites.",
    "Operated from Italy, targeted a Moldovan audience. Created multiple accounts to amplify pro-Russian narratives critical of the Moldovan government, featuring inauthentic news accounts.",
    "Operated from Moldova, targeted Romanian diaspora in Moldova. Created fictitious personas to promote political figures and used AI-generated content to influence Romanian election discourse.",
    "Operated from Romania, targeted a Romanian audience. Amplified content favorable to political candidate Călin Georgescu with repeated comments.",
    "Operated from Romania, targeted a Romanian audience. Amplified content favorable to political candidate Mircea Geoană, reposting the same videos repeatedly.",
    "Operated from Romania, targeted a Romanian audience. Created inauthentic accounts to promote Nicolae Ciucă and the PNL party. Network included fictitious personas.",
    "Operated by a fake engagement vendor, targeted a Romanian audience. Promoted the AUR party and Călin Georgescu via inauthentic accounts, posting repeated comments."
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_TTP_OR_ACTION_6_info <- " 
# Dataframe: df_TTP_OR_ACTION_6

TTP ODER  
ACTION 6  
TTP Nr. 6: Gezielte Ansprache verletzlicher Empfänger (z. B. durch personalisierte Werbung, Verschleierung des Standorts)

Methodik der Datenerfassung:
Anzahl neu entdeckter Netzwerke koordinierter unechter Aktivitäten (CIO), die EU-Märkte angesteuert haben, basierend auf
öffentlichen Offenlegungen zwischen 1. Juli 2024 und 31. Dezember 2024. Einordnung nach vermutetem Sitz oder Zielpublikum. 
Alle identifizierten und entfernten Netzwerke in Transparenzberichten veröffentlicht. Followerzahlen basieren auf dem Stand der 
Kontenverfolgung zum Zeitpunkt der Entfernung.

SLI 14.2.1 | SLI 14.2.2 | SLI 14.2.3 | SLI 14.2.4

TikTokʼs CoPD Report Juli bis Dezember 2024 88–94

**Daten-Spalten**  
- **network_origin**: Land, in dem das Netzwerk agierte (oder vermutet agierte).  
- **accounts_in_network**: Gesamtzahl der Konten im Netzwerk.  
- **removed_accounts**: Gesamtzahl der gelöschten Konten im Netzwerk.  
- **number_of_followers_at_removal**: Anzahl der Follower aller Konten im Netzwerk zum Zeitpunkt der Entfernung.  
- **views_impressions_after_action**: Nicht erfasst, als NA vermerkt.  
- **interaction_after_action**: Nicht erfasst, als NA vermerkt.  
- **trends_on_targeted_audiences**: Kurze Beschreibung zum Zielpublikum und angewendeten Methoden.

Kommas in numerischen Werten entfernt. Ortsnamen normalisiert.
 "


###############################################################################
# Dataframe für TTP OR ACTION 7 - Einsatz täuschend manipulierter Medien
###############################################################################
df_TTP_OR_ACTION_7 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein",
    "Norway"
  ),
  videos_removed_AIGC_policy = c(
    414, 2092, 227, 1361, 948, 465, 315,
    208, 716, 8563, 11199, 8742, 261, 1063, 3574,
    129, 203, 223, 183, 1883, 772, 1010,
    937, 98, 66, 4392, 762, 85, 48, 679
  ),
  views_videos_removed_AIGC = c(
    216433, 1119223, 5977, 58579, 19441, 8287531, 2742457,
    2063380, 464824, 312078908, 23904234, 145950, 86870, 103199, 1892355,
    4519, 25410, 8729, 5811847, 9080526, 13404186, 339124,
    623525, 2014, 605, 21882268, 377862, 6113, 525, 139984
  ),
  unique_videos_creator_labeled_AI_generated = c(
    110859, 166222, 75036, 27536, 59263, 51417, 49328,
    19687, 60083, 1399713, 1380835, 206528, 63319, 32936, 746928,
    99265, 42778, 40901, 12100, 202203, 203835, 151389,
    287851, 21883, 10131, 676935, 163490, 3353, 357, 59556
  ),
  unique_videos_AI_generated = c(
    38531, 75316, 78668, 18595, 3165, 89409, 30694,
    11220, 49106, 432739, 502916, 7936, 74704, 34736, 393642,
    18852, 21581, 3319, 3444, 29448, 316048, 64975,
    37467, 28439, 6969, 493675, 105253, 4720, 61, 42172
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_TTP_OR_ACTION_7_info <- " 
# Dataframe: df_TTP_OR_ACTION_7

TTP ODER  
ACTION 7  
TTP Nr. 7: Einsatz täuschend manipulierter Medien (z. B. „Deep Fakes“, „Cheap Fakes“)

Basierend auf dem Land, in dem das Video gepostet wurde:
- **videos_removed** wegen Verstoß gegen Richtlinien zu bearbeiteten Medien und KI-generierten Inhalten (AIGC)
- **views_videos_removed**: Aufrufe dieser entfernten Videos basierend auf ungefährem Standort der Viewer
- **unique_videos_creator_labeled_AI_generated**: Anzahl Videos mit Label „Vom Creator als KI-generiert gekennzeichnet“
- **unique_videos_AI_generated**: Anzahl Videos mit Label „KI-generiert“

TikTokʼs CoPD Report Juli bis Dezember 2024 96–98

Kommas in Zahlen entfernt und „Czech Rep\\nublic“ zu „Czech Republic“ standardisiert.
 "


###############################################################################
# SLI 17.1.1 - Datensätze zu verschiedenen Interventionen und Labels
###############################################################################

# 1) State-Controlled Media Label
df_SLI_17_1_1_StateControlledMedia <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_state_controlled_label = c(
    3705075, 3789615, 7727480, 1656809, 752546, 7602192,
    2074577, 1391192, 3310339, 32521568, 37522365, 3107902, 41012350,
    3250908, 12463432, 3063840, 3025380, 439714, 417073,
    14557284, 203836052, 1518762, 36420337, 1971329, 724668,
    6639002, 11757565, 291908, 50186, 4367100
  ),
  clicks_state_controlled_label = c(
    5771, 6994, 9390, 2786, 1166, 7762,
    4350, 2402, 9274, 28995, 49125, 6491, 27450,
    6757, 16462, 4027, 5056, 628, 605,
    23801, 63752, 4985, 58883, 3352, 1403,
    11904, 12977, 589, 48, 8605
  ),
  ctr_state_controlled_label = c(
    "0.16%", "0.18%", "0.12%", "0.17%", "0.15%", "0.10%",
    "0.21%", "0.17%", "0.28%", "0.09%", "0.13%", "0.21%", "0.07%",
    "0.21%", "0.13%", "0.13%", "0.17%", "0.14%", "0.15%",
    "0.16%", "0.03%", "0.33%", "0.16%", "0.17%", "0.19%",
    "0.18%", "0.11%", "0.20%", "0.10%", "0.20%"
  )
)

# 2) Video Notice Tag (Holocaust Misinformation/Denial)
df_SLI_17_1_1_VideoNoticeHolocaust <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_video_notice_holocaust = c(
    3987721, 3501679, 697482, 658928, 311308, 2888696,
    1690719, 406818, 3314306, 2293975, 40208515, 2559183, 4785260,
    3352323, 1987326, 491701, 685542, 181085, 206924,
    12745193, 27175740, 1990257, 3636828, 640942, 462528,
    8574010, 5540266, 215411, 11568, 2909307
  ),
  clicks_video_notice_holocaust = c(
    11081, 10689, 2810, 2223, 1189, 13749,
    6873, 1622, 12022, 10994, 110850, 10007, 17185,
    10490, 9277, 2082, 2714, 658, 592,
    33329, 70663, 6556, 15035, 2254, 1551,
    30920, 25954, 770, 47, 13198
  ),
  ctr_video_notice_holocaust = c(
    "0.28%", "0.31%", "0.40%", "0.34%", "0.38%", "0.48%",
    "0.41%", "0.40%", "0.36%", "0.48%", "0.28%", "0.39%", "0.36%",
    "0.31%", "0.47%", "0.42%", "0.40%", "0.36%", "0.29%",
    "0.26%", "0.26%", "0.33%", "0.41%", "0.35%", "0.34%",
    "0.36%", "0.47%", "0.36%", "0.41%", "0.45%"
  )
)

# 3) Video Notice Tag (Mpox)
df_SLI_17_1_1_VideoNoticeMpox <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_video_notice_mpox = c(
    6065332, 15383226, 5869376, 5206361, 1309314, 6134172,
    4604268, 2279691, 8904456, 123453307, 51643857, 9476029, 5483667,
    9413972, 31117509, 2821714, 5065658, 823972, 645827,
    15404762, 25070807, 6017068, 12931412, 1798295, 2037178,
    47595074, 15829378, 679537, 21397, 6765469
  ),
  clicks_video_notice_mpox = c(
    30641, 73644, 39855, 40720, 7869, 60989,
    37820, 18303, 66423, 471892, 244354, 65533, 40088,
    58759, 174013, 23843, 36987, 4245, 3131,
    115335, 210242, 37100, 100003, 14348, 12289,
    178276, 117375, 4129, 132, 64054
  ),
  ctr_video_notice_mpox = c(
    "0.51%", "0.48%", "0.68%", "0.78%", "0.60%", "0.99%",
    "0.82%", "0.80%", "0.75%", "0.38%", "0.47%", "0.69%", "0.73%",
    "0.62%", "0.56%", "0.84%", "0.73%", "0.52%", "0.48%",
    "0.75%", "0.84%", "0.62%", "0.77%", "0.80%", "0.60%",
    "0.37%", "0.74%", "0.61%", "0.62%", "0.95%"
  )
)

# 4) Video-Intervention (Wahlen)
df_SLI_17_1_1_VideoIntervention_Election <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_video_intervention_election = c(
    78371511, NA, 29664185, 24640666, NA, 329546,
    NA, NA, NA, 1301158781, 209773848, NA, NA,
    278245, NA, NA, 9102070, NA, NA,
    NA, NA, NA, 1093883826, NA, NA,
    NA, NA, 4620010, NA, NA
  ),
  clicks_video_intervention_election = c(
    156117, NA, 50018, 41715, NA, 332,
    NA, NA, NA, 2080600, 261655, NA, NA,
    354, NA, NA, 15014, NA, NA,
    NA, NA, NA, 1531546, NA, NA,
    NA, NA, 19661, NA, NA
  ),
  ctr_video_intervention_election = c(
    "0.20%", NA, "0.17%", "0.17%", NA, "0.10%",
    NA, NA, NA, "0.16%", "0.12%", NA, NA,
    "0.13%", NA, NA, "0.16%", NA, NA,
    NA, NA, NA, "0.14%", NA, NA,
    NA, NA, "0.43%", NA, NA
  )
)

# 5) Search Interventions (Holocaust)
df_SLI_17_1_1_SearchIntervention_Holocaust <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_search_holocaust = c(
    156298, 200324, 62548, 100586, 24629, 88635,
    59881, 14970, 118664, 1592000, 1383744, 492728, 118829,
    112337, 877504, 18212, 37622, 11059, 7744,
    490423, 1069545, 221507, 222020, 42499, 30051,
    2155115, 175333, 5203, 478, 89193
  ),
  clicks_search_holocaust = c(
    6187, 10626, 1701, 2631, 445, 2476,
    1572, 476, 2024, 111776, 66652, 2946, 4853,
    1848, 11749, 668, 820, 571, 178,
    6942, 842, 2507, 5125, 1331, 1520,
    39383, 4056, 147, 25, 2505
  ),
  ctr_search_holocaust = c(
    "3.96%", "5.30%", "2.72%", "2.62%", "1.81%", "2.79%",
    "2.63%", "3.18%", "1.71%", "7.02%", "4.82%", "0.60%", "4.08%",
    "1.65%", "1.34%", "3.67%", "2.18%", "5.16%", "2.30%",
    "1.42%", "0.08%", "1.13%", "2.31%", "3.13%", "5.06%",
    "1.83%", "2.31%", "2.83%", "5.23%", "2.81%"
  )
)

# 6) Search Interventions (Mpox)
df_SLI_17_1_1_SearchIntervention_Mpox <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_search_mpox = c(
    467253, 669059, 446240, 561621, 77553, 587165,
    435391, 147804, 648096, 3031084, 3901089, 1145046, 495768,
    714141, 2604995, 206307, 484805, 39807, 33713,
    1010537, 2560968, 714886, 1339325, 329754, 164647,
    1775339, 1106486, 22964, 1406, 539291
  ),
  clicks_search_mpox = c(
    2111, 2501, 2724, 3321, 452, 4180,
    2571, 926, 4591, 5826, 15278, 6796, 3857,
    2252, 36148, 1375, 2767, 180, 148,
    4547, 19079, 3653, 7857, 2027, 793,
    6112, 6128, 245, 10, 3472
  ),
  ctr_search_mpox = c(
    "0.45%", "0.37%", "0.61%", "0.59%", "0.58%", "0.71%",
    "0.59%", "0.63%", "0.71%", "0.19%", "0.39%", "0.59%", "0.78%",
    "0.32%", "1.39%", "0.67%", "0.57%", "0.45%", "0.44%",
    "0.45%", "0.74%", "0.51%", "0.59%", "0.61%", "0.48%",
    "0.34%", "0.55%", "1.07%", "0.71%", "0.64%"
  )
)

# 7) Search Interventions (Climate change)
df_SLI_17_1_1_SearchIntervention_Climate <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_search_climate = c(
    228390, 207808, 140769, 159478, 19126, 163222,
    148528, 29383, 238286, 652102, 1761399, 250015, 270274,
    221386, 1113346, 37048, 112397, 14448, 9186,
    406345, 888768, 198458, 375102, 93322, 34445,
    842382, 486125, 4668, 548, 223306
  ),
  clicks_search_climate = c(
    196, 159, 183, 128, 20, 172,
    134, 44, 213, 446, 1488, 361, 330,
    118, 818, 63, 176, 17, 5,
    308, 1136, 162, 513, 104, 26,
    503, 405, 7, 1, 179
  ),
  ctr_search_climate = c(
    "0.09%", "0.08%", "0.13%", "0.08%", "0.10%", "0.11%",
    "0.09%", "0.15%", "0.09%", "0.07%", "0.08%", "0.14%", "0.12%",
    "0.05%", "0.07%", "0.17%", "0.16%", "0.12%", "0.05%",
    "0.08%", "0.13%", "0.08%", "0.14%", "0.11%", "0.08%",
    "0.06%", "0.08%", "0.15%", "0.18%", "0.08%"
  )
)

# 8) Search Interventions (Election)
df_SLI_17_1_1_SearchIntervention_Election <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_search_election = c(
    708656, NA, 121672, 546661, NA, 17994,
    NA, NA, NA, 15712577, 7265486, NA, NA,
    1651434, NA, NA, 41034, NA, NA,
    NA, NA, NA, 21733061, NA, NA,
    NA, NA, 78449, NA, NA
  ),
  clicks_search_election = c(
    3263, NA, 367, 1767, NA, 56,
    NA, NA, NA, 7306, 13805, NA, NA,
    16293, NA, NA, 127, NA, NA,
    NA, NA, NA, 70746, NA, NA,
    NA, NA, 1095, NA, NA
  ),
  ctr_search_election = c(
    "0.46%", NA, "0.30%", "0.32%", NA, "0.31%",
    NA, NA, NA, "0.05%", "0.19%", NA, NA,
    "0.99%", NA, NA, "0.31%", NA, NA,
    NA, NA, NA, "0.33%", NA, NA,
    NA, NA, "1.40%", NA, NA
  )
)

# 9) PSA (Holocaust)
df_SLI_17_1_1_PSA_Holocaust <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_psa_holocaust = c(
    16, 41, 17, 6, 4, 99,
    13, 60, 27, 562, 344, 14, 14,
    20, 74, 89, 41, 2, 2,
    80, 154, 11, 21, 16, 3,
    51, 87, 4, 1, 27
  )
)

# 10) PSA (Mpox)
df_SLI_17_1_1_PSA_Mpox <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  impressions_psa_mpox = c(
    26, 26, 39, 13, 4, 76,
    17, 12, 30, 473, 385, 28, 33,
    38, 63, 9, 11, 1, 1,
    147, 172, 12, 40, 24, 5,
    82, 55, 5, 0, 18
  )
)

# Erläuterung für alle Dataframes in Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_17_1_1_info <- " 
# Dataframes: SLI 17.1.1

Methodik der Datenerfassung:
Zahlen (Impressionen, Klicks und Klickraten) basieren auf:
- Ungefährem Standort der Nutzer, die mit den Tools interagiert haben (z. B. Video-Hinweise, Suchinterventionen usw.).
- IP-Standort der Nutzer (z. B. bei Impressionen zu Safety-Center-Seiten).

Obige Tabellen umfassen:
1. **State-Controlled Media Label**  
2. **Video Notice Tag** (Holocaust-Falschinformation/-Leugnung, Mpox, Wahlthemen)  
3. **Search Interventions** (Holocaust-Falschinformation/-Leugnung, Mpox, Klimawandel, Wahlen)  
4. **Public Service Announcements** (Holocaust, Mpox)

Spalten (soweit relevant):
- **member_states**: Name des Landes
- **impressions_...**: Anzahl der Impressionen
- **clicks_...**: Anzahl der Klicks
- **ctr_...**: Klickrate als Zeichenkette mit Prozentzeichen
- Für PSAs nur die Impressionen

Zahlen mit Kommas in einfache Ganzzahlen umgewandelt. Einträge 'NA' beibehalten.
Prozentangaben als Zeichenketten (z. B. '0.16%') belassen.

TikTokʼs CoPD Report Juli bis Dezember 2024 122–140
 "


###############################################################################
# SLI 18.2.1 - Entfernte Videos und Views, plus FYP-Unzugänglichkeit bei Falschinformation
###############################################################################

# 1) Misinformation-Policy
df_SLI_18_2_1_misinformation <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  videos_removed_misinformation = c(
    2888, 3902, 1568, 789, 511, 2720,
    1455, 319, 984, 44354, 50335, 4198, 2002,
    4676, 21035, 694, 520, 279, 168,
    5422, 13028, 2629, 14103, 1365, 574,
    22581, 3489, 122, 35, 1798
  ),
  views_removed_misinformation = c(
    1313102, 2844929, 5435715, 973202, 1241327, 4705302,
    2979180, 77555, 1784968, 61693484, 162220869, 4431258, 9947587,
    4802257, 39078480, 3745925, 1122197, 162787, 5599,
    2811880, 59545691, 31071224, 64183832, 4714713, 22494,
    37024505, 9893681, 153566, 0, 5158745
  ),
  videos_ineligible_FYP_misinformation = c(
    1696, 2688, 1600, 616, 326, 6470,
    1157, 453, 811, 24035, 30934, 1735, 957,
    2154, 19481, 459, 647, 121, 173,
    6189, 9872, 1400, 11739, 1472, 346,
    54592, 2423, 77, 33, 1200
  )
)

# 2) Civic & Election Integrity + Synthetic & Manipulated Media
df_SLI_18_2_1_civic_synthetic <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  videos_removed_civic_election = c(
    472, 1002, 182, 64, 86, 275,
    335, 41, 199, 4390, 12231, 649, 308,
    2051, 3910, 48, 57, 66, 70,
    1046, 768, 535, 4276, 41, 28,
    2126, 633, 26, 20, 313
  ),
  views_removed_civic_election = c(
    843182, 107828, 110186, 3753, 1333, 25952,
    14082, 866, 1944, 8369126, 3510858, 1726365, 273247,
    568596, 1578217, 9, 26, 2180, 97,
    55695, 3942081, 28529, 33123122, 677, 111,
    3554918, 6424, 19, 0, 1152478
  ),
  videos_removed_synthetic = c(
    414, 2092, 227, 1361, 948, 465,
    315, 208, 716, 8563, 11199, 8742, 261,
    1063, 3574, 129, 203, 223, 183,
    1883, 772, 1010, 937, 98, 66,
    4392, 762, 85, 48, 679
  ),
  views_removed_synthetic = c(
    216433, 1119223, 5977, 58579, 19441, 8287531,
    2742457, 2063380, 464824, 312078908, 23904234, 145950, 86870,
    103199, 1892355, 4519, 25410, 8729, 5811847,
    9080526, 13404186, 339124, 623525, 2014, 605,
    21882268, 377862, 6113, 525, 139984
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_18_2_1_info <- " 
# Dataframes: SLI 18.2.1

Methodik der Datenerfassung:
Basierend auf dem Land, in dem Videos gepostet wurden. Entfernung wegen Verstößen gegen Richtlinien zu Falschinformationen, 
Wahl- und Zivilintegrität sowie Bearbeiteten Medien & AIGC. Anzahl der Views beruht auf ungefährem Standort der Betrachter.
Zudem aktualisierte Methodik für Videos, die nach Falschinformationsrichtlinien nicht mehr im „For You“-Feed erscheinen.

### df_SLI_18_2_1_misinformation
- **videos_removed_misinformation**: Anzahl der wegen Falschinformationsrichtlinie gelöschten Videos.
- **views_removed_misinformation**: Aufrufe dieser gelöschten Videos.
- **videos_ineligible_FYP_misinformation**: Anzahl der Videos, die nach Falschinformationsrichtlinie nicht mehr im „For You“-Feed erscheinen.

### df_SLI_18_2_1_civic_synthetic
- **videos_removed_civic_election**: Anzahl Videos, entfernt nach Richtlinie zu Wahlen und Zivilintegrität.
- **views_removed_civic_election**: Aufrufe dieser gelöschten Videos.
- **videos_removed_synthetic**: Anzahl Videos, entfernt nach Richtlinie zu synthetischen und manipulierten Medien.
- **views_removed_synthetic**: Aufrufe dieser gelöschten Videos.

Zahlen mit Kommas in reguläre Integer umgewandelt, 'NA' unverändert belassen.
Siehe TikTokʼs CoPD Report Juli bis Dezember 2024, Seiten 176–180.
 "


###############################################################################
# Dataframe für SLI 19.2.1 – Benutzereinstellungen
###############################################################################
df_SLI_19_2_1 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark",
    "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy",
    "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal",
    "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  users_filtered_hashtags_or_words = c(
    53057, 67734, 34081, 20196, 7895, 45392, 35294,
    11648, 45185, 332521, 503549, 52519, 46966, 54952, 261272,
    15527, 21247, 4519, 3137, 135944, 196496, 57677,
    85551, 18482, 9983, 275604, 82868, 4720, 129, 48188
  ),
  users_clicked_not_interested = c(
    886639, 1322561, 744333, 486259, 176600, 753417, 573821,
    151267, 586897, 7939397, 7977800, 1344879, 1020692, 801523, 6455485,
    279241, 325564, 76244, 77760, 2081920, 3383567, 1152515,
    2629162, 347681, 177990, 6889325, 1371265, 57250, 3563, 685406
  ),
  times_clicked_FYP_refresh = c(
    52559, 83721, 38568, 23134, 13456, 35791, 27747,
    11558, 43657, 486316, 648033, 68577, 28543, 52714, 295958,
    24888, 23209, 5508, 4923, 150651, 175988, 61327,
    165990, 13822, 19591, 381588, 111934, 3175, 291, 63483
  ),
  number_of_videos_tagged_with_AIGC_label = c(
    149390, 241538, 153704, 46131, 62428, 140826, 80022,
    30907, 109189, 1832452, 1883751, 214464, 138023, 67672, 1140570,
    118117, 64359, 44220, 15544, 231651, 519883, 216364,
    325318, 50322, 17100, 1170610, 268743, 8073, 418, 101728
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_19_2_1_info <- " 
# Dataframe: df_SLI_19_2_1

SLI 19.2.1 – Benutzereinstellungen

Methodik der Datenerfassung:
Anzahl von Nutzern, die Hashtags oder Stichwörter gefiltert haben, Anzahl von „Nicht interessiert“-Klicks und
Anzahl von Klicks auf „For You Feed Refresh“ jeweils basierend auf ungefährem Standort der Nutzer. 
Zahl der Videos mit AIGC-Label schließt automatische und Creator-generierte Labels ein.

Spalten:
- **users_filtered_hashtags_or_words**: Anzahl an Nutzern, die Hashtags/Wörter im Feed gefiltert haben.
- **users_clicked_not_interested**: Anzahl an Klicks auf „nicht interessiert“.
- **times_clicked_FYP_refresh**: Anzahl an Klicks auf For-You-Feed-Refresh.
- **number_of_videos_tagged_with_AIGC_label**: Gesamtanzahl der mit „AIGC“ gelabelten Videos (automatisch oder durch Creator).

TikTokʼs CoPD Report Juli bis Dezember 2024 185–186
 "


###############################################################################
# SLI 21.1.1 - Maßnahmen nach Maßnahme 21.1
###############################################################################

# 1) Misinformation-Policy-Kennzahlen
df_SLI_21_1_1_misinformation <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  share_cancel_rate_unverified_label = c(
    "31.81%", "33.81%", "33.97%", "33.66%", "32.91%", "29.52%",
    "30.20%", "28.53%", "27.21%", "37.13%", "30.09%", "32.05%", "31.38%",
    "29.59%", "37.65%", "30.90%", "30.80%", "33.64%", "35.43%",
    "27.79%", "28.88%", "33.08%", "30.08%", "28.89%", "33.33%",
    "34.09%", "29.44%", "27.86%", "19.61%", "25.37%"
  ),
  share_removals_misinformation = c(
    "20.2%", "14.4%", "30.6%", "20.9%", "18.4%", "25.2%",
    "8.3%", "18.7%", "15.5%", "22.4%", "21.8%", "17.3%", "28.9%",
    "22.2%", "27.7%", "27.0%", "23.2%", "9.4%", "9.8%",
    "16.6%", "30.4%", "26.7%", "41.0%", "45.7%", "22.9%",
    "28.3%", "10.9%", "4.4%", "3.1%", "18.8%"
  ),
  share_proactive_misinformation = c(
    "97.9%", "98.9%", "94.4%", "99.0%", "95.7%", "91.8%",
    "96.9%", "99.4%", "94.1%", "99.2%", "97.7%", "96.9%", "90.5%",
    "93.8%", "98.3%", "98.8%", "99.2%", "98.9%", "98.2%",
    "99.2%", "94.3%", "97.6%", "91.7%", "89.2%", "99.3%",
    "99.1%", "97.7%", "97.5%", "100.0%", "96.1%"
  ),
  share_no_views_misinformation = c(
    "80.9%", "82.5%", "59.4%", "70.5%", "71.6%", "53.2%",
    "73.5%", "75.9%", "69.8%", "86.9%", "76.1%", "74.9%", "63.5%",
    "61.2%", "72.7%", "82.4%", "87.5%", "88.5%", "89.3%",
    "86.3%", "63.9%", "84.9%", "62.5%", "56.0%", "79.1%",
    "82.6%", "77.8%", "90.2%", "100.0%", "74.0%"
  ),
  share_24h_misinformation = c(
    "82.2%", "89.6%", "82.9%", "89.5%", "83.0%", "90.9%",
    "83.1%", "93.1%", "89.4%", "95.6%", "90.9%", "92.3%", "86.3%",
    "88.4%", "92.1%", "94.2%", "94.4%", "86.4%", "88.1%",
    "89.5%", "89.6%", "90.6%", "82.1%", "87.5%", "95.8%",
    "90.4%", "90.4%", "92.6%", "91.4%", "89.9%"
  )
)

# 2) Civic & Election Integrity
df_SLI_21_1_1_civic_election <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  share_video_removals_civic = c(
    "3.3%", "3.7%", "3.5%", "1.7%", "3.1%", "2.5%",
    "1.9%", "2.4%", "3.1%", "2.2%", "5.3%", "2.7%", "4.4%",
    "9.7%", "5.1%", "1.9%", "2.5%", "2.2%", "4.1%",
    "3.2%", "1.8%", "5.4%", "12.4%", "1.4%", "1.1%",
    "2.7%", "2.0%", "0.9%", "1.8%", "3.3%"
  ),
  share_proactive_civic = c(
    "96.6%", "98.6%", "95.1%", "95.3%", "98.8%", "98.2%",
    "97.6%", "97.6%", "98.0%", "97.9%", "98.1%", "98.8%", "91.9%",
    "86.0%", "98.6%", "97.9%", "100.0%", "97.0%", "100.0%",
    "99.4%", "95.6%", "99.4%", "78.0%", "97.6%", "100.0%",
    "98.5%", "98.9%", "100.0%", "100.0%", "96.5%"
  ),
  share_no_views_civic = c(
    "77.1%", "89.9%", "90.1%", "85.9%", "83.7%", "94.2%",
    "94.6%", "82.9%", "92.5%", "90.0%", "85.1%", "96.5%", "82.5%",
    "24.4%", "81.4%", "93.8%", "93.0%", "92.4%", "94.3%",
    "91.0%", "90.9%", "97.2%", "27.8%", "92.7%", "89.3%",
    "69.7%", "95.1%", "96.2%", "100.0%", "89.5%"
  ),
  share_24h_civic = c(
    "82.8%", "93.1%", "94.5%", "87.5%", "82.6%", "94.9%",
    "96.7%", "87.8%", "97.0%", "96.5%", "96.2%", "98.2%", "95.1%",
    "96.3%", "88.8%", "87.5%", "91.2%", "98.5%", "95.7%",
    "94.5%", "93.6%", "97.8%", "49.8%", "97.6%", "92.9%",
    "81.9%", "98.1%", "100.0%", "100.0%", "92.7%"
  )
)

# 3) Synthetic & Manipulated Media
df_SLI_21_1_1_synthetic <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  pct_video_removals_synthetic = c(
    "2.9%", "7.7%", "4.4%", "36.1%", "34.2%", "4.3%",
    "1.8%", "12.2%", "11.3%", "4.3%", "4.8%", "35.9%", "3.8%",
    "5.0%", "4.7%", "5.0%", "9.0%", "7.5%", "10.7%",
    "5.8%", "1.8%", "10.3%", "2.7%", "3.3%", "2.6%",
    "5.5%", "2.4%", "3.1%", "4.3%", "7.1%"
  ),
  pct_proactive_synthetic = c(
    "99.0%", "97.6%", "99.1%", "93.2%", "93.8%", "97.2%",
    "98.1%", "96.6%", "97.1%", "96.1%", "97.8%", "89.9%", "98.5%",
    "92.8%", "98.8%", "99.2%", "98.0%", "96.9%", "98.4%",
    "98.7%", "95.9%", "96.0%", "96.8%", "98.0%", "100.0%",
    "97.7%", "95.3%", "98.8%", "97.9%", "94.0%"
  ),
  pct_no_views_synthetic = c(
    "57.2%", "62.8%", "46.7%", "15.4%", "30.7%", "48.8%",
    "48.6%", "59.1%", "39.9%", "46.5%", "62.1%", "27.9%", "55.6%",
    "52.3%", "47.3%", "45.7%", "47.8%", "50.7%", "67.2%",
    "60.6%", "56.3%", "37.8%", "37.9%", "38.8%", "57.6%",
    "33.2%", "48.7%", "72.9%", "68.8%", "46.5%"
  ),
  pct_24h_synthetic = c(
    "47.3%", "72.7%", "23.8%", "11.1%", "6.9%", "70.8%",
    "59.0%", "74.5%", "55.3%", "47.4%", "56.7%", "10.2%", "57.5%",
    "60.1%", "44.7%", "47.3%", "48.3%", "41.7%", "79.2%",
    "67.7%", "51.3%", "31.8%", "25.0%", "18.4%", "60.6%",
    "30.8%", "53.7%", "75.3%", "60.4%", "55.7%"
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_21_1_1_info <- " 
# Dataframes: SLI 21.1.1

LI 21.1.1 – Maßnahmen nach Maßnahme 21.1

Methodik der Datenerfassung:
- Anteile der Entfernungen nach Falschinformationsrichtlinie, proaktiver Anteil, Anteil ohne Views und Anteil innerhalb 24 Stunden
  jeweils bezogen auf Gesamtentfernungen pro Richtlinie.
- share_cancel_rate_unverified_label (%) zeigt den Prozentsatz an Nutzern, die ein Video nach Warnhinweis nicht teilen.

Werte basieren auf ungefährem Standort der Nutzer.

**df_SLI_21_1_1_misinformation**  
- share_cancel_rate_unverified_label: Prozentsatz, der nach Warnung das Teilen abbricht  
- share_removals_misinformation: Anteil Entfernungen unter Falschinformationsrichtlinie  
- share_proactive_misinformation: Anteil proaktiver Entfernungen  
- share_no_views_misinformation: Anteil von Entfernungen ohne Views  
- share_24h_misinformation: Anteil Entfernungen innerhalb 24h

**df_SLI_21_1_1_civic_election**  
- share_video_removals_civic: Anteil Videoentfernungen unter Civic/Election Integrity  
- share_proactive_civic: Anteil proaktiver Entfernungen  
- share_no_views_civic: Anteil ohne Views  
- share_24h_civic: Anteil innerhalb 24h

**df_SLI_21_1_1_synthetic**  
- pct_video_removals_synthetic: Prozentsatz der Videoentfernungen unter synthetische/manipulierte Medien  
- pct_proactive_synthetic: Prozentsatz proaktiver Entfernungen  
- pct_no_views_synthetic: Anteil ohne Views  
- pct_24h_synthetic: Anteil innerhalb 24h

Prozentangaben als Zeichenketten beibehalten. Kommas in Zahlen entfernt.
TikTokʼs CoPD Report Juli bis Dezember 2024 193–198
 "


###############################################################################
# SLI 21.1.2 - Maßnahmen nach Maßnahme 21.1
###############################################################################

df_SLI_21_1_2 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  videos_tagged_unverified_label = c(
    1875, 2387, 2428, 532, 330, 2431, 2438, 190, 1768, 24023, 28389, 3363, 2683,
    1591, 23139, 415, 389, 135, 64, 4787, 12974, 1921, 6708, 1229, 169,
    25829, 3207, 49, 0, 1516
  ),
  share_cancel_rate_label_pop_up = c(
    "31.8%", "33.8%", "34.0%", "33.7%", "32.9%", "29.5%", "30.2%", "28.5%", "27.2%",
    "37.1%", "30.1%", "32.0%", "31.4%", "29.6%", "37.6%", "30.9%", "30.8%", "33.6%",
    "35.4%", "27.8%", "28.9%", "33.1%", "30.1%", "28.9%", "33.3%", "34.1%", "29.4%",
    "27.9%", "19.6%", "25.4%"
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_21_1_2_info <- " 
# Dataframe: df_SLI_21_1_2

SLI 21.1.2 – Maßnahmen nach Maßnahme 21.1

Methodik der Datenerfassung:
- Anzahl der mit dem Label „unverified content“ gekennzeichneten Videos basierend auf Land, in dem das Video gepostet wurde.
- share_cancel_rate_label_pop_up (%): Anteil an Nutzern, die nach Erscheinen des Warnhinweises auf das Teilen verzichten, 
  basierend auf ungefährem Standort.

Spalten:
- **videos_tagged_unverified_label**: Anzahl markierter Videos
- **share_cancel_rate_label_pop_up**: Prozentsatz, der nach Warnhinweis das Teilen abbricht

TikTokʼs CoPD Report Juli bis Dezember 2024 199–200
 "


###############################################################################
# SLI 24.1.1 - Durchsetzungsmaßnahmen
###############################################################################

df_SLI_24_1_1 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  number_of_appeals_misinformation = c(
    619, 863, 267, 140, 108, 902,
    289, 140, 202, 7461, 13540, 734, 481,
    1091, 6074, 110, 105, 17, 38,
    1207, 4263, 402, 2573, 401, 267,
    4920, 943, 20, 0, 437
  ),
  number_of_overturns_misinformation = c(
    352, 673, 107, 84, 56, 433,
    215, 113, 156, 6189, 7268, 425, 314,
    845, 4174, 83, 87, 16, 37,
    959, 1833, 274, 1598, 175, 153,
    3961, 544, 17, 0, 322
  ),
  appeal_success_rate_misinformation = c(
    "56.9%", "78.0%", "40.1%", "60.0%", "51.9%", "48.0%",
    "74.4%", "80.7%", "77.2%", "83.0%", "53.7%", "57.9%", "65.3%",
    "77.5%", "68.7%", "75.5%", "82.9%", "94.1%", "97.4%",
    "79.5%", "43.0%", "68.2%", "62.1%", "43.6%", "57.3%",
    "80.5%", "57.7%", "85.0%", "0.0%", "73.7%"
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_24_1_1_info <- " 
# Dataframe: df_SLI_24_1_1

SLI 24.1.1 – Durchsetzungsmaßnahmen

Methodik der Datenerfassung:
Anzahl der Einsprüche/Wiederherstellungen basierend auf Land, in dem das betroffene Video gepostet wurde. 
Gilt nur für Verstöße gegen Richtlinien zu Falschinformationen, Wahlen und bearbeiteten Medien/AIGC.

Spalten:
- **number_of_appeals_misinformation**: Anzahl Einsprüche gegen Löschungen unter Falschinformationsrichtlinie
- **number_of_overturns_misinformation**: Anzahl erfolgreicher Einsprüche
- **appeal_success_rate_misinformation**: Erfolgsquote der Einsprüche

TikTokʼs CoPD Report Juli bis Dezember 2024 214–215
 "


###############################################################################
# SLI 24.1.1 – Durchsetzungsmaßnahmen (Misinformation, Civic & Election Integrity, Synthetic Media)
###############################################################################

# 1) Misinformation
df_SLI_24_1_1_misinformation <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  number_of_appeals_misinformation = c(
    619, 863, 267, 140, 108, 902,
    289, 140, 202, 7461, 13540, 734, 481,
    1091, 6074, 110, 105, 17, 38,
    1207, 4263, 402, 2573, 401, 267,
    4920, 943, 20, 0, 437
  ),
  number_of_overturns_misinformation = c(
    352, 673, 107, 84, 56, 433,
    215, 113, 156, 6189, 7268, 425, 314,
    845, 4174, 83, 87, 16, 37,
    959, 1833, 274, 1598, 175, 153,
    3961, 544, 17, 0, 322
  ),
  appeal_success_rate_misinformation = c(
    "56.9%", "78.0%", "40.1%", "60.0%", "51.9%", "48.0%",
    "74.4%", "80.7%", "77.2%", "83.0%", "53.7%", "57.9%", "65.3%",
    "77.5%", "68.7%", "75.5%", "82.9%", "94.1%", "97.4%",
    "79.5%", "43.0%", "68.2%", "62.1%", "43.6%", "57.3%",
    "80.5%", "57.7%", "85.0%", "0.0%", "73.7%"
  )
)

# 2) Civic & Election Integrity
df_SLI_24_1_1_civic_election <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  number_of_appeals_civic_election = c(
    79, 149, 34, 7, 4, 45,
    57, 3, 12, 331, 1302, 68, 45,
    53, 553, 5, 13, 7, 3,
    123, 177, 79, 524, 11, 5,
    239, 124, 2, 0, 44
  ),
  number_of_overturns_civic_election = c(
    65, 123, 23, 7, 2, 33,
    50, 3, 9, 301, 1053, 56, 32,
    48, 491, 5, 11, 4, 3,
    103, 125, 56, 403, 7, 4,
    202, 100, 0, 0, 35
  ),
  appeal_success_rate_civic_election = c(
    "82.3%", "82.6%", "67.6%", "100.0%", "50.0%", "73.3%",
    "87.7%", "100.0%", "75.0%", "90.9%", "80.9%", "82.4%", "71.1%",
    "90.6%", "88.8%", "100.0%", "84.6%", "57.1%", "100.0%",
    "83.7%", "70.6%", "70.9%", "76.9%", "63.6%", "80.0%",
    "84.5%", "80.6%", "0.0%", "0.0%", "79.5%"
  )
)

# 3) Synthetic & Manipulated Media
df_SLI_24_1_1_synthetic <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  number_of_appeals_synthetic = c(
    9, 14, 5, 12, 4, 31,
    18, 18, 6, 110, 177, 12, 22,
    17, 57, 7, 0, 0, 0,
    19, 35, 22, 30, 5, 7,
    52, 15, 0, 0, 14
  ),
  number_of_overturns_synthetic = c(
    8, 12, 2, 8, 3, 12,
    16, 14, 5, 87, 121, 9, 15,
    15, 48, 3, 0, 0, 0,
    14, 25, 16, 24, 4, 2,
    40, 7, 0, 0, 9
  ),
  appeal_success_rate_synthetic = c(
    "88.9%", "85.7%", "40.0%", "66.7%", "75.0%", "38.7%",
    "88.9%", "77.8%", "83.3%", "79.1%", "68.4%", "75.0%", "68.2%",
    "88.2%", "84.2%", "42.9%", "0.0%", "0.0%", "0.0%",
    "73.7%", "71.4%", "72.7%", "80.0%", "80.0%", "28.6%",
    "76.9%", "46.7%", "0.0%", "0.0%", "64.3%"
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_24_1_1_info <- " 
# Dataframes: SLI 24.1.1 – Durchsetzungsmaßnahmen

Methodik der Datenerfassung:
Anzahl der Einsprüche/Wiederherstellungen bezieht sich auf das Land, in dem das jeweilige Video gepostet wurde. 
Zahlen gelten für Richtlinien zu Falschinformationen, Civic & Election Integrity sowie Bearbeiteten Medien & AIGC.

## df_SLI_24_1_1_misinformation
- number_of_appeals_misinformation: Einsprüche wegen Entfernung unter Falschinformationsrichtlinie
- number_of_overturns_misinformation: Wiederherstellungen
- appeal_success_rate_misinformation: Prozentsatz erfolgreicher Einsprüche

## df_SLI_24_1_1_civic_election
- number_of_appeals_civic_election: Einsprüche wegen Entfernung (Wahl- und Zivilintegrität)
- number_of_overturns_civic_election: Wiederherstellungen
- appeal_success_rate_civic_election: Erfolgsrate

## df_SLI_24_1_1_synthetic
- number_of_appeals_synthetic: Einsprüche wegen Entfernung unter Richtlinie synthetische/manipulierte Medien
- number_of_overturns_synthetic: Wiederherstellungen
- appeal_success_rate_synthetic: Erfolgsrate

TikTokʼs CoPD Report Juli bis Dezember 2024, Seiten 214–220.
 "


###############################################################################
# LI 31.1.1 – Einsatz von Faktenchecks
###############################################################################
df_SLI_31_1_1 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  fact_checked_videos = c(
    64, 141, 398, 137, 8, 200,
    175, 84, 61, 1045, 837, 64, 144,
    91, 202, 40, 41, 2, 0,
    52, 622, 59, 669, 138, 22,
    407, 158, 1, 0, 227
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_31_1_1_info <- " 
# Dataframe: df_LI_31_1_1

LI 31.1.1 – Einsatz von Faktenchecks

Methodik der Datenerfassung:
Anzahl der Videos, die von einem Faktencheck-Partner im jeweiligen Gebiet überprüft wurden.

Spalten:
- **fact_checked_videos**: Anzahl der faktengeprüften Videos.

TikTokʼs CoPD Report Juli bis Dezember 2024 253–254
 "


###############################################################################
# SLI 31.1.2 – Auswirkungen der ergriffenen Maßnahmen
###############################################################################
df_SLI_31_1_2 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  videos_removed_fact_check_assessment = c(
    8, 26, 62, 31, 0, 42,
    12, 2, 4, 166, 177, 8, 21,
    13, 40, 1, 0, 0, 0,
    13, 152, 10, 168, 42, 3,
    55, 15, 1, 0, 14
  ),
  videos_removed_policy_guidelines = c(
    2888, 3902, 1568, 789, 511, 2720,
    1455, 319, 984, 44354, 50335, 4198, 2002,
    4676, 21035, 694, 520, 279, 168,
    5422, 13028, 2629, 14103, 1365, 574,
    22581, 3489, 122, 35, 1798
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_31_1_2_info <- " 
# Dataframe: df_SLI_31_1_2

SLI 31.1.2 – Auswirkungen der ergriffenen Maßnahmen

Methodik der Datenerfassung:
- Anzahl der Videos, die durch Bewertung eines Faktenchecks entfernt wurden
- Anzahl der Videos, die aufgrund von Richtlinien, bekannten Falschinformationstrends und Wissensdatenbank entfernt wurden
  (Zahlen beziehen sich auf das Land, in dem das Video gepostet wurde).

Entfernungen erfolgen unter der Falschinformationsrichtlinie. Berücksichtigung von policy guidelines, bekannten
Falschinformationstrends und Wissensdatenbank.

Spalten:
- **videos_removed_fact_check_assessment**: Anzahl Videos, die nach Faktencheck-Bewertung entfernt wurden
- **videos_removed_policy_guidelines**: Anzahl Videos, entfernt aufgrund Richtlinien / Falschinformationstrends

TikTokʼs CoPD Report Juli bis Dezember 2024 255–256
 "


###############################################################################
# SLI 31.1.3 – Quantitative Informationen als Kontext zu SLIs 31.1.1 / 31.1.2
###############################################################################
df_SLI_31_1_3 <- data.frame(
  member_states = c(
    "Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
    "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
    "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
    "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia",
    "Spain", "Sweden", "Iceland", "Liechtenstein", "Norway"
  ),
  fact_check_removals_percent_of_total = c(
    "0.2%", "0.5%", "3.6%", "1.0%", "0.0%", "1.3%",
    "0.8%", "0.6%", "0.4%", "0.4%", "0.3%", "0.2%", "0.3%",
    "0.0%", "0.2%", "0.0%", "0.0%", "0.0%", "0.0%",
    "0.1%", "1.0%", "0.3%", "0.9%", "2.8%", "0.0%",
    "0.2%", "0.4%", "0.0%", "0.0%", "0.6%"
  )
)

# Erläuterung zum Dataframe im Markdown-Format (auf Deutsch, ohne Personalpronomen):
df_SLI_31_1_3_info <- " 
# Dataframe: df_SLI_31_1_3

SLI 31.1.3 – Quantitative Informationen zur Kontextualisierung für SLIs 31.1.1 / 31.1.2

Methodik der Datenerfassung:
Prozentsatz der Videos, die auf Grundlage eines Faktencheck-Urteils entfernt wurden, im Verhältnis zur Gesamtzahl
der unter schädlicher Falschinformationsrichtlinie entfernten Videos, basierend auf dem Land, in dem das Video gepostet wurde.

Spalte:
- **fact_check_removals_percent_of_total**: Prozentsatz der wegen Faktencheck entfernten Videos an allen entfernten 
  Videos unter schädlicher Falschinformation.

TikTokʼs CoPD Report Juli bis Dezember 2024 257–258
 "
