# Final Paper for BIOL395
## Complete draft due as a pull request on Monday, December 4th, 2017 before 11:59 pm
## Complete, revised draft due by Thursday, December 14th, 2017 before 11:59 pm

The **goal of this final project** is to have you apply all of the skills you have learned build your skills in R, markdown, scientific writing, and exploratory data analysis to write a report in the style of a scientific manuscript, based on your novel analyses of these data.

You will each be using the dataset you chose and described in your short project proposal.

For this assignment, you will need to create the scripts necessary to download and process your data, which likely will include some bash scripts, R scripts, and then do your writeup in an `Rmd` file. There is a basic template for the structure of the report in the Rmd file provided. You should modify this document as needed, and add code chunks and markdown text to complete the following set of tasks.

This assignment very much builds on everything we have done so far this semester. You will use the skills you have learned to conduct a more in-depth analysis of your chosen dataset. To should plan to write well-researched Introduction, Methods, and Discussion sections, using Google Scholar or some other tool to search the peer-reviewed literature. You are responsible for finding and citing at least **twenty** additional peer-reviewed studies in your analysis report.

It matters less to me what specific aspect of the dataset and study you focus on, and more important that you spend some time digging in to the data and developing and testing some hypotheses of your own about what is going on in your chosen dataset.

Please follow the instructions carefully and read them all before getting started.

The first draft of this final report will be worth 40 points and the final revised draft will be worth 100 points. Combined with the short proposal, these three things (proposal, draft, and final report) will account for 30% of your final grade in the course. Take this assignment seriously and start early!!

The grading breakdown for the final version will be as follows (for draft the point ratios will be the same, just multiplied by 0.4):

* 50 points - The report describes an analysis of your chosen dataset -- the analysis and the report should not just be a set of unrelated figures, but should be a focused inquiry into some particular question or questions you have about the data. It should include appropriate background to motivate the investigation, one or more hypotheses, your quantitative results (including somewhere between 5-10 tables/figures beyond what is included already in the template), and a thorough discussion where you interpret your results. Report text should be: between 4000 and 5000 words (roughly 8-10 pages, not counting code), well organized, free of spelling or grammar errors, and written in proper scientific writing style. You should use the built-in spell check in RStudio (there's a little button with ABC and a check mark near the knit button) to catch any spelling errors.
* 10 points - At least 20 sources properly cited in the text of your report beyond the two examples I've already included. You should add proper BibTeX entries to the `references.bib` file. You can get these BibTeX reference entries from any bibliography management software or from Google Scholar. Then, once you've added each of them and given them a citekey on the first line of each reference, you can use the RStudio add-in from the `citr` package to cite these within your text as you're writing. Then when you knit the document, the sources will be properly formatted for you, and the Sources Cited will be properly populated for you at the end of the report. Doing this will be/was covered in class.
* 10 points - R code in scripts and chunks are appropriately commented and well organized (including with unique names for each chunk).
* 10 points - Appropriate use of git to version control the steps, including adding files and making commits frequently as you work on this assignment, and writing informative and appropriately formatted commit messages. Can't have too many commits, but you can have too few!
* 20 points - Pull Request passes automated checks for file being able to be sucessfully knitted on another machine, as well as having all code style errors fixed. This is an all or nothing set of points, so please make sure your report passes these checks! You can submit your PR early to catch errors. Contact me well before the deadline if you are having trouble with this part of the assignment.

You must submit a complete first draft of your work as a Pull Request to the class organization ('2017-usfca-biol-395') on GitHub by 11:59 pm on Monday, December 4th for full credit. We will also be peer reviewing the reports after they are submitted, as usual. The revised final report will be due by Thursday, December 14th, 2017 before 11:59 pm.

Steps:

1. Fork this repository to your own GitHub account.
1. In a new RStudio session on your laptop (no open files, projects, etc), select "File -> New Project..." from the menu. Then click on "Version Control", then "Git", and then paste the URL from your **forked** repository (the one under your GitHub account, that should include something like YourName/yourid-analysis-report-01-amplicons) into the "Repository URL" field. Then choose where you would like the folder to be on your computer and click "Create Project". This will use `git clone` to download the repository from GitHub and get RStudio set up for you to work on it. This should also properly set up the git remote so that you can push and pull from within RStudio.
1. If you have already started work on the project, move your existing data and files into this repository in the appropriate folders. `data/raw_data` and `output/filtered` are included in the `.gitignore` file because they may have very large files in them that should not go to GitHub.
1. You should include in this final report all of the parts of a standard scientific paper, including at a minimum: Introduction, Methods, Results, Discussion. I have added top-level headers by using a single `#`; if you want to make additional subsection headers you can use `##` or `###`. Each of these sections has some rough guidelines for how long I estimate they should be when completed and other details. As you are working on creating your analyses/tables/figures for amplicon data in particular, you will probably want to make good use of the [DADA2](https://benjjneb.github.io/dada2/tutorial.html) and [phyloseq](https://joey711.github.io/phyloseq/) websites, which include very comprehensive tutorials.
1. Commit the script as you work on it, whenever you make a good chunk of progress. Make sure you write an [appropriate commit message](https://chris.beams.io/posts/git-commit/).
1. After you have finished the analysis, your `Rmd` knits successfully, and you have fixed all errors or warnings (except the 'there is no variable with this name in scope' warnings you see when using `dplyr`, which is a bug that hasn't been fixed by RStudio), be sure to add a commit marking this milestone (and push to GitHub!).
1. Once that's all done, add, commit, and push the rendered `md` file, the folder of images that are generated when you knit, and the `docx` file. These should go back to your fork of the original repository on GitHub. Remember that you can only push what you have committed, so be sure all of your work is committed. Be sure to save your files often, and check the git tab in RStudio as you work.
2. Submit a Pull Request back to the organization repository to submit your assignment. Make sure the Pull Request (PR) has a useful description of the changes you made. 20% of your points this week will be based on your code passing the automated checks on Travis-CI. If you want to check for any style errors while you are working on the code, you can install the 'lintr' package by typing the following at the console:

```r
install.packages("devtools")
devtools::install_github("jimhester/lintr")
```

and then whenever you want to check your code you can run at the R console in RStudio:

```r
lint(filename = "Final_Report.Rmd")
```

**Pro Tip** Save often, commit often, push often! If you have any questions or need clarification of what it is I'd like you to do, please ask me sooner rather than later so you stay on the right track for completing this assignment on time.

**NOTE:** There are some files in this repository you may not have seen before. They are used for automating testing.

##### Infrastructure for Automated Software Testing

- `.travis.yml`: a configuration file for automatically running [continuous integration](https://travis-ci.com) checks when you submit your pull request, to verify reproducibility of all `.Rmd` notebooks in the repo.  If all `.Rmd` notebooks can render successfully and pass linting (or code style and syntax checks), then the "Build Status" badge above will be green (`build success`), otherwise it will be red (`build failure`).
- `.Rbuildignore`: a configuration file telling the build script which files to ignore.
- `DESCRIPTION`: a metadata file for the repository, based on the R package standard. Its main purpose here is as a place to list any additional R packages/libraries needed for any of the `.Rmd` files to run.
- `tests/render_rmds.R`: an R script that is run to execute the above described tests, rendering and linting all `.Rmd` notebooks.
