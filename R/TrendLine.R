#' @include AmObject.R ListOrCharacter.R
NULL

#' @title TrendLine class
#' @author DataKnowledge
#' 
#' @description Creates a trendline for amSerialChart and amXYChart charts which indicates the trend
#' of your data or covers some different purposes. Multiple can be assigned.
#' @details Run \code{api("TrendLine")} for more information and all avalaible properties.
#' 
#' @slot finalValue \code{numeric}. Value at which trend line should end.
#' @slot finalXValue \code{numeric}. Used by XY chart only. X value at which trend line should end.
#' @slot initialValue \code{numeric}. Value from which trend line should start.
#' @slot initialXValue \code{numeric}. Used by XY chart only.
#' X value from which trend line should start.
#' @slot valueAxis \linkS4class{ValueAxis}. Value axis of the trend line.
#' Will use first value axis of the chart if not set any.
#' You can use a reference to the value axis object or id of value axis.
#' @slot valueAxisX \linkS4class{ValueAxis}. Used by XY chart only. X axis of trend line.
#' Will use first X axis of the chart if not set any.
#' You can use a reference to the value axis object or id of value axis.
#' @slot listeners \code{list} containining the listeners to add to the object.
#' The list must be named as in the official API. Each element must a character string.
#' See examples for details.
#' @slot otherProperties \code{list},
#' containing other avalaible properties.
#' @slot value \code{numeric}.
#' 
#' @export
setClass(Class = "TrendLine", contains = "AmObject",
         representation = representation(
           initialValue = "numeric",
           initialXValue = "numeric",
           finalValue = "numeric",
           finalXValue = "numeric",
           valueAxis = "listOrCharacter",
           valueAxisX = "listOrCharacter"
         ))

#' @title Initialize a TrendLine
#' @param .Object \linkS4class{TrendLine}.
#' @param finalValue \code{numeric}.
#' Value at which trend line should end.
#' @param finalXValue \code{numeric}.
#' Used by XY chart only. X value at which trend line should end.
#' @param initialValue \code{numeric}.
#' Value from which trend line should start.
#' @param initialXValue \code{numeric}.
#' Used by XY chart only. X value from which trend line should start.
#' @param valueAxis \linkS4class{ValueAxis}.
#' Value axis of the trend line. Will use first value axis of the chart if not set any.
#' You can use a reference to the value axis object or id of value axis.
#' @param valueAxisX \linkS4class{ValueAxis}.
#' Used by XY chart only. X axis of trend line.
#' Will use first X axis of the chart if not set any.
#' You can use a reference to the value axis object or id of value axis.
#' @param ... Other properties.
#' @examples
#' new("TrendLine", initialValue = 1, finalValue = 11)
#' 
#' # Other example
#' valueAxis <- valueAxis(title = "Hello !", axisTitleOffset = 12)
#' new("TrendLine", valueAxis = valueAxis)
#' @rdname initialize-TrendLine
#' @export
setMethod(f = "initialize", signature = "TrendLine",
          definition = function(.Object,
                                initialValue, initialXValue,
                                finalValue, finalXValue,
                                valueAxis, valueAxisX, ...)
          {  
            if (!missing(initialValue)) {
              .Object@initialValue <- initialValue
            }
            if (!missing(initialXValue)) {
              .Object@initialXValue <- initialXValue
            }
            if (!missing(finalValue)) {
              .Object@finalValue <- finalValue
            }
            if (!missing(finalXValue)) {
              .Object@finalXValue <- finalXValue
            }
            if (!missing(valueAxis)) {
              .Object <- setValueAxis(.Object, valueAxis)
            }
            if (!missing(valueAxisX)) {
              .Object <- setValueAxisX(.Object, valueAxisX)
            }
            .Object <- setProperties(.Object, ...)
            validObject(.Object)
            return(.Object)
          })

# CONSTRUCTOR ####

#' @describeIn initialize-TrendLine
#' @examples
#' trendLine(initialValue = 1, finalValue = 11)
#' @export
trendLine <- function(.Object,
                      initialValue, initialXValue,
                      finalValue, finalXValue,
                      valueAxis, valueAxisX, ...) {
  .Object <- new("TrendLine")
  if (!missing(initialValue)) {
    .Object@initialValue <- initialValue
  } else {}
  if (!missing(initialXValue)) {
    .Object@initialXValue <- initialXValue
  } else {}
  if (!missing(finalValue)) {
    .Object@finalValue <- finalValue
  } else {}
  if (!missing(finalXValue)) {
    .Object@finalXValue <- finalXValue
  } else {}
  if (!missing(valueAxis)) {
    .Object <- setValueAxis(.Object, valueAxis)
  } else {}
  if (!missing(valueAxisX)) {
    .Object <- setValueAxisX(.Object, valueAxisX)
  } else {}
  .Object <- setProperties(.Object, ...)
  validObject(.Object)
  return(.Object)
}

#' @examples
#' trendLine(initialValue = 1, valueAxis = valueAxis(axisTitleOffset = 12, tickLength = 10))
#' @rdname listProperties-AmObject
setMethod(f = "listProperties", signature = "TrendLine",
           definition = function(.Object)
           { 
             ls <- callNextMethod()
             if (length(.Object@initialValue)) {
               ls <- rlist::list.append(ls, initialValue = .Object@initialValue)
             } else {}
             if (length(.Object@initialXValue)) {
               ls <- rlist::list.append(ls, initialXValue = .Object@initialXValue)
             } else {}
             if (length(.Object@finalValue)) {
               ls <- rlist::list.append(ls, finalValue = .Object@finalValue)
             } else {}
             if (length(.Object@initialXValue)) {
               ls <- rlist::list.append(ls, finalXValue = .Object@finalXValue)
             } else {}
             if (length(.Object@valueAxis)) {
               ls <- rlist::list.append(ls, valueAxis = .Object@valueAxis)
             } else {}
             if (length(.Object@valueAxisX)) {
               ls <- rlist::list.append(ls, valueAxisX = .Object@valueAxisX)
             } else {}
             return(ls)
           })