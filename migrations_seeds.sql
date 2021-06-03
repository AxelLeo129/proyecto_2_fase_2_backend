CREATE DATABASE graph_music;
GO

USE graph_music;
GO

CREATE TABLE Persona (
	ID INTEGER IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(100),
	nombre_usuario VARCHAR(100),
	email VARCHAR(100),
	password VARCHAR(100),
	imagen VARCHAR(max)
) AS NODE;

CREATE TABLE Autor (
	ID INTEGER IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(100),
	imagen VARCHAR(max)
) AS NODE;

CREATE TABLE Cancion (
	ID INTEGER IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(100),
	imagen VARCHAR(max)
) AS NODE;

CREATE TABLE Region (
	ID INTEGER IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(100)
) AS NODE;

CREATE TABLE Genero (
	ID INTEGER IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(100),
	imagen VARCHAR(max)
) AS NODE;

CREATE TABLE likes_cancion (rating INTEGER) AS EDGE;
CREATE TABLE likes_genero (rating INTEGER) AS EDGE;
CREATE TABLE likes_autor (rating INTEGER) AS EDGE;
CREATE TABLE amigo_de AS EDGE;
CREATE TABLE vive_en AS EDGE;
CREATE TABLE localizado_en AS EDGE;
CREATE TABLE pertenece_a AS EDGE;
CREATE TABLE de_genero AS EDGE;

