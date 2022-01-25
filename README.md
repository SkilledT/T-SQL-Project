# T-SQL-Project

The point of the project was to create ERD diagram, two procedures and triggers in T-SQL.

Sample procedure and trigger:

Procedure:  
1. Change status of player to 'In Queue'
2. If there are 6 players with the same rank, as the player queuing up the game is being created  
3. First three of them are added to red team and the others to the blue team  
4. Procedure should verify if player who is trying to queue up doesn't have any suspension on his account. If he does there should be displayed announcement about it and procedure should 5.exit with error.  
  
Trigger:  
Insert:  
1. Check if in every game there are 6 players. If not - the game should be removed.   
2. Change status of all players to 'In Game'  
  
Update:  
1. The only columns that can be update are end_match and id_team_winner if the value is null  
2. While updating value of result_match column, value of blue_essence column should be changed - for victory (V) player gains 100BE*lvl, for defeat (D) player gains 5BE*lvl. The value of current MMR every player also should be updated depending on the difference average mmr of player in each team.  
3. Player with rank 'unranked' should get 30 MMR points more for victory and losing 15 MMR points less for a loss.  
4. After updating match result status of players should be changed to 'Online'  
  
Delete:  
1. Games that has not been finished yet (null value in end_match) cannot be deleted.  
