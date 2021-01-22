#!/bin/bash

# connect os psql via command

psql -h gis5577 -U glanc007 -c "\copy mn_census_tracts_2000 from \
  '/home/tomg/git/GIS5577_week1/MN_census_tracts.csv' with header CSV" glanc007
