## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, tidy.opts=list(width.cutoff=80), tidy=TRUE,  comment=NA)
options(width=80, max.print=1000)

## ----message = FALSE----------------------------------------------------------
require(arsenal)

## ----loading.data-------------------------------------------------------------
# load the data
data(mockstudy)

# examine the data
str(mockstudy)

# retain NAs when creating the table using the useNA argument
tab.ex <- table(mockstudy[, c("arm", "sex", "mdquality.s")], useNA="ifany")

## ----console.output-----------------------------------------------------------
noby <- freqlist(tab.ex)

str(noby)

# view the data frame portion of freqlist output
noby[["freqlist"]] ## or use as.data.frame(noby)

## ---- results = 'asis'--------------------------------------------------------
summary(noby)

## ---- results = 'asis'--------------------------------------------------------
summary(noby, caption="Basic freqlist output")

## -----------------------------------------------------------------------------
head(as.data.frame(noby))

## ----labelTranslations, results = 'asis'--------------------------------------

withnames <- freqlist(tab.ex, labelTranslations = c("Treatment Arm","Gender","LASA QOL"), digits = 0)

summary(withnames)


## ----sparse, results = 'asis'-------------------------------------------------
# we create a second table example to showcase the sparse argument
tab.sparse <- table(mockstudy[, c("race","sex","arm")])

nobysparse <- freqlist(tab.sparse, sparse = TRUE, digits=1)
summary(nobysparse)

## ----na.options, results = 'asis'---------------------------------------------
summary(freqlist(tab.ex, na.options="include"))
summary(freqlist(tab.ex, na.options="showexclude"))
summary(freqlist(tab.ex, na.options="remove"))

## ----freq.counts, results='asis'----------------------------------------------
withby <- freqlist(tab.ex, groupBy = c("arm","sex"))
summary(withby)

#using the single = TRUE argument will collapse results into a single table for printing
summary(withby, single = TRUE)


## ----changelabs, results = 'asis'---------------------------------------------
labels(noby) <- c("Arm", "Sex", "OtherThing")
summary(noby)

## ---- results = 'asis'--------------------------------------------------------
summary(noby, labelTranslations = c("Hi there", "What up", "Bye"))

## ----xtable.setup-------------------------------------------------------------
require(xtable)

# set up custom function for xtable text
italic <- function(x){
paste0('<i>', x, '</i>')
}


## ----printxtable, results='asis'----------------------------------------------
xftbl <- xtable(noby[["freqlist"]], 
  caption = "xtable formatted output of freqlist data frame", align="|r|r|r|r|c|c|c|r|")

# change the column names
names(xftbl)[1:3] <- c("Arm", "Gender", "LASA QOL")

print(xftbl, sanitize.colnames.function = italic, include.rownames = FALSE, type = "html", comment = FALSE)

## -----------------------------------------------------------------------------
# base table default removes NAs
tab.d1 <- base::table(mockstudy[, c("arm", "sex", "mdquality.s")], useNA="ifany")
tab.d1

## -----------------------------------------------------------------------------
# without specifying addNA
tab.d2 <- xtabs(formula = ~ arm + sex + mdquality.s, data = mockstudy)
tab.d2

# now with addNA
tab.d3 <- xtabs(~ arm + sex + addNA(mdquality.s), data = mockstudy)
tab.d3


## -----------------------------------------------------------------------------
# providing variables separately (as vectors) drops column names
tab.d4 <- base::table(mockstudy[, "arm"], mockstudy[, "sex"], mockstudy[, "mdquality.s"])
tab.d4

## -----------------------------------------------------------------------------
# add the column name labels back using dnn option in base::table
tab.dnn <- base::table(mockstudy[, "arm"], mockstudy[, "sex"], mockstudy[, "mdquality.s"], dnn=c("Amy", "Susan", "George"))
tab.dnn

