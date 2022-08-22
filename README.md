# NASA Exoplanets

## Overview

Determine if a candidate planet is in fact an Exoplanet or a false positive.

### Purpose

* Use machine learning to analyze the NASA Exoplanets dataset, determine which type of model and algorithm is best for the input dataset and output/results.

* The NASA Exoplanets topic was selected as it was an easy and large dataset to get a hold of, the data is also verified between many countries and scientific communities.

## Data

* The data was sourced directly from the [NASA Exoplanet Archive](https://exoplanetarchive.ipac.caltech.edu/docs/data.html).


#### Mockup Model

* "Planetary Systems Composite Data" was used as the raw data. All columns and rows were downloaded into a csv file. The file contains roughly 300 columns and 33,000 rows, with the first 300 or so rows containing a key/descriptions for the column names. These column key/description rows were removed and the ["Cleaned_NASA_Exoplanets.csv"](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/resources/data/cleaned-input-data/Cleaned_NASA_Exoplanets.csv) was then uploaded to the repo in the "data" folder.

#### Project Model

* "KOI Table (Cumulative list)" was used as the raw data as ["KEPLER_DATA.csv"](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/resources/data/raw-nasa-data/KEPLER_DATASET.csv). All columns and rows were downloaded into a csv file. The file contains roughly 150 columns and 9,600 rows, with the first 150 or so rows containing a key/descriptions for the column names. These column key/description rows were removed and the ["CLEAN_KEPLER_DATA.csv"](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/resources/data/cleaned-input-data/CLEAN_KEPLER_DATASET.csv) was then uploaded to the repo in the "data" folder.

## Question

How can we use machine learning to automate the process of confirming a planet candidate as a real Exoplanet or as a false positive, and how accurate can we make that algorithm?

## Machine Learning Model

### Loading Data

#### Mockup Model

See ["initial_data_test.ipynb"](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/project-code-files/initial_data_test.ipynb) file in the "Project Test" folder to view provisional database loaded in, and the input data labels.

#### Project Model

The model used for the project moving forward is ["kepler-data-model.ipynb"](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/project-code-files/kepler-data-model.ipynb) located in the "Project-Test" folder.

### Outline / Plan

Using the provisional database created from selected data from the NASA Exoplanets dataset, the dataset was explored further to determine what needs to be removed/added/kept in order to answer our question.

Moving forward, we plan to create a Supervised Logistic Regression model/algorithm to analyze the NASA Exoplanets dataset to determine which candidate planets are in fact Exoplanets or if they are false positives.

### Data Preprocessing

* We decided to use Keplar's main dataset as it included planets of three category types: confirmed,
false postive, and candidates. With these specific categories, we look to train a model off of the verified findings (Confirmed Planets and the False Positves), and establish a test to help better predict potential canidates possibilites of becoming confirmed. 

### Feature Selection

* For this test, we looked to evaluate nine key readings, that we saw as most fit from the Keplar Dataset, for each planet. These readings include: how many planets belong to the solar system of the planet in question, the planet's radius, equilibrium temperature and orbit time, the stars radius, temperature, mass and surface gravity and the ratio in size between the star and planet.

### Train/Test Split

* With the nine key readings and the 'status' of the planet, we split our data into two seperate dataframes. The verified dataframe included planets with a status of FALSE POSITIVE (0) and CONFIRMED (1), the unverified dataframe include the planets that have a status of CANDIDATE (2). We conducted the split on the Verified dataframe by droping the status of the planets and started the training and testing through using 33% of the dataframe. We ran a binomial logistic regression from our sets as we ran the test with two possible status. 

### Model Limits/Benefits

* Some advanatges to running a logistic regression with the data we are using, is that it allows for easy interpretation as well as higher effeciency to train. There are some draw backs to this, as this model will assume linearity between our independent and dependent variables and this may not always be the case in the data we look to evaluate.

## Database Integration

### Outline / Plan

Team members present a provisional database that stands in for the final database and accomplishes the following:

* Sample data that mimics the expected final database structure or schema.

ERD:

![ERD](https://raw.githubusercontent.com/psidhu42/Group-3-NASA-Exoplanets/Kris/resources/images/ERD.png)


PySpark Dataframes:

![PySpark_DataFrames](https://raw.githubusercontent.com/psidhu42/Group-3-NASA-Exoplanets/Kris/resources/images/PySpark_DataFrames.png)


* Joining unverified_planets and verified_planets tables into keplar_planets table in PGAdmin.

![SQL_Join](https://raw.githubusercontent.com/psidhu42/Group-3-NASA-Exoplanets/Kris/resources/images/SQL_Join.png)


* Machine learning module is connected to the provisional database and accessing the keplar_planets table.

![Database_Connection](https://raw.githubusercontent.com/psidhu42/Group-3-NASA-Exoplanets/Kris/resources/images/Database_Connection.png)


## Dashboard

NASA Dashboard

[Dashboard Link](https://public.tableau.com/app/profile/zana.brown/viz/NASAExoplanets_16605263877560/Dashboard1?publish=yes)

![NASA_Dashboard](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/resources/images/NASADashboard.png)

Pie Chart

![Pie_Chart](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/resources/images/PieStory.png)

Mass / Outcome

![MassStory](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/resources/images/MassStory.png)

Gravity vs Mass vs Outcome

![GravMassStory](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/resources/images/GravMassStory.png)

### Presentation Slides

The powerpoint slides can be found at ["NASAExoplanets.pptx"](https://github.com/psidhu42/Group-3-NASA-Exoplanets/blob/main/resources/presentation-slides/NASAExoplanetsUpdated.pptx)

Google Slides [Link](https://docs.google.com/presentation/d/1-ZsL2HIXOKwcvWKq68CT_qUibRD5obnorcnUabokGMQ/edit#slide=id.p)