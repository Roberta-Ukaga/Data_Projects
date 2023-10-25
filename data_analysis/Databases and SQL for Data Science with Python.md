<center>
    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/images/SN_web_lightmode.png" width="300" alt="cognitiveclass.ai logo">
</center>

<h1 align=center><font size = 5>Assignment: Notebook for Peer Assignment</font></h1>


# Introduction

Using this Python notebook you will:

1.  Understand three Chicago datasets
2.  Load the three datasets into three tables in a SQLIte database
3.  Execute SQL queries to answer assignment questions


## Understand the datasets

To complete the assignment problems in this notebook you will be using three datasets that are available on the city of Chicago's Data Portal:

1.  <a href="https://data.cityofchicago.org/Health-Human-Services/Census-Data-Selected-socioeconomic-indicators-in-C/kn9c-c2s2?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01">Socioeconomic Indicators in Chicago</a>
2.  <a href="https://data.cityofchicago.org/Education/Chicago-Public-Schools-Progress-Report-Cards-2011-/9xs2-f89t?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01">Chicago Public Schools</a>
3.  <a href="https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01">Chicago Crime Data</a>

### 1. Socioeconomic Indicators in Chicago

This dataset contains a selection of six socioeconomic indicators of public health significance and a “hardship index,” for each Chicago community area, for the years 2008 – 2012.

