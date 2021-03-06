% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paired.R
\name{paired}
\alias{paired}
\title{Summary Statistics of a Set of Independent Variables Paired Across Two Timepoints}
\usage{
paired(
  formula,
  data,
  id,
  na.action,
  subset = NULL,
  strata,
  control = NULL,
  ...
)
}
\arguments{
\item{formula}{an object of class \code{\link{formula}} of the form \code{time ~ var1 + ...}.
See "Details" for more information.}

\item{data}{an optional data frame, list or environment (or object coercible by \code{\link{as.data.frame}} to a data frame)
containing the variables in the model. If not found in data, the variables are taken from \code{environment(formula)},
typically the environment from which the function is called.}

\item{id}{The vector giving IDs to match up data for the same subject across two timepoints.}

\item{na.action}{a function which indicates what should happen when the data contain \code{NA}s.
The default is \code{na.paired("in.both")}. See \code{\link{na.paired}} for more details}

\item{subset}{an optional vector specifying a subset of observations (rows of data) to be used in the results.
Works as vector of logicals or an index.}

\item{strata}{a vector of strata to separate summaries by an additional group.}

\item{control}{control parameters to handle optional settings within \code{paired}.
Two aspects of \code{paired} are controlled with these: test options of RHS variables and x variable summaries.
Arguments for \code{paired.control} can be passed to \code{paired} via the \code{...} argument,
but if a control object and \code{...} arguments are both supplied,
the latter are used. See \code{\link{paired.control}} for more details.}

\item{...}{additional arguments to be passed to internal \code{paired} functions or \code{\link{paired.control}}.}
}
\value{
An object with class \code{c("paired", "tableby", "arsenal_table")}
}
\description{
Summarize one or more variables (x) by a paired time variable (y). Variables
  on the right side of the formula, i.e. independent variables, are summarized by the
  two time points on the left of the formula. Optionally, an appropriate test is performed to test the
  distribution of the independent variables across the time points.
}
\details{
Do note that this function piggybacks off of \code{\link{tableby}} quite heavily, so there is no
\code{summary.paired} function (for instance).

These tests are accepted:
\itemize{
  \item{
    \code{paired.t}: a paired \code{\link[stats:t.test]{t-test}}.
  }
  \item{
    \code{mcnemar}: \link[stats:mcnemar.test]{McNemar's test}.
  }
  \item{
    \code{signed.rank}: a \link[stats:wilcox.test]{signed rank test}.
  }
  \item{
    \code{sign.test}: a sign test.
  }
  \item{
    \code{notest}: no test is performed.
  }
}
}
\seealso{
\code{\link{arsenal_table}}, \code{\link{paired.control}}, \code{\link{tableby}}, \code{\link{formulize}}, \code{\link{selectall}}
}
\author{
Jason Sinnwell, Beth Atkinson, Ryan Lennon, and Ethan Heinzen
}
