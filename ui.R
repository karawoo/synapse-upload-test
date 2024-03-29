
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# This interface has been modified to be used specifically on
# Sage Bionetworks Synapse pages
# to log into Synapse as the currently logged in user from the web
# portal using the session token.
#
# https://www.synapse.org

library(shiny)

shinyUI(fluidPage(

  tags$head(
    singleton(
      includeScript("www/readCookie.js")
    )
  ),

  # Application title
  uiOutput("title"),

  fileInput("file", "Choose a file to upload"),
  actionButton("save", "Save"),
  textOutput("error"),
  textOutput("clientdataText"),
  textOutput("stored")
))
