% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/viralx_knn_shap.R
\name{viralx_knn_shap}
\alias{viralx_knn_shap}
\title{Explain K Nearest Neighbor Model using SHAP values}
\usage{
viralx_knn_shap(
  vip_featured,
  hiv_data,
  knn_hyperparameters,
  vip_train,
  vip_new,
  orderings
)
}
\arguments{
\item{vip_featured}{The name of the response variable to explain.}

\item{hiv_data}{The training dataset containing predictor variables and the response variable.}

\item{knn_hyperparameters}{A list of hyperparameters for the KNN model, including:
\itemize{
\item \code{neighbors}: The number of neighbors to consider.
\item \code{weight_func}: The weight function to use.
\item \code{dist_power}: The distance power parameter.
}}

\item{vip_train}{The dataset used for training the KNN model.}

\item{vip_new}{The dataset for which SHAP values are calculated.}

\item{orderings}{The number of orderings for SHAP value calculations.}
}
\value{
A list of SHAP values for each observation in \code{vip_new}.
}
\description{
This function calculates SHAP (SHapley Additive exPlanations) values for a
K-Nearest Neighbors (KNN) model trained on HIV data with specified
hyperparameters.
}
\examples{
\dontrun{
set.seed(123)
hiv_data <- train2
knn_hyperparameters <- list(neighbors = 5, weight_func = "optimal", dist_power = 0.3304783)
vip_featured <- c("cd_2022")
vip_train <- hiv_data
vip_new <- vip_train[1, ]
orderings <- 20
viralx_knn_shap(vip_featured, hiv_data, knn_hyperparameters, vip_train, vip_new, orderings)
}
}
