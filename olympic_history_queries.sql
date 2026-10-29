--- 1. Top 10 Countries by Total Gold Medals

SELECT 
    r.region, 
    COUNT(a.medal) AS total_gold_medals
FROM athlete_events a
JOIN noc_regions r ON a.noc = r.noc
WHERE a.medal = 'Gold'
GROUP BY r.region
ORDER BY total_gold_medals DESC
LIMIT 10;




--- 2. Finding the Youngest Gold Medalists
SELECT 
    name, 
    age, 
    sport, 
    team, 
    year
FROM athlete_events
WHERE medal = 'Gold' AND age IS NOT NULL
ORDER BY age ASC
LIMIT 10;




--- 3. Listing All Indian Medalists and Their Region
SELECT 
    a.name, 
    a.sport, 
    a.event, 
    a.medal, 
    r.region
FROM athlete_events a
JOIN noc_regions r ON a.noc = r.noc
WHERE a.noc = 'IND' AND a.medal IS NOT NULL
ORDER BY a.year DESC;




--- 4. Finding All Sports That Contain the Word "Ball"
SELECT DISTINCT 
    sport, 
    event
FROM athlete_events
WHERE sport LIKE '%ball' OR sport LIKE '%Ball%'
ORDER BY sport;




--- 5. Find Athletes Taller Than the Overall Average Height
SELECT 
    name, 
    sex, 
    height, 
    sport
FROM athlete_events
WHERE height > (
    SELECT AVG(height) 
    FROM athlete_events
)
ORDER BY height DESC
LIMIT 15;




--- 6. Top 5 Regions by Total Medals in the 2016 Games
SELECT 
    r.region, 
    COUNT(a.medal) AS total_medals
FROM athlete_events a
JOIN noc_regions r ON a.noc = r.noc
WHERE a.year = 2016 AND a.medal IS NOT NULL
GROUP BY r.region
ORDER BY total_medals DESC
LIMIT 5;




--- 7. Total Olympic Participations Grouped by Decade
SELECT 
    EXTRACT(DECADE FROM TO_DATE(year::VARCHAR, 'YYYY')) * 10 AS decade,
    COUNT(id) AS total_participations
FROM athlete_events
GROUP BY decade
ORDER BY decade DESC;




--- 8.Finding the Heaviest Athlete to Ever Win Gold
SELECT 
    name, 
    sport, 
    weight, 
    team, 
    year
FROM athlete_events
WHERE weight = (
    SELECT MAX(weight) 
    FROM athlete_events 
    WHERE medal = 'Gold'
);