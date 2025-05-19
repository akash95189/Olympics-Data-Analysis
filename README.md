# Olympics-Data-Analysis

## Project Overview

This project is an end-to-end data analysis solution designed to extract critical business insights from Olympics data from 1896 to 2016. We utilize Python for data processing and analysis, SQL for advanced querying, and structured problem-solving techniques to solve key business questions.

---
## Project Steps

### 1. Preview
  - **Tools Used**- Jupyter Notebook, Python, MYSQL Workbench
  - **Goal**- To Create a structured workspace in Jupyter Notebook for smooth data handling.

### 2. Set up Dataset
  - **Data Source**- Using Open source Kaggle to Download the readymade available dataset.
  - **Storage**- Save data in project file to access it in Jupyter notebook.

### 3. Explore Data
- **Loading Data**- Read the data into a Pandas FataFrame for initial analysis and transformation using Pandas Function.
- **Analysis**- Use functions like `.head()`,`.info()` and `.describe()` to get a quick overview of dataset.
- **Chech Volume**- use function `.shape()` to check the volume of set.

### 4. Data Cleaning
  - **Remove Dupplicates**- Identify and remove the duplicate entries to avoid uneven result.
  - **Handle Missing Values**- Drop rows and columns with missing values to avoid errors in result.
  - **Fix Data Types**- Ensure all columns have consistent data types (e.g., dates as `datetime`, prices as `float`).
  - **Validation**: Check for any remaining inconsistencies and verify the cleaned data.

### 5. Load Data into `.csv` format and into MYSQL
  - **To CSV File**- Save the cleaned file into `.csv` format for any further use.
  - **Set Up Connections**: Connect to MySQL using `sqlalchemy` and load the cleaned data into each database.
  - **Table Creation**: Set up tables in both MySQL using Python SQLAlchemy to automate table creation and data insertion.

### 6. SQL Analysis: Complex Queries and Business Problem Solving
  - **Business Problem-Solving**: Write and execute complex SQL queries to answer critical business questions, such as:
    - Calculate Total Medals won by Male and Female.
    - Calculate Total Gold, Silver and Bronze Medals won by Male and Female.
    - Get top 3 Country with most number of Medals.
    - Get the data of Medals Won by India.
    - Get the Data of Number of Gold, Silver and Bronze MEdals won by India.
    - Take out the name, Gender, Winning Year, Sport, Participating Event and Medals Won by India.
    - Get the top 10 Athelete Name who won maximum number of medals.
    


---
## Future Enhancements

Possible extensions to this project:
- Integration with a dashboard tool (e.g., Power BI or Tableau) for interactive visualization.
- Additional data sources to enhance analysis depth.
- Integration of Machine Learning Algorithm to make future sales prediction with other parameters.
---

## Acknowledgments

- **Data Source**: Kaggle’s Walmart Sales Dataset
- **Inspiration**: Olympics Data case studies records of winners and year of games hosting in city.
---
