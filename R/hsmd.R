#' @title List of human kinase/phosphatase-substrate interactions predicted by HSM/D
#' @description This data set contains a list of human kinase/phosphatase-substrate interactions based on the domain-level HSM/D predictions.
#' @format A \code{data.table} of 14165303 K/P-S interactions.
#' @references Cunningham JM, Koytiger G, Sorger PK, AlQuraishi M. Nat Methods. 2020 Feb;17(2):175-183. doi: 10.1038/s41592-019-0687-1.
#' @source \url{https://figshare.com/articles/Predictions_-_Domain-Peptide_and_Protein-Protein_Interactions_-_HSM/10084745/2}
#' @author George Rosenberger
#' @examples
#' \dontrun{
#' data(hsmd)
#' summary(hsmd)
#' }
"hsmd"
