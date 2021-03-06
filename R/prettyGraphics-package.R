#' @title prettyGraphics: Prettier graphics made easier in R
#' @author Edward Lavender
#'
#' @description  \link{prettyGraphics} is an R package designed to make the production of prettier plots easier in R. This includes functions which implement prettier versions of many standard plots, such as scatterplots, boxplots and histograms, namely through the creation of prettier axes. Other functions facilitate data exploration (such as the addition of lines coloured by a covariate to a plot), visualisation of statistical models (such as via the addition of model predictions to plots) and plot layout.
#'
#' @section Pretty axes: \describe{
#' Several functions facilitate the creation of pretty axes. Of these, the main function is \link{pretty_axis}, which implements \link{sci_notation} and \link{add_lagging_point_zero} internally. These functions can be called by the user but, more commonly, they are implemented under-the-hood in one of \link{prettyGraphics}' implementations of common plotting functions (e.g., \link{pretty_plot}, see below).
#' \item{\link{pretty_seq}}{This function defines pretty sequences, given data, limits and pretty parameters.}
#' \item{\link{pretty_axis}}{This function defines and adds pretty axes to plots.}
#' \item{\link{sci_notation}}{This function translates the 'e' notation used by base R into scientific notation.}
#' \item{\link{add_lagging_point_zero}}{This function brings all numbers up the the same number of decimal places.}
#' }
#'
#' @section Data exploration: \describe{
#' \item{\link{add_grid_rect_xy}}{This function adds a rectangular grid to a plot at user-defined positions.}
#' \item{\link{add_lines}}{This function adds lines to a plot, possibly colouring lines by the values of a covariate.}
#' \item{\link{add_colour_bar}}{This function adds a customisable colour bar legend to a plot.}
#' \item{\link{add_shading_bar}}{This function adds blocks of shading to a plot to elucidate relationships between a response and explanatory variables, one of which is a factor.}
#' }
#'
#' @section Statistical inference: \describe{
#' \item{\link{summarise_in_bins}}{This function computes statistical summaries of continuous data in bins.}
#' \item{\link{add_error_bars}}{This function adds error bars to a plot.}
#' \item{\link{list_CIs}}{This function  lists model predictions/confidence intervals from fitted values and standard errors (or similar).}
#' \item{\link{add_model_predictions}}{This function adds model predictions (e.g. fitted lines, confidence intervals) to plots.}
#' }
#'
#' @section Standard plotting functions: \describe{
#' \item{\link{pretty_plot}}{This function creates prettier plots for a variety of functions.}
#' \item{\link{pretty_hist}}{This function creates prettier histograms.}
#' \item{\link{pretty_boxplot}}{This function creates prettier boxplots.}
#' \item{\link{pretty_curve}}{This function evaluates and plots functions.}
#' \item{\link{pretty_mat}}{This function creates pretty matrices.}
#' \item{\link{pretty_residuals}}{This function creates prettier diagnostic residual plots.}
#' }
#'
#' @section Temporal data: \describe{
#'  \item{\link{pretty_line}}{This function creates pretty number lines and timelines.}
#'  \item{\link{define_time_blocks}}{This function defines 'blocks' (i.e., diel periods or seasons) for each day in a time window.}
#'  \item{\link{pretty_ts}}{This function creates pretty timeseries plots.}
#'  \item{\link{vis_ts}}{An interactive Shiny-Dashboard application for the exploration of timeseries data.}
#'  \item{\link{add_moons}}{This function add moons to a plot of lunar phase.}
#' }
#'
#' @section Spatial data: \describe{
#'  \item{\link{pretty_scape_3d}}{This function creates interactive, 3-dimensional visualisations of landscapes/seascapes and/or environmental conditions.}
#'  \item{\link{vis_scape_3d}}{An R Shiny wrapper for \link{pretty_scape_3d}.}
#' }
#'
#' @section Plot layout: \describe{
#'  \item{\link{par_mf}}{This function defines a suitable plotting window for a given number of plots.}
#'  \item{\link{par_tri}}{This function defines the indices of plots along the lower or upper triangle of a square multi-panel matrix.}
#' }
#'
#' @docType package
#' @name prettyGraphics
NULL
