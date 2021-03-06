cnvOutput <- function() {
  # ns <- NS(id)
  column(
    width = 12, offset = 0,
    shinydashboard::tabBox(id = "cnv_PLOT",title = "",width = 12,
                                                           tabPanel(title="CNV Pie distribution",imagePlotInput(id="cnv_pie",width="100%",height="100%")),
                                                           tabPanel(title= "Hete CNV profile",PlotInput(id="cnv_hete")),
                                                           tabPanel(title="Homo CNV profile",PlotInput(id="cnv_homo")),
                                                           # tabPanel(title="Overall CNV frenquency",PlotInput("cnv_bar")),
                                                           tabPanel(title="CNV to Expression",
                                                                    PlotInput("cnv_exp"))
                                                           # tabPanel(title="CNV oncostrip",PlotInput("cnv_oncostrip")),
                                                           # tabPanel(title="Exclusive CNV",PlotInput("cnv_exclusive"))
                                    )
  )
}

fn_cnv_result <- function(.cnv){
  if (.cnv == TRUE) {
    cnvOutput()
  } else{
    column(
      width = 12, offset = 0,
      shiny::tags$div(style = "height=500px;", class = "jumbotron", shiny::tags$h2("This analysis is not selected"))
    )
  }
}