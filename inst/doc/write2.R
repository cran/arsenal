## ----include = FALSE-----------------------------------------------------
knitr::opts_chunk$set(eval = FALSE, message = FALSE)

## ------------------------------------------------------------------------
#  library(arsenal)
#  library(magrittr)
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
#  mockstudy[, c("arm", "sex", "mdquality.s")] %>%
#    table(useNA = "ifany") %>%
#    freqlist(groupBy = c("arm", "sex")) %>%
#    write2word(paste0(tmpdir, "/test.freqlist.doc"), quiet = TRUE,
#               single = FALSE # passed to summary.freqlist
#               )

## ------------------------------------------------------------------------
#  mockstudy[, c("arm", "sex", "mdquality.s")] %>%
#    table(useNA = "ifany") %>%
#    freqlist(groupBy = c("arm", "sex")) %>%
#    write2word(paste0(tmpdir, "/test.freqlist.doc"), quiet = TRUE,
#               single = FALSE,              # passed to summary.freqlist
#               caption = "My cool caption", # passed to knitr::kable
#               format = "pandoc"            # or any other format, passed to knitr::kable
#               )

## ------------------------------------------------------------------------
#  mockstudy %>%
#    head() %>%
#    knitr::kable() %>%
#    write2html(paste0(tmpdir, "/test.kable.html"), quiet = TRUE)

## ------------------------------------------------------------------------
#  mockstudy %>%
#    head() %>%
#    xtable::xtable(caption = "My xtable") %>%
#    write2pdf(paste0(tmpdir, "/test.xtable.pdf"), quiet = TRUE,
#              comment = FALSE, # passed to print.xtable to turn off the default message about xtable version
#              include.rownames = FALSE, # passed to print.xtable
#              caption.placement = "top" # passed to print.xtable
#              )

## ------------------------------------------------------------------------
#  mockstudy %>%
#    head() %>%
#    xtable::xtable(caption = "My xtable") %>%
#    write2html(paste0(tmpdir, "/test.xtable.html"), quiet = TRUE,
#               type = "html",            # passed to print.xtable
#               comment = FALSE, # passed to print.xtable to turn off the default message about xtable version
#               include.rownames = FALSE, # passed to print.xtable
#               caption.placement = "top" # passed to print.xtable
#               )

## ------------------------------------------------------------------------
#  write2word(pander::pander_return(head(mockstudy)), file = paste0(tmpdir, "/test.pander.doc"), quiet = TRUE)

## ------------------------------------------------------------------------
#  mylist <- list(tableby(sex ~ age, data = mockstudy),
#                 freqlist(table(mockstudy[, c("sex", "arm")])),
#                 knitr::kable(head(mockstudy)))
#  
#  write2pdf(mylist, paste0(tmpdir, "/test.mylist.pdf"), quiet = TRUE)
#  

## ------------------------------------------------------------------------
#  mylist2 <- list("# Header 1",
#                  "This is a small paragraph introducting tableby.",
#                  tableby(sex ~ age, data = mockstudy),
#                  "<hr>",
#                  "# Header 2",
#                  "<font color='red'>I can change color of my text!</font>")
#  write2html(mylist2, paste0(tmpdir, "/test.mylist2.html"), quiet = TRUE)

## ------------------------------------------------------------------------
#  write2pdf(list(mylist2, mylist), paste0(tmpdir, "/test.mylists.pdf"), quiet = TRUE)

## ------------------------------------------------------------------------
#  lm(age ~ sex, data = mockstudy) %>%
#    summary() %>%
#    write2pdf(paste0(tmpdir, "/test.lm.pdf"), quiet = TRUE)

## ------------------------------------------------------------------------
#  tab4 <- tableby(arm ~ sex + age, data=mockstudy)
#  write2html(verbatim(tab4), paste0(tmpdir, "/test.print.tableby.html"), quiet = TRUE)

## ------------------------------------------------------------------------
#  chr <- paste0("MyVector", 1:10)
#  write2pdf(verbatim(chr), paste0(tmpdir, "/test.character.pdf"), quiet = TRUE)

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
#  write2html(knitr::kable(head(mockstudy)), paste0(tmpdir, "/test.kable.dont.render.html"),
#             render. = FALSE
#             )

## ------------------------------------------------------------------------
#  mylist2 <- list("# Header 1",
#                  "This is a small paragraph introducting tableby.",
#                  tableby(sex ~ age, data = mockstudy),
#                  "<hr>",
#                  "# Header 2",
#                  "<font color='red'>I can change color of my text!</font>")
#  write2html(mylist2, paste0(tmpdir, "/test.mylist2.html"), quiet = TRUE)

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

