
Query 1 - Top 10 artists by chart appearances:
SELECT artist, COUNT(*) AS chart_appearances FROM songs_raw GROUP BY artist ORDER BY chart_appearances DESC LIMIT 10;

Query 2 - Top 10 artists by average chart position:
SELECT artist, AVG(position) AS avg_position, COUNT(*) AS appearances FROM songs_raw GROUP BY artist ORDER BY avg_position ASC LIMIT 10;

Query 3 - Collaborations vs solo artists:
SELECT CASE WHEN artist LIKE '%&%' THEN 'Collaboration' ELSE 'Solo' END AS artist_type, AVG(position) AS avg_position, COUNT(*) AS appearances FROM songs_raw GROUP BY artist_type ORDER BY avg_position ASC;

Query 4 - Explicit vs non-explicit songs:
SELECT is_explicit, AVG(position) AS avg_position, COUNT(*) AS appearances FROM songs_raw GROUP BY is_explicit ORDER BY avg_position ASC;