INSERT INTO Cancion VALUES ('More Than a Woman', 'https://i.scdn.co/image/ab67616d00001e02324045726c4b0deb6cb7c875');
INSERT INTO Cancion VALUES ('Amsterdam', 'https://lamusikalite.files.wordpress.com/2017/10/c8a0dba90778be71f3da065544473e13-1000x1000x1.jpg');
INSERT INTO Cancion VALUES ('Broken Machine', 'https://lamusikalite.files.wordpress.com/2017/10/c8a0dba90778be71f3da065544473e13-1000x1000x1.jpg');
INSERT INTO Cancion VALUES ('Holding on to you', 'https://upload.wikimedia.org/wikipedia/en/2/20/Vessel_by_Twenty_One_Pilots.jpg');
INSERT INTO Cancion VALUES ('All time low', 'https://img.discogs.com/4fKNfUmhwtHnLHat1tfn1uzkBbg=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-8520949-1465433289-3538.jpeg.jpg');
INSERT INTO Cancion VALUES ('Woke the fuck up', 'https://c-sf.smule.com/rs-s79/arr/c0/e0/2e091e07-5234-4bd7-a9f1-42d4cd9a6511_512.jpg');
INSERT INTO Cancion VALUES ('Levitating', 'https://images-na.ssl-images-amazon.com/images/I/612luc2DEML._SL1000_.jpg');
INSERT INTO Cancion VALUES ('Good in bed', 'https://images-na.ssl-images-amazon.com/images/I/612luc2DEML._SL1000_.jpg');
INSERT INTO Cancion VALUES ('WTF do I know', 'https://www.criticaspolares.com/wp-content/uploads/2020/12/critica-disco-plastic-hearts-miley-cyrus-2020.jpg');
INSERT INTO Cancion VALUES ('Prisioner', 'https://www.criticaspolares.com/wp-content/uploads/2020/12/critica-disco-plastic-hearts-miley-cyrus-2020.jpg');
INSERT INTO Cancion VALUES ('We the people…', 'https://images.genius.com/09e256ce885fe6b3cf181239c3b3231c.1000x1000x1.jpg');
INSERT INTO Cancion VALUES ('Uno', 'https://i.ytimg.com/vi/nYyT-TjrmC8/maxresdefault.jpg');
INSERT INTO Cancion VALUES ('Patty Cake', 'https://i1.sndcdn.com/artworks-Ah2AMiO78CIr-0-t500x500.jpg');
INSERT INTO Cancion VALUES ('Check the rhyme', 'https://images.genius.com/09e256ce885fe6b3cf181239c3b3231c.1000x1000x1.jpg');
INSERT INTO Cancion VALUES ('The Outside', 'https://static.wikia.nocookie.net/twenty-one-pilots/images/5/54/Scaled_and_Icy.jpg/revision/latest?cb=20210407173546');
INSERT INTO Cancion VALUES ('Shy Away', 'https://static.wikia.nocookie.net/twenty-one-pilots/images/5/54/Scaled_and_Icy.jpg/revision/latest?cb=20210407173546');
INSERT INTO Cancion VALUES ('Lost Cause', 'https://linkstorage.linkfire.com/medialinks/images/c33f5dd4-ffe4-4b5b-8ea5-3a174a542fd7/artwork-440x440.jpg');
INSERT INTO Cancion VALUES ('ALL THE GOOD GIRLS FO TO HELL', 'https://images-na.ssl-images-amazon.com/images/I/71SHkMeVdhL._SL1500_.jpg');
INSERT INTO Cancion VALUES ('Zitti E Buoni', 'https://note-store.com/upload/iblock/488/M_neskin-_-Zitti-e-buoni.png');
INSERT INTO Cancion VALUES ('To', 'https://thewestreviewdotcom.files.wordpress.com/2014/12/cover.jpg?w=640');
INSERT INTO Cancion VALUES ('Adore you', 'https://i.musicaimg.com/letras/max/2494291.jpg');
INSERT INTO Cancion VALUES ('Too Bizarre', 'https://static.stereogum.com/uploads/2021/05/Too-Bizzare-2000x2000-1620935149-scaled.jpg');
INSERT INTO Cancion VALUES ('Nuclear', 'https://i.ytimg.com/vi/7FAcxhQgY1k/0.jpg');
INSERT INTO Cancion VALUES ('Good 4 u', 'https://images.genius.com/146f35f3c7ecedfccb09c86ba0d8369f.1000x1000x1.jpg');
INSERT INTO Cancion VALUES ('Snow', 'https://images-na.ssl-images-amazon.com/images/I/81lOFvmn6tL._SL1500_.jpg');
INSERT INTO Cancion VALUES ('Cant stop	Red Hot', 'https://cdns-images.dzcdn.net/images/cover/49b073f55550d41055e02c493f9a7d39/500x500.jpg');
INSERT INTO Cancion VALUES ('Would you ever', 'https://upload.wikimedia.org/wikipedia/en/2/2a/Skrillex_Poo_Bear_Would_You_Ever.jpg');
INSERT INTO Cancion VALUES ('El aguante', 'https://i1.wp.com/www.sopitas.com/wp-content/uploads/2014/03/calle13multiviral.jpg');
INSERT INTO Cancion VALUES ('Atrevete-te', 'https://cdns-images.dzcdn.net/images/cover/56f4c7cb929e8749207d0c06d9b9ba19/350x350.jpg');
INSERT INTO Cancion VALUES ('The Apl Song', 'https://img.discogs.com/I9vgS-1KFJp6O6ZxwLdncroNbuM=/fit-in/600x597/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1653501-1447518738-4629.jpeg.jpg');
INSERT INTO Cancion VALUES ('Pump it', 'https://i.musicaimg.com/letras/500/816611.jpg');
INSERT INTO Cancion VALUES ('Hands up', 'https://img.discogs.com/I9vgS-1KFJp6O6ZxwLdncroNbuM=/fit-in/600x597/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1653501-1447518738-4629.jpeg.jpg');
INSERT INTO Cancion VALUES ('Madness', 'https://upload.wikimedia.org/wikipedia/en/3/35/Muse_2nd_law.jpg');
INSERT INTO Cancion VALUES ('Holiday', 'https://upload.wikimedia.org/wikipedia/en/8/8a/Green_Day_-_Holiday_cover.jpg');
INSERT INTO Cancion VALUES ('deja vu', 'https://images.genius.com/146f35f3c7ecedfccb09c86ba0d8369f.1000x1000x1.jpg');
INSERT INTO Cancion VALUES ('Pressure', 'https://img.discogs.com/ztO41pTuAXUTfsKx9rGK7qtVqhw=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-12622793-1538791175-5131.jpeg.jpg');
INSERT INTO Cancion VALUES ('Instant crush', 'https://images-na.ssl-images-amazon.com/images/I/61Uxg-SWExL._SL1500_.jpg');
INSERT INTO Cancion VALUES ('Welcome to the black parade', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/6e/b6/77/6eb677b1-7e21-abb9-3905-72e10f74c235/mzi.fbpszunc.jpg/1200x1200bf-60.jpg');
INSERT INTO Cancion VALUES ('I dont love you', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/6e/b6/77/6eb677b1-7e21-abb9-3905-72e10f74c235/mzi.fbpszunc.jpg/1200x1200bf-60.jpg');
INSERT INTO Cancion VALUES ('Perfect', 'https://direct.rhapsody.com/imageserver/images/alb.305768210/500x500.jpg');
INSERT INTO Cancion VALUES ('Hot n cold', 'https://i.musicaimg.com/letras/max/1331695.jpg');
INSERT INTO Cancion VALUES ('Dutt love', 'https://m.media-amazon.com/images/I/71JD5eDIV8L._SS500_.jpg');
INSERT INTO Cancion VALUES ('Safaera', 'https://images.genius.com/aa1c8b77f382d4d32ad97002ab823680.1000x1000x1.png');
INSERT INTO Cancion VALUES ('Bellacoso', 'https://cdn.smehost.net/sonymusiclatincom-uslatinprod/wp-content/uploads/2019/07/unnamed-91.jpg');
INSERT INTO Cancion VALUES ('La boda', 'https://i.musicaimg.com/discos/max/84556.jpg');
INSERT INTO Cancion VALUES ('Propuesta indecente', 'http://1.bp.blogspot.com/-tffMYvF-etQ/VOjbhX9X-_I/AAAAAAAAACY/YD2dDI40jBc/s1600/Romeo%2BSantos%2B-%2BPropuesta%2BIndecente%2B(www.tuslyricas.blogspot.com)%2Bsnydell.jpg');
INSERT INTO Cancion VALUES ('TQM', 'https://images.genius.com/b05afa2fd747d18e6c00f56c2f1bb950.640x640x1.jpg');
INSERT INTO Cancion VALUES ('A kiss', 'https://i.ytimg.com/vi/feFkmIGWOAE/maxresdefault.jpg');
INSERT INTO Cancion VALUES ('Just dance', 'https://m.media-amazon.com/images/I/91LtHgzjOYL._SS500_.jpg');
INSERT INTO Cancion VALUES ('Static Space lover', 'https://images-na.ssl-images-amazon.com/images/I/81s0KcZqtjL._SL1500_.jpg');
INSERT INTO Cancion VALUES ('Houdini', 'https://images-na.ssl-images-amazon.com/images/I/81L7V3Q3rBL._SL1500_.jpg');

SELECT * FROM Cancion;

INSERT INTO Genero VALUES ('Rock', 'https://img.icons8.com/ios/452/rock-music.png');
INSERT INTO Genero VALUES ('Hip hop', 'https://cdn4.iconfinder.com/data/icons/music-kit/32/hip-hop-512.png');
INSERT INTO Genero VALUES ('Pop', 'https://cdn4.iconfinder.com/data/icons/music-kit/32/pop-512.png');
INSERT INTO Genero VALUES ('Pop Rock', 'https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/headphones-512.png');
INSERT INTO Genero VALUES ('Bachata', 'https://i.pinimg.com/600x315/af/f2/60/aff26012b595f63b9dd5719f60e4c451.jpg');
INSERT INTO Genero VALUES ('Electronica', 'https://cdn1.iconfinder.com/data/icons/edm-malibu-vol-2/128/techno-512.png');
INSERT INTO Genero VALUES ('Emo Rock', 'https://cdn0.iconfinder.com/data/icons/people-99/64/rocker_music_hard-rock_emo-512.png');
INSERT INTO Genero VALUES ('Indie', 'https://cdn4.iconfinder.com/data/icons/music-kit/32/indie-512.png');
INSERT INTO Genero VALUES ('Rap', 'https://image.flaticon.com/icons/png/512/122/122845.png');
INSERT INTO Genero VALUES ('Reggaeton', 'https://w7.pngwing.com/pngs/511/830/png-transparent-reggaeton-music-desafio-mix-pa-que-retozen-sandungueo-reggaeton.png');

SELECT * FROM Genero;

INSERT INTO Autor VALUES ('A tribe called quest', 'https://ep01.epimg.net/cultura/imagenes/2020/03/06/babelia/1583511577_395907_1583513774_noticia_normal.jpg');
INSERT INTO Autor VALUES ('Aventura', 'https://lh3.googleusercontent.com/proxy/a3Y1sGQKkZuxY_-Tq5zfDx1w-hK14grAyh5g-1Qhfxo4WQwct3D1yPrNADTBLXx9uLxYxkJ9oE094PaOP6yvTNw4yP6L0mmOZJc04X3bVjVYbeHG6mCsLw');
INSERT INTO Autor VALUES ('Bad bunny', 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Bad_Bunny_2019_by_Glenn_Francis_%28cropped%29.jpg');
INSERT INTO Autor VALUES ('Billie Eilish', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Billie_Eilish_2019_by_Glenn_Francis_%28cropped%29_2.jpg/1200px-Billie_Eilish_2019_by_Glenn_Francis_%28cropped%29_2.jpg');
INSERT INTO Autor VALUES ('Calle 13', 'https://elpais.com/cultura/imagenes/2020/02/28/ruta_norteamericana/1582915799_640199_1582918034_noticia_fotograma.jpg');
INSERT INTO Autor VALUES ('Daft punk', 'https://www.laguiago.com/wp-content/uploads/2021/02/Daft-Punk-1.jpg');
INSERT INTO Autor VALUES ('Don omar', 'https://upload.wikimedia.org/wikipedia/commons/0/02/Don_Omar_with_his_sunglasses_%28cropped%29.jpg');
INSERT INTO Autor VALUES ('Dua lipa', 'https://quenoticias.com/wp-content/uploads/2021/01/dua-lipa-610x460.jpg');
INSERT INTO Autor VALUES ('Foster the people', 'https://upload.wikimedia.org/wikipedia/commons/4/44/2011_MuchMusic_Video_Awards_-_Foster_the_People.jpg');
INSERT INTO Autor VALUES ('Greenday', 'https://media.resources.festicket.com/www/artists/GreenDay.jpg');
INSERT INTO Autor VALUES ('Harry Styles', 'https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/e/f/8/a/ef8a0cb94166d9830af93aad8092fbe5.jpg');
INSERT INTO Autor VALUES ('Honne', 'https://yt3.ggpht.com/ytc/AAUvwng96QyaPH6IUnGRs6JELtmxi9E5IwPrmEP6SMHBKg=s900-c-k-c0x00ffffff-no-rj');
INSERT INTO Autor VALUES ('Jon Bellion', 'https://www.capitolrecords.com/files/2021/01/featured-jon-bellion-compressed.jpg');
INSERT INTO Autor VALUES ('Katy Perry', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Katy_Perry_2019_by_Glenn_Francis.jpg/1200px-Katy_Perry_2019_by_Glenn_Francis.jpg');
INSERT INTO Autor VALUES ('Kodak Black', 'https://www.sun-sentinel.com/resizer/H9liiTPlnognxVzmBW0g0HD7n54=/1200x0/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/QPL6FX4LN5C3BE6KQY4NNM7FJU.jpg');
INSERT INTO Autor VALUES ('Little jesus', 'https://pbs.twimg.com/profile_images/1314605265723949058/mpCuqz4A_400x400.jpg');
INSERT INTO Autor VALUES ('Maneskin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Maneskin_2019.jpg/1200px-Maneskin_2019.jpg');
INSERT INTO Autor VALUES ('Miley Cyrus', 'https://upload.wikimedia.org/wikipedia/commons/5/52/Miley_Cyrus_Primavera19_-226_%2848986293772%29_%28cropped%29.jpg');
INSERT INTO Autor VALUES ('Muse', 'https://elrockescultura.com/wp-content/uploads/2018/02/Muse.jpg');
INSERT INTO Autor VALUES ('My Chemical Romance', 'https://www.todorock.com/wp-content/uploads/2019/11/my-chemical-romance.jpg.webp');
INSERT INTO Autor VALUES ('Nothing But Thieves', 'https://cdns-images.dzcdn.net/images/artist/4ccbe7a981e7b27aada80075b112c7fa/500x500.jpg');
INSERT INTO Autor VALUES ('Olivia Rodrigo', 'https://www.eltiempo.com/files/image_640_428/files/crop/uploads/2021/02/05/601dd2667e066.r_1612680183909.0-69-3000-1559.jpeg');
INSERT INTO Autor VALUES ('Red Hot Chili Peppers', 'https://wikirock.net/wp-content/uploads/2021/02/LPPBAXIDCFHFPEAVXPWFY5Z6BA.jpg');
INSERT INTO Autor VALUES ('Rex orange country', 'https://www.mondosonoro.com/wp-content/uploads/2019/10/rex-orange-county-pony.jpg');
INSERT INTO Autor VALUES ('Romeo Santos', 'https://cdns-images.dzcdn.net/images/artist/27c204497e5c7e95fcf6e83c11e741a7/500x500.jpg');
INSERT INTO Autor VALUES ('Simple plan', 'https://elcronistaindependiente.com/wp-content/uploads/2020/03/Simple-Plan.jpg');
INSERT INTO Autor VALUES ('Skrillex', 'https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/b/f/2/9/bf29afce46f5f155dd5aae2e7e36408d.jpg');
INSERT INTO Autor VALUES ('The black eyed peas', 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Black_Eyed_Peas_performing_at_O2_Apollo_Manchester_Nov2018.jpeg');
INSERT INTO Autor VALUES ('The neighbourhood', 'https://canchageneral.com/wp-content/uploads/2018/03/thye-neighbourhood.jpg');
INSERT INTO Autor VALUES ('Twenty One Pilots', 'https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/5/d/2/c/5d2c5e38f33c2727797b2ee7911668b3.jpg');
INSERT INTO Autor VALUES ('Zomboy', 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Zomboy-tickets_12-28-14_17_5460fdb612.jpg');
INSERT INTO Autor VALUES ('Bee Gees', 'https://ep01.epimg.net/cultura/imagenes/2021/02/01/ruta_norteamericana/1612204113_112263_1612204328_noticia_normal.jpg');

SELECT * FROM Autor;

INSERT INTO Region VALUES ('América');
INSERT INTO Region VALUES ('África');
INSERT INTO Region VALUES ('Europa');
INSERT INTO Region VALUES ('Asía');
INSERT INTO Region VALUES ('Oceanía');

SELECT * FROM Region;

INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 1), (SELECT $node_id FROM Autor WHERE ID = 32));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 2), (SELECT $node_id FROM Autor WHERE ID = 21));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 3), (SELECT $node_id FROM Autor WHERE ID = 21));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 4), (SELECT $node_id FROM Autor WHERE ID = 30));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 5), (SELECT $node_id FROM Autor WHERE ID = 13));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 6), (SELECT $node_id FROM Autor WHERE ID = 13));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 7), (SELECT $node_id FROM Autor WHERE ID = 8));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 8), (SELECT $node_id FROM Autor WHERE ID = 8));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 9), (SELECT $node_id FROM Autor WHERE ID = 18));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 10), (SELECT $node_id FROM Autor WHERE ID = 18));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 11), (SELECT $node_id FROM Autor WHERE ID = 2));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 12), (SELECT $node_id FROM Autor WHERE ID = 24));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 13), (SELECT $node_id FROM Autor WHERE ID = 15));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 14), (SELECT $node_id FROM Autor WHERE ID = 2));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 15), (SELECT $node_id FROM Autor WHERE ID = 30));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 16), (SELECT $node_id FROM Autor WHERE ID = 30));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 17), (SELECT $node_id FROM Autor WHERE ID = 4));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 18), (SELECT $node_id FROM Autor WHERE ID = 4));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 19), (SELECT $node_id FROM Autor WHERE ID = 17));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 20), (SELECT $node_id FROM Autor WHERE ID = 29));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 21), (SELECT $node_id FROM Autor WHERE ID = 11));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 22), (SELECT $node_id FROM Autor WHERE ID = 27));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 23), (SELECT $node_id FROM Autor WHERE ID = 31));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 24), (SELECT $node_id FROM Autor WHERE ID = 22));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 25), (SELECT $node_id FROM Autor WHERE ID = 23));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 26), (SELECT $node_id FROM Autor WHERE ID = 23));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 27), (SELECT $node_id FROM Autor WHERE ID = 27));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 28), (SELECT $node_id FROM Autor WHERE ID = 5));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 29), (SELECT $node_id FROM Autor WHERE ID = 5));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 30), (SELECT $node_id FROM Autor WHERE ID = 28));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 31), (SELECT $node_id FROM Autor WHERE ID = 28));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 32), (SELECT $node_id FROM Autor WHERE ID = 28));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 33), (SELECT $node_id FROM Autor WHERE ID = 19));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 34), (SELECT $node_id FROM Autor WHERE ID = 10));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 35), (SELECT $node_id FROM Autor WHERE ID = 22));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 36), (SELECT $node_id FROM Autor WHERE ID = 19));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 37), (SELECT $node_id FROM Autor WHERE ID = 6));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 38), (SELECT $node_id FROM Autor WHERE ID = 20));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 39), (SELECT $node_id FROM Autor WHERE ID = 20));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 40), (SELECT $node_id FROM Autor WHERE ID = 26));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 41), (SELECT $node_id FROM Autor WHERE ID = 14));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 42), (SELECT $node_id FROM Autor WHERE ID = 7));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 43), (SELECT $node_id FROM Autor WHERE ID = 3));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 44), (SELECT $node_id FROM Autor WHERE ID = 7));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 45), (SELECT $node_id FROM Autor WHERE ID = 5));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 46), (SELECT $node_id FROM Autor WHERE ID = 2));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 47), (SELECT $node_id FROM Autor WHERE ID = 25));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 48), (SELECT $node_id FROM Autor WHERE ID = 16));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 49), (SELECT $node_id FROM Autor WHERE ID = 1));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 50), (SELECT $node_id FROM Autor WHERE ID = 12));
INSERT INTO pertenece_a VALUES ((SELECT $node_id FROM Cancion WHERE ID = 51), (SELECT $node_id FROM Autor WHERE ID = 12));

