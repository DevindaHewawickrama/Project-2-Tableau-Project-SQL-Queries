--1
SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths, (SUM(new_deaths)/SUM(new_cases))*100 AS DeathPercentage
FROM..CovidDeaths
WHERE continent is not null
ORDER BY 1,2


-- 2. 

Select location, SUM(cast(new_deaths as int)) as TotalDeathCount
From PortofolioProject1..CovidDeaths
Where continent is null 
and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc


-- 3.

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From ..CovidDeaths
Group by Location, Population
order by PercentPopulationInfected desc


-- 4.


Select Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From..CovidDeaths
Group by Location, Population, date
order by PercentPopulationInfected desc


