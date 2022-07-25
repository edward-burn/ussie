#' Create a standard dataframe for league data
#'
#' @param data_engsoc Data produced by engsoccerdata
#' @param country_name Name of country that will be added to output to
#' identify country used
#'
#' @return a tibble with columns `country`, `date`, `season`, `tier`, `home`,
#' `visitor`, `goals_home`, `goals_visitor`.
#' @export
#'
#' @examples
uss_make_matches <- function(data_engsoc, country_name) {
  result <-
    data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      country=country_name,
      tier = factor(tier, levels = c("1", "2", "3", "4")),
      season = as.integer(Season),
      date = as.Date(Date),
      home = as.character(home),
      visitor = as.character(visitor),
      goals_home = as.integer(hgoal),
      goals_visitor = as.integer(vgoal)
    )
  result
}