SELECT * FROM pertenece_a;

INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 1), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 2), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 3), (SELECT $node_id FROM Genero WHERE ID = 11));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 4), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 5), (SELECT $node_id FROM Genero WHERE ID = 11));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 6), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 7), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 8), (SELECT $node_id FROM Genero WHERE ID = 4));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 9), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 10), (SELECT $node_id FROM Genero WHERE ID = 9));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 11), (SELECT $node_id FROM Genero WHERE ID = 9));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 12), (SELECT $node_id FROM Genero WHERE ID = 9));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 13), (SELECT $node_id FROM Genero WHERE ID = 9));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 14), (SELECT $node_id FROM Genero WHERE ID = 4));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 15), (SELECT $node_id FROM Genero WHERE ID = 4));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 16), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 17), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 18), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 19), (SELECT $node_id FROM Genero WHERE ID = 8));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 20), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 21), (SELECT $node_id FROM Genero WHERE ID = 6));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 22), (SELECT $node_id FROM Genero WHERE ID = 6));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 23), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 24), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 25), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 26), (SELECT $node_id FROM Genero WHERE ID = 6));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 27), (SELECT $node_id FROM Genero WHERE ID = 9));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 28), (SELECT $node_id FROM Genero WHERE ID = 9));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 29), (SELECT $node_id FROM Genero WHERE ID = 11));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 30), (SELECT $node_id FROM Genero WHERE ID = 11));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 31), (SELECT $node_id FROM Genero WHERE ID = 11));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 32), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 33), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 34), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 35), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 36), (SELECT $node_id FROM Genero WHERE ID = 6));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 37), (SELECT $node_id FROM Genero WHERE ID = 7));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 38), (SELECT $node_id FROM Genero WHERE ID = 7));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 39), (SELECT $node_id FROM Genero WHERE ID = 7));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 40), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 41), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 42), (SELECT $node_id FROM Genero WHERE ID = 10));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 43), (SELECT $node_id FROM Genero WHERE ID = 10));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 44), (SELECT $node_id FROM Genero WHERE ID = 10));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 45), (SELECT $node_id FROM Genero WHERE ID = 10));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 46), (SELECT $node_id FROM Genero WHERE ID = 5));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 47), (SELECT $node_id FROM Genero WHERE ID = 5));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 48), (SELECT $node_id FROM Genero WHERE ID = 1));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 49), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 50), (SELECT $node_id FROM Genero WHERE ID = 3));
INSERT INTO de_genero VALUES ((SELECT $node_id FROM Cancion WHERE ID = 51), (SELECT $node_id FROM Genero WHERE ID = 3));

SELECT * FROM de_genero;

-------------------------------------------------

SELECT Cancion.nombre FROM Persona, likes, Cancion WHERE MATCH(Persona-(likes)->Cancion) AND Persona.nombre = 'Oscar';

SELECT Cancion.nombre FROM Persona persona1, Persona persona2, likes, amigo_de, Cancion WHERE MATCH(persona1-(amigo_de)->persona2-(likes)->Cancion) AND persona1.nombre = 'Oscar';

SELECT Cancion.nombre FROM Cancion, localizado_en, Pais WHERE MATCH(Cancion-(localizado_en)->Pais) AND Pais.nombre = 'USA';