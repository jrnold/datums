unescape_html <- function(str){
  xml2::xml_text(xml2::read_html(paste0("<x>", str, "</x>")))
}

{
  lines <- readLines("http://www.liquidasset.com/lindley.htm")

  judges <- lines[231:241] %>%
    str_match("\\s*(\\d+)\\s+(.*)") %>%
    `[`(, -1) %>%
    array_branch(2) %>%
    set_names(c("id", "name")) %>%
    as_tibble() %>%
    mutate(name = map_chr(name, unescape_html))

  chardonnay_wines <- lines[247:256] %>%
    str_match("\\s*([A-J])\\s+(.*)\\s+(\\d+)\\s(US|tJS|F)\\s*$") %>%
    `[`(, -1) %>%
    array_branch(2) %>%
    set_names(c("id", "winery", "vintage", "country")) %>%
    as_tibble() %>%
    mutate(winery = map_chr(winery, unescape_html),
           country = str_replace(country, "tJS", "US"))

  cab_wines <- lines[260:269] %>%
    str_match("\\s*([A-J])\\s+(.*)\\s+(\\d+)\\s(US|IJS|F)\\s*$") %>%
    `[`(, -1) %>%
    array_branch(2) %>%
    set_names(c("id", "winery", "vintage", "country")) %>%
    as_tibble() %>%
    mutate(winery = map_chr(winery, unescape_html),
           country = str_replace(country, "IJS", "US"))

  wines <-
    bind_rows(mutate(chardonnay_wines, variety = "Chardonnay"),
              mutate(cab_wines, variety = "Cabernet Sauvignons")) %>%
    mutate(france = country == "F") %>%
    select(-country)

  chardonnary_scores <- str_c(lines[276:285], collapse = "\n") %>%
    read_table(col_names = c("wine", 1:11)) %>%
    gather(taster, score, -wine)

  cab_scores <- str_c(lines[292:301], collapse = "\n") %>%
    read_table(col_names = c("wine", 1:11)) %>%
    gather(taster, score, -wine)

  scores <-
    bind_rows(mutate(chardonnary_scores, variety = "Chardonnay"),
              mutate(chardonnary_scores, variety = "Cabernet Sauvignons"))

  list(judges = judges,
       wines = wines,
       scores = scores)
} %>% save_data("winetasting")
