# Project_ETL

## Team
- Daniel Jones and Will Copeland

## Project Proposal
- The proposal of this project is to explore neuroscience articles at the frontier of the field and investigate whether or not there is a connection between advancement of the field and mental health policy

## Finding Data
  - Project must use 2 or more sources of data

## Data Cleanup & Analysis
  - Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:
      - The sources of data that you will extract from
      - The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc)
      - The type of final production database to load the data into (relational or non-relational)
      - The final tables or collections that will be used in the production database


# Project Report
  - Submit a final technical report with the above information and steps required to reproduce your ETL process

## Step 1: Identify data sources
  1. [Frontiers in Neuroscience Journal Articles](https://www.kaggle.com/markoarezina/frontiers-in-neuroscience-articles)
      - Articles and metadata from the Frontiers in Neuroscience journal series
      - This data set can be downloaded as a csv file from Kaggle
      - The file from Kaggle is 238 MB, as such, this file was saved in the folder "data_large", which was marked in .gitignore
  2. [World Health Organization: Mental health governance Data by country](http://apps.who.int/gho/data/node.main.MHPOLFIN?lang=en)
  3. [Scimago Journal and Country Rank](https://www.scimagojr.com/journalrank.php?category=2801})


## Step 2: Extract: 
   - Sources of data that were extract from
      - all data was downloaded in the form of CSV files
      - see Step 1 for data sources


## Step 3: Transform:
  - What data cleaning or transformation was required
  - Type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc)
      - all data was downloaded in the form of CSV files
  
### Neuroscience Data
  - reviewed data columns
  - reviewed value counts of columns
     - citation_journal_title
     - citation_date
     - citation_author_institution
  - identified columns of interest
     - title
     - citation_author
     - citation_date
     - citation_journal_title
     - description
     - keywords
  - Identified string lengths for the following fields to identify the character lengths for the postgresql database
     - title
     - citation_author
     - citation_journal_title
     - description
     - keywords

### Mental Data:
  - reviewed data columns
  - reviewed value counts of columns
     - Stand-alone law for mental health
     - Stand-alone policy or plan for mental health
     - Publication year of the policy or plan (latest revision)
  - reviewed describe data of column
     - Government expenditures on mental hospitals as a percentage of total government expenditures on mental health (%)
  - decided to keep all columns
  - made copy of mental df as mental df 2
    - to enable transformation/cleaning of data and have an original version of data
  - split the country and year values from the column “"Country; Year"
    - And created separate columns for country and year
  - replaced NaN values with zero where applicable
  - created new columns with names appropriate for postgresql database/tables created
  - for column “Year the law was enacted (latest revision)”
    - This column is seen as an integer column for year
    - There were 2 values of “No” and 1 value of “Yes”
    - The “No” and “Yes” values were changed to 0 because the purpose of this column was for an integer year value
	This data anomaly can be reviewed later to determine another approach
  - for column “"Publication year of the policy or plan (latest revision)”
    - Created a new column based on the above column for naming that is more appropriate for postgresql database/tables and converted to integer value
  - dropped the original column names from the mental df 2 to allow push to postgresql
  - identified string lengths for the following fields to identify the character lengths for the postgresql database
      - country
      - stand alone law mental health
      - stand alone policy plan mental health

### Journal Data
  - Only needed to clean titles for more appropriate naming for postgresql database/tables
  - Identified string lengths for the following fields to identify the character lengths for the postgresql database
     - title
     - country


## Step 4: Create database | Load:
  - The type of final production database to load the data into (relational or non-relational)
      - Loaded the data into postgresql (relational) database
  - The final tables or collections that will be used in the production database
      - neuroscience
      - mental_health_pol
      - journal_data
  - Final database, tables/collections, and why this was chosen
      - database named Proj_ETL
      - We chose postgresql to learn more about how to use postgresql with python
