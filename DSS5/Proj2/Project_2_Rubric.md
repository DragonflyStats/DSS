
## Document Layout

#### Language

Your document should be written in English.

#### Title

Your document should have a title that briefly summarizes your data analysis

#### Synopsis

* Immediately after the title, there should be a synopsis which describes and summarizes your analysis in at most 10 complete sentences.

* There should be a section titled Data Processing which describes (in words and code) how the data were loaded into R and processed for analysis. In particular, your analysis must start from the raw CSV file containing the data. You cannot do any preprocessing outside the document. If preprocessing is time-consuming you may consider using the 
cache = TRUE
cache = TRUE option for certain code chunks.

* There should be a section titled Results in which your results are presented.

* You may have other sections in your analysis, but Data Processing and Results are required.

* The analysis document must have at least one figure containing a plot.

* Your analysis must have no more than three figures. Figures may have multiple plots in them (i.e. panel plots), but there cannot be more than three figures total.

* You must show all your code for the work in your analysis document. This may make the document a bit verbose, but that is okay. In general, you should ensure that 
<tt>echo = TRUE</tt> for every code chunk (this is the default setting in knitr).

----------------------------------------------------------
### Publishing Your Analysis

For this assignment you will need to publish your analysis on RPubs.com. If you do not already have an account, then you will have to create a new account. After you have completed writing your analysis in RStudio, you can publish it to RPubs by doing the following:

* In RStudio, make sure your R Markdown document (
.Rmd
.Rmd) document is loaded in the editor

* Click the ***Knit HTML*** button in the doc toolbar to preview your document.

* In the preview window, click the 
Publish
Publish button.

* Once your document is published to RPubs, you should get a unique URL to that document. Make a note of this URL as you will need it to submit your assignment.

* NOTE: If you are having trouble connecting with RPubs due to proxy-related or other issues, you can upload your final analysis document file as a PDF to Coursera instead.

--------------------------------------------
### Submitting Your Assignment
 
In order to submit this assignment, you must copy the RPubs URL for your completed data analysis document in to the peer assessment question.

If you choose to submit as a PDF, please insert an obvious placeholder URL (e.g. https://google.com) in order to allow submission.
