USE world;
SHOW FULL TABLES;
SELECT * FROM country;

#1 Ada berapa negara di database world 
SELECT count(name) as total_name
FROM country;

#2 Tampilkan rata-rata harapan hidup di benua Asia!
SELECT AVG (LifeExpectancy) as rata_rata_Harapan_hidup
FROM country
WHERE continent = "Asia";

#3.  Tampilkan total populasi di Asia Tenggara!
SELECT SUM(Population) as total_populasi
FROM country
WHERE Region = "Southeast Asia";

# 4.  Tampilkan rata-rata GNP di benua Afrika region Eastern Africa. 
# Gunakan alias 'Average_GNP' untuk rata-rata GNP!
SELECT AVG (GNP) as Average_GNP
FROM country
WHERE region = "Eastern Africa";

# 5.  Tampilkan rata-rata Populasi pada negara yang luas areanya lebih dari 5 juta km2!
SELECT AVG (population) as rata_rata_populasi
FROM country
WHERE SurfaceArea > 5000000;

# 6.  Ada berapa bahasa (unique) di dunia?
SELECT COUNT(DISTINCT Language) AS jumlah_bahasa_unik
FROM countrylanguage;

# 7.  Tampilkan GNP dari 5 negara di Asia yang populasinya di atas 100 juta penduduk!
SELECT name, GNP, population
FROM country
WHERE continent = 'Asia' and population > 100000000
Limit 5;


# 8.  Tampilkan negara di Afrika yang memiliki SurfaceArea di atas 1.200.000!
SELECT name, surfaceArea
FROM country
WHERE continent = 'Africa' and surfaceArea > 1200000;

# 9.  Tampilkan negara di Asia yang sistem pemerintahannya adalah republik. 
# Ada berapa jumlah negaranya?
SELECT name, continent, GovernmentForm
FROM country
WHERE continent = 'Asia' and GovernmentForm = "Republic";

# 10. Tampilkan jumlah negara di Eropa yang merdeka sebelum 1940!
SELECT name, continent,indepyear
FROM country
WHERE continent = 'Europe' and IndepYear < 1940


