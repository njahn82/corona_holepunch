# installation from github
library(remotes)
remotes::install_github("karthik/holepunch")
# load library
library(holepunch)
# requirements:
# - files needs to be in a Git repo and pushed to GitHub
# Order od operation according to:
# <https://karthik.github.io/holepunch/articles/getting_started.html#order-of-operation>
# 1. Set up a description files with right metadata and package dependencies
holepunch::write_compendium_description(package = "Corona OA analysis", 
                             description = "Searching Europe PMC for publications about Corona virus (2019-nCoV)") 
# 2. Writes a Dockerfile with an appropriate R + Binder base. You can override this for more complex use cases. 
holepunch::write_dockerfile(maintainer = "Najko")
# 3. Generate a badge that you can copy into your README. Clicking the badge will launch a Binder
holepunch::generate_badge()	
# 4. 	Builds a new Docker image on Binder Hub the first time.
holepunch::build_binder()
