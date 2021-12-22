/* How many tracks does each album have? Your solution should include 
Album id and its number of tracks sorted from highest to lowest.*/

SELECT AlbumId, count(TrackId) as total_track
FROM tracks
GROUP by AlbumId
ORDER by total_track DESC;
 /* Find the album title of the tracks. Your solution should
 include track name and its album title.*/
 SELECT t.name, a.Title
FROM tracks t
JOIN albums a on t.AlbumId = a.AlbumId;

/* Find the minimum duration of the track in each album.
 Your solution should include album id, album title and 
 duration of the track sorted from highest to lowest.*/
 SELECT a.AlbumId, a.Title, min(t.Milliseconds) as duration_of_track
FROM tracks t 
JOIN albums a on a.AlbumId = t.AlbumId 
GROUP by a.AlbumId 
ORDER by duration_of_track DESC;
 /* Find the total duration of each album. Your solution should include 
 album id, album title and its total duration sorted from highest to lowest.*/
 SELECT a.AlbumId, a.Title, sum(t.Milliseconds) as total_duration_of_track
FROM tracks t 
JOIN albums a on a.AlbumId = t.AlbumId 
GROUP by a.AlbumId 
ORDER by total_duration_of_track DESC;

/* Based on the previous question, find the albums whose total duration is
 higher than 70 minutes. Your solution should include album title and total
 duration.*/
 
 SELECT a.Title, sum(t.Milliseconds) as total_duration_of_track
FROM tracks t 
JOIN albums a on a.AlbumId = t.AlbumId 
GROUP by a.AlbumId 
HAVING   total_duration_of_track> 4200000
ORDER by total_duration_of_track DESC

;