A detailed description of this dataset and the original dataset can be obtained from the Chicago Data Portal at:
[https://data.cityofchicago.org/Health-Human-Services/Census-Data-Selected-socioeconomic-indicators-in-C/kn9c-c2s2](https://data.cityofchicago.org/Health-Human-Services/Census-Data-Selected-socioeconomic-indicators-in-C/kn9c-c2s2?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01&cm_mmc=Email_Newsletter-_-Developer_Ed%2BTech-_-WW_WW-_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork-20127838&cm_mmca1=000026UJ&cm_mmca2=10006555&cm_mmca3=M12345678&cvosrc=email.Newsletter.M12345678&cvo_campaign=000026UJ)

### 2. Chicago Public Schools

This dataset shows all school level performance data used to create CPS School Report Cards for the 2011-2012 school year. This dataset is provided by the city of Chicago's Data Portal.

A detailed description of this dataset and the original dataset can be obtained from the Chicago Data Portal at:
[https://data.cityofchicago.org/Education/Chicago-Public-Schools-Progress-Report-Cards-2011-/9xs2-f89t](https://data.cityofchicago.org/Education/Chicago-Public-Schools-Progress-Report-Cards-2011-/9xs2-f89t?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01&cm_mmc=Email_Newsletter-_-Developer_Ed%2BTech-_-WW_WW-_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork-20127838&cm_mmca1=000026UJ&cm_mmca2=10006555&cm_mmca3=M12345678&cvosrc=email.Newsletter.M12345678&cvo_campaign=000026UJ)

### 3. Chicago Crime Data

This dataset reflects reported incidents of crime (with the exception of murders where data exists for each victim) that occurred in the City of Chicago from 2001 to present, minus the most recent seven days.

A detailed description of this dataset and the original dataset can be obtained from the Chicago Data Portal at:
[https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01&cm_mmc=Email_Newsletter-_-Developer_Ed%2BTech-_-WW_WW-_-SkillsNetwork-Courses-IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork-20127838&cm_mmca1=000026UJ&cm_mmca2=10006555&cm_mmca3=M12345678&cvosrc=email.Newsletter.M12345678&cvo_campaign=000026UJ)


### Download the datasets

This assignment requires you to have these three tables populated with a subset of the whole datasets.

In many cases the dataset to be analyzed is available as a .CSV (comma separated values) file, perhaps on the internet. Click on the links below to download and save the datasets (.CSV files):

*   <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCensusData.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01" target="_blank">Chicago Census Data</a>

*   <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoPublicSchools.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01" target="_blank">Chicago Public Schools</a>

*   <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCrimeData.csv?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDeveloperSkillsNetworkDB0201ENSkillsNetwork20127838-2021-01-01" target="_blank">Chicago Crime Data</a>

**NOTE:** Ensure you have downloaded the datasets using the links above instead of directly from the Chicago Data Portal. The versions linked here are subsets of the original datasets and have some of the column names modified to be more database friendly which will make it easier to complete this assignment.


### Store the datasets in database tables

To analyze the data using SQL, it first needs to be loaded into SQLite DB.
We will create three tables in as under:

1.  **CENSUS_DATA**
2.  **CHICAGO_PUBLIC_SCHOOLS**
3.  **CHICAGO_CRIME_DATA**

Let us now load the ipython-sql  extension and establish a connection with the database

* Here you will be loading the csv files into the pandas Dataframe and then loading the data into the above mentioned sqlite tables.

* Next you will be connecting to the sqlite database  **FinalDB**.

Refer to the previous lab for hints .

<a href ="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/Module%205/DB0201EN-Week3-1-4-Analyzing_SQLite.ipynb">Hands-on Lab: Analyzing a real World Data Set</a>






```python
%load_ext sql
```


```python
# %sql ibm_db_sa://my-username:my-password@my-hostname:my-port/my-db-name?security=SSL
%sql ibm_db_sa://fvd66029:xMaCDr6ZSB5STOP6@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb?security=SSL
```




    'Connected: fvd66029@bludb'




```python
!pip install -q pandas==1.1.5
```


```python
import csv, sqlite3

con = sqlite3.connect("FinalDB.db")
cur = con.cursor()
```


```python
%sql sqlite:///FinalDB.db
```




    'Connected: @FinalDB.db'




```python
import pandas
df = pandas.read_csv("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCensusData.csv")
df.to_sql("CENSUS_DATA", con, if_exists='replace', index=False,method="multi")

df = pandas.read_csv("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoCrimeData.csv")
df.to_sql("CHICAGO_CRIME_DATA", con, if_exists='replace', index=False, method="multi")

df = pandas.read_csv("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/FinalModule_Coursera_V5/data/ChicagoPublicSchools.csv")
df.to_sql("CHICAGO_PUBLIC_SCHOOLS", con, if_exists='replace', index=False, method="multi")
```

    /home/jupyterlab/conda/envs/python/lib/python3.7/site-packages/pandas/core/generic.py:2882: UserWarning: The spaces in these column names will not be changed. In pandas versions < 0.14, spaces were converted to underscores.
      both result in 0.1234 being formatted as 0.12.


## Problems

Now write and execute SQL queries to solve assignment problems

### Problem 1

##### Find the total number of crimes recorded in the CRIME table.



```python
%sql select count(*) as TOTAL_CRIMES \
     from CHICAGO_CRIME_DATA
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>TOTAL_CRIMES</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>533</td>
        </tr>
    </tbody>
</table>



### Problem 2

##### List community areas with per capita income less than 11000.



```python
%sql select COMMUNITY_AREA_NAME AS BELOW_11000 from CENSUS_DATA where PER_CAPITA_INCOME < 11000
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>BELOW_11000</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>West Garfield Park</td>
        </tr>
        <tr>
            <td>South Lawndale</td>
        </tr>
        <tr>
            <td>Fuller Park</td>
        </tr>
        <tr>
            <td>Riverdale</td>
        </tr>
    </tbody>
</table>



### Problem 3

##### List all case numbers for crimes  involving minors?(children are not considered minors for the purposes of crime analysis)



```python
%sql select DISTINCT CASE_NUMBER AS CRIMES_INVOLVING_MINORS from CHICAGO_CRIME_DATA \
where DESCRIPTION like '%MINOR%'
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>CRIMES_INVOLVING_MINORS</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>HL266884</td>
        </tr>
        <tr>
            <td>HK238408</td>
        </tr>
    </tbody>
</table>



### Problem 4

##### List all kidnapping crimes involving a child?



```python
%sql SELECT DISTINCT CASE_NUMBER, PRIMARY_TYPE, DATE, DESCRIPTION FROM CHICAGO_CRIME_DATA \
WHERE PRIMARY_TYPE='KIDNAPPING'
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>CASE_NUMBER</th>
            <th>PRIMARY_TYPE</th>
            <th>DATE</th>
            <th>DESCRIPTION</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>HN144152</td>
            <td>KIDNAPPING</td>
            <td>2007-01-26</td>
            <td>CHILD ABDUCTION/STRANGER</td>
        </tr>
    </tbody>
</table>



### Problem 5

##### What kinds of crimes were recorded at schools?



```python
%sql select DISTINCT PRIMARY_TYPE, LOCATION_DESCRIPTION from CHICAGO_CRIME_DATA\
where LOCATION_DESCRIPTION LIKE 'SCHOOL%'
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>PRIMARY_TYPE</th>
            <th>LOCATION_DESCRIPTION</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>BATTERY</td>
            <td>SCHOOL, PUBLIC, GROUNDS</td>
        </tr>
        <tr>
            <td>BATTERY</td>
            <td>SCHOOL, PUBLIC, BUILDING</td>
        </tr>
        <tr>
            <td>CRIMINAL DAMAGE</td>
            <td>SCHOOL, PUBLIC, GROUNDS</td>
        </tr>
        <tr>
            <td>NARCOTICS</td>
            <td>SCHOOL, PUBLIC, GROUNDS</td>
        </tr>
        <tr>
            <td>NARCOTICS</td>
            <td>SCHOOL, PUBLIC, BUILDING</td>
        </tr>
        <tr>
            <td>ASSAULT</td>
            <td>SCHOOL, PUBLIC, GROUNDS</td>
        </tr>
        <tr>
            <td>CRIMINAL TRESPASS</td>
            <td>SCHOOL, PUBLIC, GROUNDS</td>
        </tr>
        <tr>
            <td>PUBLIC PEACE VIOLATION</td>
            <td>SCHOOL, PRIVATE, BUILDING</td>
        </tr>
        <tr>
            <td>PUBLIC PEACE VIOLATION</td>
            <td>SCHOOL, PUBLIC, BUILDING</td>
        </tr>
    </tbody>
</table>



### Problem 6

##### List the average safety score for each type of school.



```python
%sql select ("Elementary, Middle, or High School"), AVG(SAFETY_SCORE) AS AVERAGE from CHICAGO_PUBLIC_SCHOOLS group by ("Elementary, Middle, or High School") order by AVG(SAFETY_SCORE) DESC 
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>Elementary, Middle, or High School</th>
            <th>AVERAGE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>HS</td>
            <td>49.62352941176471</td>
        </tr>
        <tr>
            <td>ES</td>
            <td>49.52038369304557</td>
        </tr>
        <tr>
            <td>MS</td>
            <td>48.0</td>
        </tr>
    </tbody>
</table>



### Problem 7

##### List 5 community areas with highest % of households below poverty line



```python
%sql select COMMUNITY_AREA_NAME, MAX(PERCENT_HOUSEHOLDS_BELOW_POVERTY) as Below_Poverty_Line from CENSUS_DATA group by COMMUNITY_AREA_NAME order by MAX(PERCENT_HOUSEHOLDS_BELOW_POVERTY) DESC LIMIT 5
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
            <th>Below_Poverty_Line</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Riverdale</td>
            <td>56.5</td>
        </tr>
        <tr>
            <td>Fuller Park</td>
            <td>51.2</td>
        </tr>
        <tr>
            <td>Englewood</td>
            <td>46.6</td>
        </tr>
        <tr>
            <td>North Lawndale</td>
            <td>43.1</td>
        </tr>
        <tr>
            <td>East Garfield Park</td>
            <td>42.4</td>
        </tr>
    </tbody>
</table>



### Problem 8

##### Which community area is most crime prone?



```sql
%%sql
SELECT COMMUNITY_AREA_NUMBER ,COUNT(COMMUNITY_AREA_NUMBER) AS FREQUENCY
FROM CHICAGO_CRIME_DATA 
GROUP BY COMMUNITY_AREA_NUMBER
ORDER BY COUNT(COMMUNITY_AREA_NUMBER) DESC
LIMIT 1;
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NUMBER</th>
            <th>FREQUENCY</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>25.0</td>
            <td>43</td>
        </tr>
    </tbody>
</table>



Double-click **here** for a hint

<!--
Query for the 'community area number' that is most crime prone.
-->


### Problem 9

##### Use a sub-query to find the name of the community area with highest hardship index



```python
%sql select COMMUNITY_AREA_NAME, HARDSHIP_INDEX from CENSUS_DATA where HARDSHIP_INDEX = (select MAX(HARDSHIP_INDEX) from CENSUS_DATA)
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
            <th>HARDSHIP_INDEX</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Riverdale</td>
            <td>98.0</td>
        </tr>
    </tbody>
</table>



### Problem 10

##### Use a sub-query to determine the Community Area Name with most number of crimes?



```sql
%%sql
SELECT community_area_name FROM CENSUS_DATA 
WHERE COMMUNITY_AREA_NUMBER = (SELECT COMMUNITY_AREA_NUMBER FROM CHICAGO_CRIME_DATA 
    GROUP BY COMMUNITY_AREA_NUMBER
    ORDER BY COUNT(COMMUNITY_AREA_NUMBER) DESC
    LIMIT 1)
LIMIT 1;
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Austin</td>
        </tr>
    </tbody>
</table>



### ADDITIONAL PROBLEMS

### Problem 11

##### How many Elementary Schools are in the dataset?



```python
%sql select count("Elementary, Middle, or High School") AS EL from CHICAGO_PUBLIC_SCHOOLS WHERE ("Elementary, Middle, or High School") = "ES"
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>EL</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>462</td>
        </tr>
    </tbody>
</table>



### Problem 12

##### Display total number of elementary, middle and high school (each category) from Chicago_public_Schools


```python
%sql select ("Elementary, Middle, or High School"), count("Elementary, Middle, or High School") SCHOOL_COUNT from CHICAGO_PUBLIC_SCHOOLS GROUP BY ("Elementary, Middle, or High School") ORDER BY ("Elementary, Middle, or High School") DESC
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>Elementary, Middle, or High School</th>
            <th>SCHOOL_COUNT</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>MS</td>
            <td>11</td>
        </tr>
        <tr>
            <td>HS</td>
            <td>93</td>
        </tr>
        <tr>
            <td>ES</td>
            <td>462</td>
        </tr>
    </tbody>
</table>



### Problem 13

##### What is the highest Safety Score? 


```python
%sql select max(SAFETY_SCORE) AS MAX_SAFETYSCORE FROM CHICAGO_PUBLIC_SCHOOLS
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>MAX_SAFETYSCORE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>99.0</td>
        </tr>
    </tbody>
</table>



### Problem 14

##### Which schools have the highest Safety Score?

##### (I tried a bunch of queries to figure out what I could get regardless)


```python
%sql select NAME_OF_SCHOOL, MAX(SAFETY_SCORE) from CHICAGO_PUBLIC_SCHOOLS
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>NAME_OF_SCHOOL</th>
            <th>MAX(SAFETY_SCORE)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Abraham Lincoln Elementary School</td>
            <td>99.0</td>
        </tr>
    </tbody>
</table>




```python
%sql select NAME_OF_SCHOOL, SAFETY_SCORE from CHICAGO_PUBLIC_SCHOOLS where \
  SAFETY_SCORE = (select MAX(SAFETY_SCORE) from CHICAGO_PUBLIC_SCHOOLS)
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>NAME_OF_SCHOOL</th>
            <th>SAFETY_SCORE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Abraham Lincoln Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Alexander Graham Bell Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Annie Keller Elementary Gifted Magnet School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Augustus H Burley Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Edgar Allan Poe Elementary Classical School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Edgebrook Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Ellen Mitchell Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>James E McDade Elementary Classical School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>James G Blaine Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>LaSalle Elementary Language Academy</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Mary E Courtenay Elementary Language Arts Center</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Northside College Preparatory High School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Northside Learning Center High School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Norwood Park Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Oriole Park Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Sauganash Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Stephen Decatur Classical Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Talman Elementary School</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>Wildwood Elementary School</td>
            <td>99.0</td>
        </tr>
    </tbody>
</table>




```python
%sql select NAME_OF_SCHOOL from CHICAGO_PUBLIC_SCHOOLS where SAFETY_SCORE = (select max(SAFETY_SCORE) from CHICAGO_PUBLIC_SCHOOLS)
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>NAME_OF_SCHOOL</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Abraham Lincoln Elementary School</td>
        </tr>
        <tr>
            <td>Alexander Graham Bell Elementary School</td>
        </tr>
        <tr>
            <td>Annie Keller Elementary Gifted Magnet School</td>
        </tr>
        <tr>
            <td>Augustus H Burley Elementary School</td>
        </tr>
        <tr>
            <td>Edgar Allan Poe Elementary Classical School</td>
        </tr>
        <tr>
            <td>Edgebrook Elementary School</td>
        </tr>
        <tr>
            <td>Ellen Mitchell Elementary School</td>
        </tr>
        <tr>
            <td>James E McDade Elementary Classical School</td>
        </tr>
        <tr>
            <td>James G Blaine Elementary School</td>
        </tr>
        <tr>
            <td>LaSalle Elementary Language Academy</td>
        </tr>
        <tr>
            <td>Mary E Courtenay Elementary Language Arts Center</td>
        </tr>
        <tr>
            <td>Northside College Preparatory High School</td>
        </tr>
        <tr>
            <td>Northside Learning Center High School</td>
        </tr>
        <tr>
            <td>Norwood Park Elementary School</td>
        </tr>
        <tr>
            <td>Oriole Park Elementary School</td>
        </tr>
        <tr>
            <td>Sauganash Elementary School</td>
        </tr>
        <tr>
            <td>Stephen Decatur Classical Elementary School</td>
        </tr>
        <tr>
            <td>Talman Elementary School</td>
        </tr>
        <tr>
            <td>Wildwood Elementary School</td>
        </tr>
    </tbody>
</table>




```python
%sql select ("Elementary, Middle, or High School"), MAX(SAFETY_SCORE) from CHICAGO_PUBLIC_SCHOOLS GROUP BY ("Elementary, Middle, or High School") ORDER BY ("Elementary, Middle, or High School") ASC
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>Elementary, Middle, or High School</th>
            <th>MAX(SAFETY_SCORE)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>ES</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>HS</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>MS</td>
            <td>66.0</td>
        </tr>
    </tbody>
</table>




```python
%sql select DISTINCT("Elementary, Middle, or High School"), SAFETY_SCORE from CHICAGO_PUBLIC_SCHOOLS where \
  SAFETY_SCORE = (select MAX(SAFETY_SCORE) from CHICAGO_PUBLIC_SCHOOLS)
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>Elementary, Middle, or High School</th>
            <th>SAFETY_SCORE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>ES</td>
            <td>99.0</td>
        </tr>
        <tr>
            <td>HS</td>
            <td>99.0</td>
        </tr>
    </tbody>
</table>



### Problem 15

##### Remove the '%' sign for Average Student Attendance column.


```python
%sql SELECT Name_of_School, REPLACE(Average_Student_Attendance, '%', '') \
     from CHICAGO_PUBLIC_SCHOOLS \
     order by Average_Student_Attendance limit 10
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>NAME_OF_SCHOOL</th>
            <th>REPLACE(Average_Student_Attendance, &#x27;%&#x27;, &#x27;&#x27;)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Velma F Thomas Early Childhood Center</td>
            <td>None</td>
        </tr>
        <tr>
            <td>Richard T Crane Technical Preparatory High School</td>
            <td>57.90</td>
        </tr>
        <tr>
            <td>Barbara Vick Early Childhood &amp; Family Center</td>
            <td>60.90</td>
        </tr>
        <tr>
            <td>Dyett High School</td>
            <td>62.50</td>
        </tr>
        <tr>
            <td>Wendell Phillips Academy High School</td>
            <td>63.00</td>
        </tr>
        <tr>
            <td>Orr Academy High School</td>
            <td>66.30</td>
        </tr>
        <tr>
            <td>Manley Career Academy High School</td>
            <td>66.80</td>
        </tr>
        <tr>
            <td>Chicago Vocational Career Academy High School</td>
            <td>68.80</td>
        </tr>
        <tr>
            <td>Roberto Clemente Community Academy High School</td>
            <td>69.60</td>
        </tr>
        <tr>
            <td>Austin Polytechnical Academy High School</td>
            <td>70.10</td>
        </tr>
    </tbody>
</table>



### Problem 16

##### Which Schools have Average Student Attendance lower than 70%?


```python
%sql SELECT NAME_OF_SCHOOL, AVERAGE_STUDENT_ATTENDANCE from CHICAGO_PUBLIC_SCHOOLS where AVERAGE_STUDENT_ATTENDANCE < 70 order by AVERAGE_STUDENT_ATTENDANCE
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>NAME_OF_SCHOOL</th>
            <th>AVERAGE_STUDENT_ATTENDANCE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Richard T Crane Technical Preparatory High School</td>
            <td>57.90%</td>
        </tr>
        <tr>
            <td>Barbara Vick Early Childhood &amp; Family Center</td>
            <td>60.90%</td>
        </tr>
        <tr>
            <td>Dyett High School</td>
            <td>62.50%</td>
        </tr>
        <tr>
            <td>Wendell Phillips Academy High School</td>
            <td>63.00%</td>
        </tr>
        <tr>
            <td>Orr Academy High School</td>
            <td>66.30%</td>
        </tr>
        <tr>
            <td>Manley Career Academy High School</td>
            <td>66.80%</td>
        </tr>
        <tr>
            <td>Chicago Vocational Career Academy High School</td>
            <td>68.80%</td>
        </tr>
        <tr>
            <td>Roberto Clemente Community Academy High School</td>
            <td>69.60%</td>
        </tr>
    </tbody>
</table>



### Problem 17

##### Get the total College Enrollment for each Community Area.


```python
%sql select COMMUNITY_AREA_NAME, sum(COLLEGE_ENROLLMENT) AS ENROLLMENT_PER_COMMUNITY from CHICAGO_PUBLIC_SCHOOLS group by COMMUNITY_AREA_NAME
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
            <th>ENROLLMENT_PER_COMMUNITY</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>ALBANY PARK</td>
            <td>6864</td>
        </tr>
        <tr>
            <td>ARCHER HEIGHTS</td>
            <td>4823</td>
        </tr>
        <tr>
            <td>ARMOUR SQUARE</td>
            <td>1458</td>
        </tr>
        <tr>
            <td>ASHBURN</td>
            <td>6483</td>
        </tr>
        <tr>
            <td>AUBURN GRESHAM</td>
            <td>4175</td>
        </tr>
        <tr>
            <td>AUSTIN</td>
            <td>10933</td>
        </tr>
        <tr>
            <td>AVALON PARK</td>
            <td>1522</td>
        </tr>
        <tr>
            <td>AVONDALE</td>
            <td>3640</td>
        </tr>
        <tr>
            <td>BELMONT CRAGIN</td>
            <td>14386</td>
        </tr>
        <tr>
            <td>BEVERLY</td>
            <td>1636</td>
        </tr>
        <tr>
            <td>BRIDGEPORT</td>
            <td>3167</td>
        </tr>
        <tr>
            <td>BRIGHTON PARK</td>
            <td>9647</td>
        </tr>
        <tr>
            <td>BURNSIDE</td>
            <td>549</td>
        </tr>
        <tr>
            <td>CALUMET HEIGHTS</td>
            <td>1568</td>
        </tr>
        <tr>
            <td>CHATHAM</td>
            <td>5042</td>
        </tr>
        <tr>
            <td>CHICAGO LAWN</td>
            <td>7086</td>
        </tr>
        <tr>
            <td>CLEARING</td>
            <td>2085</td>
        </tr>
        <tr>
            <td>DOUGLAS</td>
            <td>4670</td>
        </tr>
        <tr>
            <td>DUNNING</td>
            <td>4568</td>
        </tr>
        <tr>
            <td>EAST GARFIELD PARK</td>
            <td>5337</td>
        </tr>
        <tr>
            <td>EAST SIDE</td>
            <td>5305</td>
        </tr>
        <tr>
            <td>EDGEWATER</td>
            <td>4600</td>
        </tr>
        <tr>
            <td>EDISON PARK</td>
            <td>910</td>
        </tr>
        <tr>
            <td>ENGLEWOOD</td>
            <td>6832</td>
        </tr>
        <tr>
            <td>FOREST GLEN</td>
            <td>1431</td>
        </tr>
        <tr>
            <td>FULLER PARK</td>
            <td>531</td>
        </tr>
        <tr>
            <td>GAGE PARK</td>
            <td>9915</td>
        </tr>
        <tr>
            <td>GARFIELD RIDGE</td>
            <td>4552</td>
        </tr>
        <tr>
            <td>GRAND BOULEVARD</td>
            <td>2809</td>
        </tr>
        <tr>
            <td>GREATER GRAND CROSSING</td>
            <td>4051</td>
        </tr>
        <tr>
            <td>HEGEWISCH</td>
            <td>963</td>
        </tr>
        <tr>
            <td>HERMOSA</td>
            <td>3975</td>
        </tr>
        <tr>
            <td>HUMBOLDT PARK</td>
            <td>8620</td>
        </tr>
        <tr>
            <td>HYDE PARK</td>
            <td>1930</td>
        </tr>
        <tr>
            <td>IRVING PARK</td>
            <td>7764</td>
        </tr>
        <tr>
            <td>JEFFERSON PARK</td>
            <td>1755</td>
        </tr>
        <tr>
            <td>KENWOOD</td>
            <td>4287</td>
        </tr>
        <tr>
            <td>LAKE VIEW</td>
            <td>7055</td>
        </tr>
        <tr>
            <td>LINCOLN PARK</td>
            <td>5615</td>
        </tr>
        <tr>
            <td>LINCOLN SQUARE</td>
            <td>4132</td>
        </tr>
        <tr>
            <td>LOGAN SQUARE</td>
            <td>7351</td>
        </tr>
        <tr>
            <td>LOOP</td>
            <td>871</td>
        </tr>
        <tr>
            <td>LOWER WEST SIDE</td>
            <td>7257</td>
        </tr>
        <tr>
            <td>MCKINLEY PARK</td>
            <td>1552</td>
        </tr>
        <tr>
            <td>MONTCLARE</td>
            <td>1317</td>
        </tr>
        <tr>
            <td>MORGAN PARK</td>
            <td>3271</td>
        </tr>
        <tr>
            <td>MOUNT GREENWOOD</td>
            <td>2091</td>
        </tr>
        <tr>
            <td>NEAR NORTH SIDE</td>
            <td>3362</td>
        </tr>
        <tr>
            <td>NEAR SOUTH SIDE</td>
            <td>1378</td>
        </tr>
        <tr>
            <td>NEAR WEST SIDE</td>
            <td>7975</td>
        </tr>
        <tr>
            <td>NEW CITY</td>
            <td>7922</td>
        </tr>
        <tr>
            <td>NORTH CENTER</td>
            <td>7541</td>
        </tr>
        <tr>
            <td>NORTH LAWNDALE</td>
            <td>5146</td>
        </tr>
        <tr>
            <td>NORTH PARK</td>
            <td>4210</td>
        </tr>
        <tr>
            <td>NORWOOD PARK</td>
            <td>6469</td>
        </tr>
        <tr>
            <td>OAKLAND</td>
            <td>140</td>
        </tr>
        <tr>
            <td>OHARE</td>
            <td>786</td>
        </tr>
        <tr>
            <td>PORTAGE PARK</td>
            <td>6954</td>
        </tr>
        <tr>
            <td>PULLMAN</td>
            <td>1620</td>
        </tr>
        <tr>
            <td>RIVERDALE</td>
            <td>1547</td>
        </tr>
        <tr>
            <td>ROGERS PARK</td>
            <td>4068</td>
        </tr>
        <tr>
            <td>ROSELAND</td>
            <td>7020</td>
        </tr>
        <tr>
            <td>SOUTH CHICAGO</td>
            <td>4043</td>
        </tr>
        <tr>
            <td>SOUTH DEERING</td>
            <td>1859</td>
        </tr>
        <tr>
            <td>SOUTH LAWNDALE</td>
            <td>14793</td>
        </tr>
        <tr>
            <td>SOUTH SHORE</td>
            <td>4543</td>
        </tr>
        <tr>
            <td>UPTOWN</td>
            <td>4388</td>
        </tr>
        <tr>
            <td>WASHINGTON HEIGHTS</td>
            <td>4006</td>
        </tr>
        <tr>
            <td>WASHINGTON PARK</td>
            <td>2648</td>
        </tr>
        <tr>
            <td>WEST ELSDON</td>
            <td>3700</td>
        </tr>
        <tr>
            <td>WEST ENGLEWOOD</td>
            <td>5946</td>
        </tr>
        <tr>
            <td>WEST GARFIELD PARK</td>
            <td>2622</td>
        </tr>
        <tr>
            <td>WEST LAWN</td>
            <td>4207</td>
        </tr>
        <tr>
            <td>WEST PULLMAN</td>
            <td>3240</td>
        </tr>
        <tr>
            <td>WEST RIDGE</td>
            <td>8197</td>
        </tr>
        <tr>
            <td>WEST TOWN</td>
            <td>9429</td>
        </tr>
        <tr>
            <td>WOODLAWN</td>
            <td>4206</td>
        </tr>
    </tbody>
</table>



### Problem 18

##### Get the 5 Community Areas with the least College Enrollment sorted in ascending order.


```python
%sql SELECT COMMUNITY_AREA_NAME, COLLEGE_ENROLLMENT from CHICAGO_PUBLIC_SCHOOLS order by COLLEGE_ENROLLMENT limit 5
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
            <th>COLLEGE_ENROLLMENT</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>NEAR WEST SIDE</td>
            <td>21</td>
        </tr>
        <tr>
            <td>CALUMET HEIGHTS</td>
            <td>26</td>
        </tr>
        <tr>
            <td>ENGLEWOOD</td>
            <td>44</td>
        </tr>
        <tr>
            <td>NORTH LAWNDALE</td>
            <td>48</td>
        </tr>
        <tr>
            <td>NORTH LAWNDALE</td>
            <td>83</td>
        </tr>
    </tbody>
</table>



### Problem 19

##### Display ZIPCodes from Chicago_Schools which are having more than 5 schools.


```python
%sql select ZIP_CODE from CHICAGO_PUBLIC_SCHOOLS group by ZIP_Code having count(*) > 5
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>ZIP_Code</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>60608</td>
        </tr>
        <tr>
            <td>60609</td>
        </tr>
        <tr>
            <td>60610</td>
        </tr>
        <tr>
            <td>60612</td>
        </tr>
        <tr>
            <td>60613</td>
        </tr>
        <tr>
            <td>60614</td>
        </tr>
        <tr>
            <td>60615</td>
        </tr>
        <tr>
            <td>60616</td>
        </tr>
        <tr>
            <td>60617</td>
        </tr>
        <tr>
            <td>60618</td>
        </tr>
        <tr>
            <td>60619</td>
        </tr>
        <tr>
            <td>60620</td>
        </tr>
        <tr>
            <td>60621</td>
        </tr>
        <tr>
            <td>60622</td>
        </tr>
        <tr>
            <td>60623</td>
        </tr>
        <tr>
            <td>60624</td>
        </tr>
        <tr>
            <td>60625</td>
        </tr>
        <tr>
            <td>60626</td>
        </tr>
        <tr>
            <td>60628</td>
        </tr>
        <tr>
            <td>60629</td>
        </tr>
        <tr>
            <td>60631</td>
        </tr>
        <tr>
            <td>60632</td>
        </tr>
        <tr>
            <td>60634</td>
        </tr>
        <tr>
            <td>60636</td>
        </tr>
        <tr>
            <td>60637</td>
        </tr>
        <tr>
            <td>60638</td>
        </tr>
        <tr>
            <td>60639</td>
        </tr>
        <tr>
            <td>60640</td>
        </tr>
        <tr>
            <td>60641</td>
        </tr>
        <tr>
            <td>60643</td>
        </tr>
        <tr>
            <td>60644</td>
        </tr>
        <tr>
            <td>60647</td>
        </tr>
        <tr>
            <td>60649</td>
        </tr>
        <tr>
            <td>60651</td>
        </tr>
        <tr>
            <td>60652</td>
        </tr>
        <tr>
            <td>60653</td>
        </tr>
        <tr>
            <td>60657</td>
        </tr>
        <tr>
            <td>60659</td>
        </tr>
    </tbody>
</table>



### Problem 20

##### Get the hardship index for the community area which has the school with the highest enrollment


```python
%sql SELECT CD.community_area_name, HARDSHIP_INDEX FROM CENSUS_DATA  CD ,CHICAGO_PUBLIC_SCHOOLS CP WHERE CD.community_area_number  = CP.community_area_number  and CP.COLLEGE_ENROLLMENT = (SELECT MAX(COLLEGE_ENROLLMENT) from Chicago_Public_Schools)
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NAME</th>
            <th>HARDSHIP_INDEX</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>North Center</td>
            <td>6.0</td>
        </tr>
    </tbody>
</table>



### Problem 21

##### Display the type of crimes with less than 10 reported crimes for each category


```python
%sql Select count(*) , Primary_Type from Chicago_Crime_data group by Primary_type having count(*)<10;
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>count(*)</th>
            <th>PRIMARY_TYPE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>2</td>
            <td>ARSON</td>
        </tr>
        <tr>
            <td>1</td>
            <td>CONCEALED CARRY LICENSE VIOLATION</td>
        </tr>
        <tr>
            <td>3</td>
            <td>CRIM SEXUAL ASSAULT</td>
        </tr>
        <tr>
            <td>1</td>
            <td>DOMESTIC VIOLENCE</td>
        </tr>
        <tr>
            <td>2</td>
            <td>GAMBLING</td>
        </tr>
        <tr>
            <td>2</td>
            <td>HOMICIDE</td>
        </tr>
        <tr>
            <td>1</td>
            <td>HUMAN TRAFFICKING</td>
        </tr>
        <tr>
            <td>2</td>
            <td>INTERFERENCE WITH PUBLIC OFFICER</td>
        </tr>
        <tr>
            <td>1</td>
            <td>INTIMIDATION</td>
        </tr>
        <tr>
            <td>1</td>
            <td>KIDNAPPING</td>
        </tr>
        <tr>
            <td>2</td>
            <td>LIQUOR LAW VIOLATION</td>
        </tr>
        <tr>
            <td>1</td>
            <td>NON - CRIMINAL</td>
        </tr>
        <tr>
            <td>1</td>
            <td>NON-CRIMINAL</td>
        </tr>
        <tr>
            <td>1</td>
            <td>NON-CRIMINAL (SUBJECT SPECIFIED)</td>
        </tr>
        <tr>
            <td>1</td>
            <td>OBSCENITY</td>
        </tr>
        <tr>
            <td>4</td>
            <td>OFFENSE INVOLVING CHILDREN</td>
        </tr>
        <tr>
            <td>1</td>
            <td>OTHER NARCOTIC VIOLATION</td>
        </tr>
        <tr>
            <td>6</td>
            <td>PROSTITUTION</td>
        </tr>
        <tr>
            <td>1</td>
            <td>PUBLIC INDECENCY</td>
        </tr>
        <tr>
            <td>5</td>
            <td>PUBLIC PEACE VIOLATION</td>
        </tr>
        <tr>
            <td>1</td>
            <td>RITUALISM</td>
        </tr>
        <tr>
            <td>3</td>
            <td>SEX OFFENSE</td>
        </tr>
        <tr>
            <td>1</td>
            <td>STALKING</td>
        </tr>
        <tr>
            <td>6</td>
            <td>WEAPONS VIOLATION</td>
        </tr>
    </tbody>
</table>



### Problem 22

##### Display the top 20 least reported types of crime


```python
%sql Select count(*) , Primary_Type from Chicago_Crime_data group by Primary_type order by Count(*) Limit 20
```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>count(*)</th>
            <th>PRIMARY_TYPE</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>CONCEALED CARRY LICENSE VIOLATION</td>
        </tr>
        <tr>
            <td>1</td>
            <td>DOMESTIC VIOLENCE</td>
        </tr>
        <tr>
            <td>1</td>
            <td>HUMAN TRAFFICKING</td>
        </tr>
        <tr>
            <td>1</td>
            <td>INTIMIDATION</td>
        </tr>
        <tr>
            <td>1</td>
            <td>KIDNAPPING</td>
        </tr>
        <tr>
            <td>1</td>
            <td>NON - CRIMINAL</td>
        </tr>
        <tr>
            <td>1</td>
            <td>NON-CRIMINAL</td>
        </tr>
        <tr>
            <td>1</td>
            <td>NON-CRIMINAL (SUBJECT SPECIFIED)</td>
        </tr>
        <tr>
            <td>1</td>
            <td>OBSCENITY</td>
        </tr>
        <tr>
            <td>1</td>
            <td>OTHER NARCOTIC VIOLATION</td>
        </tr>
        <tr>
            <td>1</td>
            <td>PUBLIC INDECENCY</td>
        </tr>
        <tr>
            <td>1</td>
            <td>RITUALISM</td>
        </tr>
        <tr>
            <td>1</td>
            <td>STALKING</td>
        </tr>
        <tr>
            <td>2</td>
            <td>ARSON</td>
        </tr>
        <tr>
            <td>2</td>
            <td>GAMBLING</td>
        </tr>
        <tr>
            <td>2</td>
            <td>HOMICIDE</td>
        </tr>
        <tr>
            <td>2</td>
            <td>INTERFERENCE WITH PUBLIC OFFICER</td>
        </tr>
        <tr>
            <td>2</td>
            <td>LIQUOR LAW VIOLATION</td>
        </tr>
        <tr>
            <td>3</td>
            <td>CRIM SEXUAL ASSAULT</td>
        </tr>
        <tr>
            <td>3</td>
            <td>SEX OFFENSE</td>
        </tr>
    </tbody>
</table>



### Problem 23

##### How many schools are there in each community, and could you list the names of community areas and  total per capita income where the number of schools exceeds 20?


```python
%sql SELECT CD.community_area_number,CD.community_area_name, count(S.School_ID) FROM Census_Data AS CD LEFT JOIN Chicago_Public_Schools AS S ON CD.community_area_number = S.community_area_number group by cd.COMMUNITY_AREA_NUMBER having count(S.School_ID)>20

```

       ibm_db_sa://fvd66029:***@fbd88901-ebdb-4a4f-a32e-9822b9fb237b.c1ogj3sd0tgtu0lqde00.databases.appdomain.cloud:32731/bludb
     * sqlite:///FinalDB.db
    Done.





<table>
    <thead>
        <tr>
            <th>COMMUNITY_AREA_NUMBER</th>
            <th>COMMUNITY_AREA_NAME</th>
            <th>count(S.School_ID)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>25.0</td>
            <td>Austin</td>
            <td>23</td>
        </tr>
        <tr>
            <td>30.0</td>
            <td>South Lawndale</td>
            <td>22</td>
        </tr>
    </tbody>
</table>




```python

```
