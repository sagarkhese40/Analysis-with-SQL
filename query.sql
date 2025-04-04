use record_company;
select name from bands;
select name , min(release_year) as oldest_year from albums group by name;
select  distinct b.* from bands b join albums a on b.id = a.band_id;
select  distinct b.* from bands b left join albums a on b.id = a.band_id where a.id is null;
select albums.*,sum(songs.length) as song_length  from albums join songs on albums.id = songs.album_id
group by albums.id order by song_length desc limit 1;
INSERT INTO bands(id,name) VALUES (8,'coldplay');
INSERT INTO albums(id,name,release_year,band_id) VALUES (19,' Hymn For The Weekend',2015,8);
delete from albums where id = 19;
delete from bands where  id = 8;
SELECT * FROM bands WHERE name LIKE '%coldaplay%';
SELECT * FROM albums WHERE name LIKE '% Hymn%';
select avg(length) as Average_length_song from songs ;
select * from songs where length in(select max(length) as longest_song from songs group by album_id);
select b.name as band_name ,count(s.id) as song_count  from bands b join albums a on b.id  =a.band_id join songs s on a.id  = s.album_id group by b.id ,b.name;
select*,(release_year div 10) *10 as decade from albums;
select* from albums where name like '%The%';
select *  from albums where release_year between 2008 and 2013;



