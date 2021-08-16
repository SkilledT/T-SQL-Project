-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-01-12 21:04:46.987

-- tables
-- Table: Acc_Hist
CREATE TABLE Acc_Hist (
    ID_suspension int  NOT NULL,
    Type varchar(30)  NOT NULL,
    CONSTRAINT Acc_Hist_pk PRIMARY KEY  (ID_suspension)
);

-- Table: Champion
CREATE TABLE Champion (
    ID_champion int  NOT NULL,
    Name varchar(30)  NOT NULL,
    Role varchar(30)  NOT NULL,
    CONSTRAINT Champion_pk PRIMARY KEY  (ID_champion)
);

-- Table: GAME
CREATE TABLE GAME (
    ID_GAME int  NOT NULL,
    ID_player int  NOT NULL,
    ID_Team int  NOT NULL,
    Start_Match date  NOT NULL,
    End_Match date  NULL,
    ID_Team_Winner int  NULL,
    CONSTRAINT GAME_pk PRIMARY KEY  (ID_GAME,ID_player)
);

-- Table: Player
CREATE TABLE Player (
    ID_player int  NOT NULL,
    Nickname varchar(30)  NOT NULL,
    Mail varchar(30)  NOT NULL,
    ID_rank int  NOT NULL,
    Matches int  NOT NULL,
    Status varchar(30)  NOT NULL,
    Blue_Essences int  NOT NULL,
    MMR int  NOT NULL,
    CONSTRAINT Player_pk PRIMARY KEY  (ID_player)
);

-- Table: Player_Acc_Hist
CREATE TABLE Player_Acc_Hist (
    ID_player int  NOT NULL,
    ID_suspension int  NOT NULL,
    Start_Suspension date  NOT NULL,
    End_Suspension date  NOT NULL,
    Admin_Comment varchar(30)  NOT NULL,
    CONSTRAINT Player_Acc_Hist_pk PRIMARY KEY  (ID_player,ID_suspension,Start_Suspension,End_Suspension)
);

-- Table: Player_Champion
CREATE TABLE Player_Champion (
    ID_player int  NOT NULL,
    ID_champion int  NOT NULL,
    CONSTRAINT Player_Champion_pk PRIMARY KEY  (ID_player,ID_champion)
);

-- Table: Rank
CREATE TABLE Rank (
    ID_rank int  NOT NULL,
    Name varchar(30)  NOT NULL,
    CONSTRAINT Rank_pk PRIMARY KEY  (ID_rank)
);

-- Table: Rank_MMR
CREATE TABLE Rank_MMR (
    ID_rank int  NOT NULL,
    Hisal int  NOT NULL,
    Losal int  NOT NULL,
    CONSTRAINT Rank_MMR_pk PRIMARY KEY  (ID_rank)
);

-- Table: Skin
CREATE TABLE Skin (
    ID_skin int  NOT NULL,
    Name varchar(30)  NOT NULL,
    ID_champion int  NOT NULL,
    CONSTRAINT Skin_pk PRIMARY KEY  (ID_skin)
);

-- Table: Team
CREATE TABLE Team (
    ID_Team int  NOT NULL,
    Name varchar(30)  NOT NULL,
    CONSTRAINT Team_pk PRIMARY KEY  (ID_Team)
);

-- foreign keys
-- Reference: GAME_Player (table: GAME)
ALTER TABLE GAME ADD CONSTRAINT GAME_Player
    FOREIGN KEY (ID_player)
    REFERENCES Player (ID_player);

-- Reference: GAME_Team (table: GAME)
ALTER TABLE GAME ADD CONSTRAINT GAME_Team
    FOREIGN KEY (ID_Team_Winner)
    REFERENCES Team (ID_Team);

-- Reference: GAME_Team_1 (table: GAME)
ALTER TABLE GAME ADD CONSTRAINT GAME_Team_1
    FOREIGN KEY (ID_Team)
    REFERENCES Team (ID_Team);

-- Reference: Player_Acc_Hist_Acc_Hist (table: Player_Acc_Hist)
ALTER TABLE Player_Acc_Hist ADD CONSTRAINT Player_Acc_Hist_Acc_Hist
    FOREIGN KEY (ID_suspension)
    REFERENCES Acc_Hist (ID_suspension);

-- Reference: Player_Acc_Hist_Player (table: Player_Acc_Hist)
ALTER TABLE Player_Acc_Hist ADD CONSTRAINT Player_Acc_Hist_Player
    FOREIGN KEY (ID_player)
    REFERENCES Player (ID_player);

-- Reference: Player_Champion_Champion (table: Player_Champion)
ALTER TABLE Player_Champion ADD CONSTRAINT Player_Champion_Champion
    FOREIGN KEY (ID_champion)
    REFERENCES Champion (ID_champion);

-- Reference: Player_Champion_Player (table: Player_Champion)
ALTER TABLE Player_Champion ADD CONSTRAINT Player_Champion_Player
    FOREIGN KEY (ID_player)
    REFERENCES Player (ID_player);

-- Reference: Player_Rank (table: Player)
ALTER TABLE Player ADD CONSTRAINT Player_Rank
    FOREIGN KEY (ID_rank)
    REFERENCES Rank (ID_rank);

-- Reference: Ranga_MMR_Rank (table: Rank_MMR)
ALTER TABLE Rank_MMR ADD CONSTRAINT Ranga_MMR_Rank
    FOREIGN KEY (ID_rank)
    REFERENCES Rank (ID_rank);

-- Reference: Skin_Champion (table: Skin)
ALTER TABLE Skin ADD CONSTRAINT Skin_Champion
    FOREIGN KEY (ID_champion)
    REFERENCES Champion (ID_champion);

-- End of file.

