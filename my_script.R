library(europepmc)
my_pubs <- europepmc::epmc_search("2019-nCoV", limit = 1000)
table(my_pubs$isOpenAccess, my_pubs$pubYear)
