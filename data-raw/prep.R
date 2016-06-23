# This R script download and save datasets used in *Mastering 'Metrics*.

rm(list = ls())

# nhis2009 ----------------------------------------------------------------

if (!file.exists("data-raw/NHIS2009_clean.dta")){
        url = "http://masteringmetrics.com/wp-content/uploads/2015/01/Data.zip"
        fil = tempfile(fileext = ".zip")
        download.file(url, fil)
        unzip(fil, exdir = "data-raw", junkpaths = TRUE)
        list.files("data-raw")
}

haven::read_dta("data-raw/NHIS2009_clean.dta") -> nhis2009
devtools::use_data(nhis2009, overwrite = TRUE)

# rand_hie ----------------------------------------------------------------

if (!file.exists("data-raw/annual_spend.dta")){
        url = "http://masteringmetrics.com/wp-content/uploads/2015/01/Data1.zip"
        fil = tempfile(fileext = ".zip")
        download.file(url, fil)
        unzip(fil, exdir = "data-raw", junkpaths = TRUE)
        list.files("data-raw")
}

haven::read_dta("data-raw/annual_spend.dta") -> rand_hie_annual_spend
devtools::use_data(rand_hie_annual_spend, overwrite = TRUE)

haven::read_dta("data-raw/person_years.dta") -> rand_hie_person_years
devtools::use_data(rand_hie_person_years, overwrite = TRUE)

haven::read_dta("data-raw/rand_initial_sample_2.dta") -> rand_hie_initial_sample
devtools::use_data(rand_hie_initial_sample, overwrite = TRUE)

# mdve --------------------------------------------------------------------

haven::read_dta("http://masteringmetrics.com/wp-content/uploads/2015/02/mdve.dta") -> mdve
devtools::use_data(mdve, overwrite = TRUE)

# rd_mlda -----------------------------------------------------------------

haven::read_dta("http://masteringmetrics.com/wp-content/uploads/2015/01/AEJfigs.dta") -> rd_mlda
devtools::use_data(rd_mlda, overwrite = TRUE)

# banks -------------------------------------------------------------------

url = "http://masteringmetrics.com/wp-content/uploads/2015/02/banks.csv"
fil = "data-raw/banks.csv"
if(!file.exists(fil)) download.file(url, fil)

readr::read_csv(fil) -> banks
devtools::use_data(banks, overwrite = TRUE)

# dd_mlda -----------------------------------------------------------------

haven::read_dta("http://masteringmetrics.com/wp-content/uploads/2015/01/deaths.dta") -> dd_mlda
devtools::use_data(dd_mlda, overwrite = TRUE)

# twins -------------------------------------------------------------------

haven::read_dta("http://dataspace.princeton.edu/jspui/bitstream/88435/dsp01rv042t084/4/pubtwins.dta") -> twins
devtools::use_data(twins, overwrite = TRUE)

# child_labor_law ---------------------------------------------------------

if(!file.exists("data-raw/AA_small.dta")){
        url = "http://masteringmetrics.com/wp-content/uploads/2015/02/AA_small.dta_.zip"
        fil = tempfile(fileext = ".zip")
        download.file(url, fil)
        unzip(fil, exdir = "data-raw", junkpaths = TRUE)
        list.files("data-raw")
}

haven::read_dta("data-raw/AA_small.dta") -> child_labor_law
devtools::use_data(child_labor_law, overwrite = TRUE)

# qob, or ak91 ------------------------------------------------------------

haven::read_dta("http://masteringmetrics.com/wp-content/uploads/2015/02/ak91.dta") -> qob
devtools::use_data(qob, overwrite = TRUE)

# hs_diploma --------------------------------------------------------------

haven::read_dta("http://masteringmetrics.com/wp-content/uploads/2015/02/clark_martorell_cellmeans.dta") -> hs_diploma
devtools::use_data(hs_diploma, overwrite = TRUE)
