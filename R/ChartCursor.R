#' @include AmObject.R ListOrCharacter.R
NULL

#' @title ChartCursor class
#' @author DataKnowledge
#' 
#' @description Creates a cursor for the chart which follows the mouse movements.
#' In case of AmSerialChart charts it shows the balloons of hovered data points.
#' @details Run \code{api("ChartCursor")} for more information and all avalaible properties.
#' 
#' @slot oneBalloonOnly \code{logical}.
#' If this is set to TRUE, border color instead of background color will be changed when
#' user rolls-over the slice, graph, etc.
#' @slot valueLineAxis \code{list}.
#' Properties of Axis of value line. If you set valueLineBalloonEnabled to true,
#' but you have more than one axis, you can use this property
#' to indicate which axis should display balloon.
#' @slot listeners \code{list} containining the listeners to add to the object.
#' The list must be named as in the official API. Each element must a character string.
#' See examples for details.
#' @slot otherProperties \code{list},
#' containing other avalaible properties non coded in the package yet.
#' @slot value \code{numeric}.
#' 
#' @export
setClass(Class = "ChartCursor", contains = "AmObject",
         representation = representation(
           oneBalloonOnly = "logical",
           valueLineAxis = "listOrCharacter"
         ))

#' @title Initialize a ChartCursor
#' @param .Object \linkS4class{ChartCursor}.
#' @param oneBalloonOnly \code{logical}.
#' If this is set to TRUE, border color instead of background color will be changed when
#' user rolls-over the slice, graph, etc.
#' @param valueLineAxis \linkS4class{ValueAxis}.
#' If you set valueLineBalloonEnabled to true,
#' but you have more than one axis, you can use this property
#' to indicate which axis should display balloon.
#' @param ... other properties.
#' See \url{http://docs.amcharts.com/3/javascriptcharts/ChartCursor}
#' @return (updated) .Object of class \linkS4class{ChartCursor}.
#' @examples
#' new("ChartCursor", oneBalloonOnly = TRUE)
#' @rdname initialize-ChartCursor
#' @export
setMethod(f = "initialize", signature = "ChartCursor",
          definition = function(.Object, oneBalloonOnly, valueLineAxis,...)
          {  
            if (!missing(oneBalloonOnly)) {
              .Object@oneBalloonOnly <- oneBalloonOnly
            } else {}
            if (!missing(valueLineAxis)) {
              .Object <- setValueLineAxis(.Object, valueLineAxis)
            } else {}
            .Object <- setProperties(.Object, ...)
            validObject(.Object)
            return(.Object)
          })

# CONSTRUCTOR ####

#' @describeIn initialize-ChartCursor
#' @param animationDuration \code{numeric}, duration of animation of a line, in seconds.
#' @examples
#' chartCursor()
#' chartCursor(oneBalloonOnly = TRUE)
#' @export
chartCursor <- function(animationDuration = .3, oneBalloonOnly, valueLineAxis,...) {
  .Object <- new("ChartCursor", animationDuration = animationDuration)
  if (!missing(oneBalloonOnly)) {
    .Object@oneBalloonOnly <- oneBalloonOnly
  } else {}
  if (!missing(valueLineAxis)) {
    .Object <- setValueLineAxis(.Object, valueLineAxis)
  } else {}
  .Object <- setProperties(.Object, ...)
  validObject(.Object)
  return( .Object )
}

#' @rdname listProperties-AmObject
#' @examples
#' new("ChartCursor", oneBalloonOnly = TRUE)
setMethod(f = "listProperties", signature = "ChartCursor",
          definition = function(.Object)
          { 
            ls <- callNextMethod()
            if (length(.Object@oneBalloonOnly)) {
              ls <- rlist::list.append(ls, oneBalloonOnly = .Object@oneBalloonOnly)
            } else {}
            if(length(.Object@valueLineAxis)){
              ls <- rlist::list.append(ls, valueLineAxis = .Object@valueLineAxis)
            } else {}
            return(ls)
          })