# NASA Exoplanets

## Overview

Determine if a candidate planet is in fact an Exoplanet or a false positive.

### Purpose

* Use machine learning to analyze the NASA Exoplanets dataset, determine which type of model and algorithm is best for the input dataset and output/results.

* The NASA Exoplanets topic was selected as it was an easy and large dataset to get a hold of, the data is also verified between many countries and scientific communities.

### Data

* The data was sourced directly from the [NASA Exoplanet Archive](https://exoplanetarchive.ipac.caltech.edu/docs/data.html).

* "Planetary Systems Composite Data" was used as the raw data. All columns and rows were downloaded into a csv file. The file contains roughly 300 columns and 33,000 rows, with the first 300 or so rows containing a key/descriptions for the column names. These column key/description rows were removed and the "Cleaned_NASA_Exoplanets.csv" was then uploaded to the repo in the "data" folder.

### Question

How can we use machine learning to automate the process of confirming a planet candidate as a real Exoplanet or as a false positive, and how accurate can we make that algorithm?

### Group Communication

* Slack group chat
* ZOOM meetings

## Machine Learning Model

### Loading Data

See ["initial_data_test.ipynb"](Project Test/initial_data_test.ipynb) file in the "Project Test" folder to view provisional database loaded in, and the input data labels.

### Outline / Plan

Using the provisional database created from selected data from the NASA Exoplanets dataset, the dataset was explored further to determine what needs to be removed/added/kept in order to answer our question.

Moving forward, we plan to create a Supervised Logistic Regression model/algorithm to analyze the NASA Exoplanets dataset to determine which candidate planets are in fact Exoplanets or if they are false positives.

