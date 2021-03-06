% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/CategoryAxis.R
\docType{methods}
\name{initialize,CategoryAxis-method}
\alias{categoryAxis}
\alias{initialize,CategoryAxis-method}
\alias{setGridPosition}
\alias{setGridPosition,CategoryAxis,character-method}
\title{Initialize a CategoryAxis}
\usage{
\S4method{initialize}{CategoryAxis}(.Object, gridPosition, guides, ...)

categoryAxis(gridPosition, ...)

setGridPosition(.Object, gridPosition)

\S4method{setGridPosition}{CategoryAxis,character}(.Object, gridPosition)
}
\arguments{
\item{.Object}{\linkS4class{CategoryAxis}.}

\item{gridPosition}{\code{character}.
Specifies if a grid line is placed on the center of a cell or on the beginning of a cell.
Possible values are: "start" and "middle"
This setting doesn't work if parseDates is set to true.}

\item{guides}{\code{list} of \linkS4class{Guide}.}

\item{...}{Other properties.}
}
\description{
Initialize a CategoryAxis
}
\section{Functions}{
\itemize{
\item \code{categoryAxis}: 
}}
\examples{
\donttest{
new("CategoryAxis")
new("CategoryAxis", gridPosition = "start", 1) # 1 is not take into account
}
guides <- list(guide(fillAlpha = .4, adjustBorderColor = TRUE),
               guide(fillAlpha = .4, adjustBorderColor = TRUE))
new("CategoryAxis", gridPosition = "start",  gridThickness = 1, guides = guides)
categoryAxis(gridPosition = "start", adjustBorderColor = TRUE)
setGridPosition(.Object = categoryAxis(), gridPosition = "start")
}

