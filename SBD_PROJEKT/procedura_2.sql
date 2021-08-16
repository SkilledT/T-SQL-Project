CREATE PROCEDURE ADD_NEW_PLAYER
	@NICKNAME VARCHAR(30), @MAIL VARCHAR(30)
AS
	BEGIN
		DECLARE @MAX_ID_PLAYER INT, @ID_RANK_UNRANKED INT
		SELECT @MAX_ID_PLAYER = MAX(ID_PLAYER) FROM PLAYER
		SET @MAX_ID_PLAYER = @MAX_ID_PLAYER + 1
		SELECT @ID_RANK_UNRANKED = ID_RANK FROM RANK WHERE NAME = 'UNRANKED'
		
		IF NOT EXISTS (SELECT 1 FROM PLAYER WHERE NICKNAME = @NICKNAME)
		BEGIN
			-- KAZDY NOWY PLAYER POWINIEN MIEC ID > O 1 OD NAJWIEKSZEGO, NICKNAME NIE MOZE SIE ZAWIERAC W BAZIE, ORAZ OTRZYMYJE 2000 BE, 1200 MMR ORAZ RANK 'UNRANKED' 
			INSERT INTO PLAYER VALUES (@MAX_ID_PLAYER, @NICKNAME, @MAIL, @ID_RANK_UNRANKED, 0, 'ONLINE', 2000, 1200)
			-- KAZDY NOWY PLAYER POWINIEN MIEC KILKU CHAMPIONOW NA START, KTORYCH NALEZY DODAC
			-- NIECH TO BEDA ANNIE, AHRI ORAZ FIZZ
			DECLARE @ID_FIZZ INT, @ID_ANNIE INT, @ID_AHRI INT
			SELECT @ID_FIZZ = ID_CHAMPION FROM CHAMPION WHERE NAME = 'FIZZ'
			SELECT @ID_ANNIE = ID_CHAMPION FROM CHAMPION WHERE NAME = 'ANNIE'
			SELECT @ID_AHRI = ID_CHAMPION FROM CHAMPION WHERE NAME = 'AHRI'
			
			INSERT INTO PLAYER_CHAMPION (ID_PLAYER, ID_CHAMPION) VALUES (@MAX_ID_PLAYER, @ID_FIZZ)
			INSERT INTO PLAYER_CHAMPION (ID_PLAYER, ID_CHAMPION) VALUES (@MAX_ID_PLAYER, @ID_ANNIE)
			INSERT INTO PLAYER_CHAMPION (ID_PLAYER, ID_CHAMPION) VALUES (@MAX_ID_PLAYER, @ID_AHRI)
		END
		ELSE
        BEGIN
			PRINT 'PODANY NICKNAME JEST ZAJETY'
		END
	END