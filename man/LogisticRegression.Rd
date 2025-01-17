% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{LogisticRegression}
\alias{LogisticRegression}
\title{LogisticRegression Class}
\description{
LogisticRegression Class

LogisticRegression Class
}
\details{
A class for performing multinomial logistic regression using gradient descent.
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{theta}}{(matrix) Model coefficients, including the intercept for each class.}

\item{\code{dict_coeff}}{(data.frame) A data frame of p-values for the model coefficients.}

\item{\code{nb_iters}}{(integer) Number of iterations for gradient descent. Default is 500.}

\item{\code{alpha}}{(numeric) Learning rate for gradient descent. Default is 0.01.}

\item{\code{penalty}}{(character) Regularization type. Can be "l1" (lasso), "l2" (ridge), or "elasticnet".}

\item{\code{lambda}}{(numeric) Regularization parameter.}

\item{\code{l1_ratio}}{(numeric) The ratio of L1 regularization in elasticnet. Default is 0.}

\item{\code{summary_values}}{(vector) A vector containing the log-likelihood and AIC values.}

\item{\code{is_too_big}}{(logical) Whether the dataset is too large to calculate p-values}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-LogisticRegression-new}{\code{LogisticRegression$new()}}
\item \href{#method-LogisticRegression-fit}{\code{LogisticRegression$fit()}}
\item \href{#method-LogisticRegression-predict_proba}{\code{LogisticRegression$predict_proba()}}
\item \href{#method-LogisticRegression-predict}{\code{LogisticRegression$predict()}}
\item \href{#method-LogisticRegression-test}{\code{LogisticRegression$test()}}
\item \href{#method-LogisticRegression-print}{\code{LogisticRegression$print()}}
\item \href{#method-LogisticRegression-summary}{\code{LogisticRegression$summary()}}
\item \href{#method-LogisticRegression-var_importance}{\code{LogisticRegression$var_importance()}}
\item \href{#method-LogisticRegression-export_pmml}{\code{LogisticRegression$export_pmml()}}
\item \href{#method-LogisticRegression-clone}{\code{LogisticRegression$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-new"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-new}{}}}
\subsection{Method \code{new()}}{
Initializes the Logistic Regression model with specified parameters.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$new(
  nb_iters = 500,
  alpha = 0.01,
  penalty = NULL,
  lambda = 0,
  l1_ratio = 0
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{nb_iters}}{(integer) Number of iterations for gradient descent. Default is 500.}

\item{\code{alpha}}{(numeric) Learning rate for gradient descent. Default is 0.01.}

\item{\code{penalty}}{(character) Regularization method: "l1" for lasso, "l2" for ridge, or "elasticnet". Default is NULL.}

\item{\code{lambda}}{(numeric) Regularization parameter. Default is 0.}

\item{\code{l1_ratio}}{(numeric) The ratio of L1 regularization in elasticnet. Default is 0.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A LogisticRegression object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-fit"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-fit}{}}}
\subsection{Method \code{fit()}}{
Trains the logistic regression model using provided data.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$fit(X, y)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X}}{(data.frame) Training predictor variables (features).}

\item{\code{y}}{(vector) Training target variable (labels).}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
(LogisticRegression) A trained LogisticRegression model.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-predict_proba"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-predict_proba}{}}}
\subsection{Method \code{predict_proba()}}{
Predicts the probabilities of individuals belonging to classes
Uses the scores obtained by multiplying X with theta,
then applies the softmax function to obtain the probabilities
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$predict_proba(X, theta)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X}}{(data.frame) New data (features) for which to predict probabilities.}

\item{\code{theta}}{(matrix) Model parameters.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
(matrix) A matrix of predicted probabilities for each class.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-predict"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-predict}{}}}
\subsection{Method \code{predict()}}{
Predicts the class for each observation in the dataset.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$predict(X)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X}}{(data.frame) New data (features) for which to predict the class.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
(vector) Predicted classes based on highest probabilities.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-test"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-test}{}}}
\subsection{Method \code{test()}}{
Evaluates the model performance using various metrics :
accuracy, precision, recall, f1 score, and confusion matrix
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$test(y_true, y_pred, confusion_matrix = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{y_true}}{(vector) True labels.}

\item{\code{y_pred}}{(vector) Predicted labels.}

\item{\code{confusion_matrix}}{(logical) Whether to display the confusion matrix}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
(list) accuracy, precision, recall, f1 score, and confusion matrix if requested.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-print"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-print}{}}}
\subsection{Method \code{print()}}{
Prints the coefficients of the trained model.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$print()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
(list) A list of coefficients for each class.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-summary"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-summary}{}}}
\subsection{Method \code{summary()}}{
Displays a summary of model metrics and coefficients.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$summary()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
(void) Print summary to the console.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-var_importance"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-var_importance}{}}}
\subsection{Method \code{var_importance()}}{
Computes the importance of the variables based on the trained model.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$var_importance(graph = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{graph}}{(logical) Whether to display the variable importance graph. Default is TRUE.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
(vector) A vector of the relative importance of each variable.
The sum is equal to 100\%
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-export_pmml"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-export_pmml}{}}}
\subsection{Method \code{export_pmml()}}{
Exports the Logistic Regression model to PMML format.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$export_pmml(file_path = "model.pmml", target_name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{file_path}}{(character) Path to save the PMML file. Default is "model.pmml".}

\item{\code{target_name}}{(character) The name of the target variable. Default is NULL, which assumes the last column is the target.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Saves the PMML file at the specified location.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LogisticRegression-clone"></a>}}
\if{latex}{\out{\hypertarget{method-LogisticRegression-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LogisticRegression$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
