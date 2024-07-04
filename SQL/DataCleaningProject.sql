#Project 
#Data Cleaning

SELECT *
FROM layoffs;

#STEP1 : Remove duplicates
#STEP2 : Standarized data
#Step 3 : Null or blank values
#STEP 4: Remove any columns

CREATE TABLE layoffs_staging
LIKE layoffs;

SELECT *
from layoffs_staging;

INSERT layoffs_staging
SELECT *
FROM layoffs;

#Remove duplicates

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`) AS row_num
from layoffs_staging;

#if the row number number is > 2, that means there is a duplicate

