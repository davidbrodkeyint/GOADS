#' @name customHeader
#' @title customHeader
#' @import shiny
#' @import shinyWidgets
#' @import shinyjs
#' @import readr
#' @import shinybusy
#' @import bslib
#' @import bsicons
#' @import scales
#' @import zoo
#' @import stringr
#' @import glue
#'
#' @param app_name Character indicating App Name
#' @param team_name Character indicating Team name
#' @param app_maker_name Character listing contributors to the app
#' @param email_address Character indicating correspondant email address
#' @param last_updated Character indicating the timestamp
#'
#'
#' @return A HTML Navbar component that can be rendered through renderUI
#' @export
#'
#' @examples
#' x <- "Projext X,X-Men,John Doe and Bruce Wayne,john.doe@email.com, 02/02/2020 02:20:20"
#'
customHeader <- function(app_name, team_name, app_maker_name, 
                         email_address, last_updated, left_icon, right_icon) {
  
  header_style = "color: #FFF; font-size: 15px; margin: 0; font-family: 'Inter', sans-serif;"
  div(
    tags$style(type = 'text/css', '#txt-out {white-space: pre-wrap;}'),
    style = "display: flex; 
    align-items: center; 
    background-color: #1C23BA; 
    padding: 10px;
    font-family: 'Inter', sans-serif;
    border-radius: 9px;",
    div(
      style = "display: flex; align-items: center;",
      left_icon,
      div(
        style = "float: right;",
        h4(team_name, style = header_style),
        h4(email_address, style = header_style)
      ),
    ),
    h1(app_name, style = "color: #FFF; family: 'Inter-ExtraBoldItalic'; 
         font-size: 25px; 
         font-weight: bold; 
         margin: 0;
         flex: 1;
         text-align: center;"),
    div(style = "display: flex; align-items: center;",
        div(h4(app_maker_name, style = header_style),
           h4(last_updated, style = header_style)),
        div(style = "margin-left: 10px;", right_icon)
    )
  )
}
