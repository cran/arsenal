## ----include = FALSE-----------------------------------------------------
knitr::opts_chunk$set(eval = FALSE)

## ------------------------------------------------------------------------
#  library(arsenal)
#  data(mockstudy)
#  tmpdir <- tempdir()

## ------------------------------------------------------------------------
#  mylabels <- list(sex = "SEX", age ="Age, yrs")
#  tab1 <- tableby(arm ~ sex + age, data=mockstudy)
#  
#  write2html(tab1, paste0(tmpdir, "/test.tableby.html"), quiet = TRUE,
#             title = "My test table",      # passed to summary.tableby
#             labelTranslations = mylabels, # passed to summary.tableby
#             total = FALSE                 # passed to summary.tableby
#             )

## ------------------------------------------------------------------------
#  tab2 <- modelsum(alk.phos ~ arm + ps + hgb, adjust= ~ age + sex, family = "gaussian", data = mockstudy)
#  
#  write2pdf(tab2, paste0(tmpdir, "/test.modelsum.pdf"), quiet = TRUE,
#            title = "My test table", # passed to summary.modelsum
#            show.intercept = FALSE,  # passed to summary.modelsum
#            digits = 5               # passed to summary.modelsum
#            )

## ------------------------------------------------------------------------
#  tab3 <- freqlist(table(mockstudy[, c("arm", "sex", "mdquality.s")], useNA = "ifany"), groupBy = c("arm", "sex"))
#  
#  write2word(tab3, paste0(tmpdir, "/test.freqlist.doc"), quiet = TRUE,
#             single = FALSE # passed to summary.freqlist
#             )

## ------------------------------------------------------------------------
#  write2html(knitr::kable(head(mockstudy)), paste0(tmpdir, "/test.kable.html"), quiet = TRUE)

## ------------------------------------------------------------------------
#  write2pdf(xtable::xtable(head(mockstudy), caption = "My xtable"), paste0(tmpdir, "/test.xtable.pdf"), quiet = TRUE,
#            comment = FALSE, # passed to print.xtable to turn off the default message about xtable version
#            include.rownames = FALSE, # passed to print.xtable
#            caption.placement = "top" # passed to print.xtable
#            )

## ------------------------------------------------------------------------
#  write2html(xtable::xtable(head(mockstudy), caption = "My xtable"), paste0(tmpdir, "/test.xtable.html"), quiet = TRUE,
#             type = "html",            # passed to print.xtable
#             comment = FALSE, # passed to print.xtable to turn off the default message about xtable version
#             include.rownames = FALSE, # passed to print.xtable
#             caption.placement = "top" # passed to print.xtable
#             )

## ------------------------------------------------------------------------
#  write2word(pander::pander_return(head(mockstudy)), file = paste0(tmpdir, "/test.pander.doc"), quiet = TRUE)

## ------------------------------------------------------------------------
#  write2html(knitr::kable(head(mockstudy)), paste0(tmpdir, "/test.kable.quiet.html"),
#             quiet = TRUE # passed to rmarkdown::render
#             )

## ------------------------------------------------------------------------
#  write2html(knitr::kable(head(mockstudy)), paste0(tmpdir, "/test.kable.keep.md.html"),
#             quiet = TRUE, # passed to rmarkdown::render
#             keep.md = TRUE
#             )

## ------------------------------------------------------------------------
#  write2html(knitr::kable(head(mockstudy)), paste0(tmpdir, "/test.kable.theme.html"),
#             quiet = TRUE,  # passed to rmarkdown::render
#             theme = "yeti" # passed to rmarkdown::html_document
#             )

## ------------------------------------------------------------------------
#  write2(knitr::kable(head(mockstudy[, 1:4])), paste0(tmpdir, "/test.kable.rtf"),
#         quiet = TRUE,  # passed to rmarkdown::render
#         output_format = rmarkdown::rtf_document
#         )

