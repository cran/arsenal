# The `arsenal` Package

The goal of `library(arsenal)` is to make statistical reporting easy. It includes many functions which the useR will find useful to have
in his/her "arsenal" of functions. There are, at this time, 3 main functions, documented below. Each of these functions is
motivated by a local SAS macro of similar functionality.

## The `tableby()` Function

`tableby()` is a function to easily summarize a set of independent variables by a categorical variable.
Optionally, an appropriate test is performed to test the distribution of the independent variables across
the levels of the categorical variable. Options for this function are easily controled using `tableby.control()`.

The `tableby()` output is easily knitted in an Rmarkdown document or displayed in the command line using the `summary()` function.
Other S3 methods are implemented for objects of class `"tableby"`, including `print()`, `[`, `as.data.frame()`, and `merge()`.

## The `modelsum()` Function

`modelsum()` is a function to fit and summarize models for each independent variable with a response variable,
with options to adjust by variables for each model. Options for this function are easily controled using `modelsum.control()`.

The `modelsum` output is easily knitted in an Rmarkdown document or displayed in the command line using the `summary()` function.
Other S3 methods are implemented for objects of class `"modelsum"`, including `print()` and `as.data.frame()`.

## The `freqlist()` Function

`freqlist()` is a function to approximate the output from SAS's `PROC FREQ` procedure when using the `/list` option of the `TABLE` statement.

The `freqlist()` output is easily knitted in an Rmarkdown document or displayed in the command line using the `summary()` function.
Other S3 methods are implemented for objects of class `"freqlist"`, including `print()` and `as.data.frame()`.

## Other Notable Functions

* `write2word()`, `write2pdf()`, and `write2html()` are functions to output an object into a document, much like SAS's `ODS` procedure.
  They're a shortcut for "I just want to output this one table but I don't want to open an Rmarkdown script, ugh..."
  The S3 method behind them is `write2()`.
  
* `formulize()` is a shortcut to collapse variable names into a formula.

* `mdy.Date()` and `Date.mdy()` convert numeric dates for month, day, and year to Date object, and vice versa.
