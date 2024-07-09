#Exploratory data analysis

SELECT * 
FROM layoffs_staging2;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

SELECT * 
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;

SELECT company, SUM(total_laid_off) 
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;

SELECT industry, SUM(total_laid_off) 
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;

SELECT country, SUM(total_laid_off) 
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

SELECT `date`, SUM(total_laid_off) 
FROM layoffs_staging2
GROUP BY `date`
ORDER BY 1 DESC;

SELECT YEAR(`date`), SUM(total_laid_off) 
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY 1 DESC;

SELECT stage, SUM(total_laid_off) 
FROM layoffs_staging2
GROUP BY stage
ORDER BY 2 DESC;

SELECT company, AVG(percentage_laid_off) 
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

#laid off in month
SELECT substr(`date`,6,2) AS `Month`, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY `Month`;

#laid off in year
SELECT substr(`date`,1,7) AS `Month`, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY `Month`
ORDER BY 2 ASC;

WITH Rolling_total AS
(
SELECT SUBSTRING(`date`,1,7) AS `Month`, SUM(total_laid_off) AS total_off
FROM layoffs_staging2
WHERE substr(`date`, 1 , 7) IS NOT NULL
GROUP BY `Month`
ORDER BY 2 ASC
)
SELECT `Month`, SUM(total_off) OVER(ORDER BY `Month`) AS rolling_total
FROM Rolling_total;

