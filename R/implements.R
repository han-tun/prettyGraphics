#######################################
#######################################
#### implement_pretty_axis_args

#' @title Implement \code{pretty_axis_args}
#' @description This function implements the \code{pretty_axis_args} argument in functions.
#' @param x A list of of coordinates (see \code{\link[prettyGraphics]{pretty_axis}}).
#' @param pretty_axis_args A named list of parameters that are passed to \code{\link[prettyGraphics]{pretty_axis}}.
#' @return A list, returned by \code{\link[prettyGraphics]{pretty_axis}}.
#' @author Edward Lavender
#' @export
#'
implement_pretty_axis_args <-
  function(x, pretty_axis_args){

    #### Add x to pretty_axis_args if not supplied
    if(length(pretty_axis_args$x) == 0) pretty_axis_args$x <- x

    #### If pretty axis parameters have been supplied...
    if(length(pretty_axis_args) > 0){

      #### Define default parameters:
      paa <- list(
        side = 1:2,
        pretty = list(n = 5),
        axis_ls = NULL,
        add = FALSE,
        return_list = TRUE
        )

      #### Check: has 'side' been supplied?
      # Check side has been supplied: if it has, remove side from paa, otherwise print warning
      # ... and default to side = 1:2
      if("side" %in% names(pretty_axis_args) | "axis_ls" %in% names(pretty_axis_args)){
        paa$side <- NULL
      } else{
        message("Argument 'side' not supplied to pretty_axis_args (nor 'axis_ls'); defaulting to side = 1:2.")
      }

      #### Check: has 'pretty' been supplied?
      # Remove pretty argument in default list if supplied;
      # This prevents issues when two lists are provided, in which case the user-provided argument remains.
      if("pretty" %in% names(pretty_axis_args)) paa$pretty <- NULL
      # Likewise, remove pretty if units are supplied:
      if("units" %in% names(pretty_axis_args)) paa$pretty <- NULL

      #### Merge parameters
      pretty_axis_args <- rlist::list.merge(paa, pretty_axis_args)
      # Add list(NULL) if necessary
      add_list_null <- function(l, elm){
        for(i in elm){
          if(is.null(l[[i]])){
            l[[i]] <- list(NULL)
          }
        }
        return(l)
      }
      add_list_null(pretty_axis_args, c("lim", "units", "axis"))

      #### Define list
      axis_ls <- do.call("pretty_axis", pretty_axis_args)

      #### Return list
      return(axis_ls)
    }
  }


#######################################
#######################################
#### implement_mtext_args()

#' @title Implement \code{mtext_args}
#' @description This function implements the \code{mtext_args} argument in functions.
#' @param mtext_args A named list.
#' @return The function adds axes labels to a plot via \code{\link[graphics]{mtext}}.
#' @author Edward Lavender
#' @export

implement_mtext_args <-
  function(mtext_args){
    if(length(mtext_args) > 0){
      invisible(
        lapply(mtext_args, function(mta){
          do.call(graphics::mtext, mta)
          })
      )
    }
  }


#### End of code.
#######################################
#######################################
