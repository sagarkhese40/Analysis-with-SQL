use record_company;
select name from bands; -- band names

select name , min(release_year) as oldest_year from albums group by name; -- oldest band name

select  distinct b.* from bands b join albums a on b.id = a.band_id; -- Get all the bands that have albums

select  distinct b.* from bands b left join albums a on b.id = a.band_id where a.id is null; -- Get all the bands that have no albums

select albums.*,sum(songs.length) as song_length  from albums join songs on albums.id = songs.album_id

group by albums.id order by song_length desc limit 1; -- Get the longest album

INSERT INTO bands(id,name) VALUES (8,'coldplay'); --  Insert a record for your favorite Band and one of their Albums
INSERT INTO albums(id,name,release_year,band_id) VALUES (19,' Hymn For The Weekend',2015,8);

delete from albums where id = 19; -- Delete the Band and Album you added in previous question.
delete from bands where  id = 8;

SELECT * FROM bands WHERE name LIKE '%coldaplay%'; -- bands names similar to coldpaly
SELECT * FROM albums WHERE name LIKE '% Hymn%';

select avg(length) as Average_length_song from songs ; -- get the Average length of all songs

select * from songs where length in(select max(length) as longest_song from songs group by album_id); -- Select the longest song of each album

select b.name as band_name ,count(s.id) as song_count  from bands b join albums a on b.id  =a.band_id join songs s on a.id  = s.album_id group by b.id ,b.name; -- Get the number of songs for each band

select*,(release_year div 10) *10 as decade from albums; -- Create a decade column with dividing the year // 10 *10.

select* from albums where name like '%The%'; -- Filter the Albums which start with the word 'The'

select *  from albums where release_year between 2008 and 2013; -- Find the album which released in 2008 to 2013.



