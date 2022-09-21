# Connecting to Git and checking credentials
# gitcreds::gitcreds_set()

library("workflowr")

# wflow_git_config(user.name = "zuzannazagrodzka", user.email = "zuzanna.zagrodzka@gmail.com", overwrite=TRUE)

# Starting my first ever workflowr project
# wflow_start("myproject")

# Two folders below I can't detele:
# analysis/: This directory contains all the source R Markdown files for implementing the data analyses for your project.
# docs/: This directory contains all the HTML files for your website.
# Other

# data/: This directory is for raw data files.

# code/: This directory is for code and scripts that might not be appropriate as R Markdown notebooks (e.g. for pre-processing the data, or for long-running code).

# output/: This directory is for processed data files and other outputs generated from the code and data. For example, scripts in code that pre-process raw data files from data/ should save the processed data files in output/.

# Building the website
# wflow_build()
# View the website without buiding it first
wflow_view()
# View the status of the workflowr project
wflow_status()

#  The first argument to wflow_publish() is a character vector of the R Markdown files to publish. The second is a message that will recorded by the version control system Git when it commits (i.e. saves a snapshot of) these files. The more informative the commit message the better (so that future you knows what you were trying to accomplish).

wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/license.Rmd"), "Publish the initial files for myproject")
wflow_status()


# Deploy the website


# Next you need to tell your local Git repository about this new GitHub repository. Run the wflow_remotes() command below in the R console, replacing “myname” with your GitHub username:
# It can be run only once for the project
wflow_git_remote("origin", user = "zuzannazagrodzka", repo = "workflowr-policy-landscape", action = "set_url")
# ?wflow_git_remote()


wflow_git_push(dry_run = TRUE) # Using dry_run = TRUE previews what the function will do. Remove this argument to actually push to GitHub.
wflow_git_push() # This doesn't work


# Add a new analysis file
wflow_open("./analysis/Data_prep_Topic_modeling_copy.Rmd")
wflow_open("./analysis/test.Rmd")
