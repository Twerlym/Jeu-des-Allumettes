program Matches ;

uses crt ;

const 
	rand = 2 ;

var
	bot, allumettes, choix : integer ; 	// Declaration des variables.
	NamePlayer : string ;


begin 

	randomize ;
	clrscr ;
	allumettes := 21 ; // Affectation du nombre d'allumettes.


	writeln ('Matches Puzzle Game') ; // Introduction du jeu.
	writeln ;
	writeln ('Two players are sharing a pile of 21 matches.') ;
	writeln ('Alternatively, they have to take off, one, two or three matches. The player that take off the last matche loses the game.') ;
	writeln ;
	writeln ('Press Enter to launch the game.') ;
	readln ;
	clrscr ;



	repeat

		////////// Player 1 //////////

		writeln ('C`est à vous de jouer.') ;				 
		writeln ('Entrez le nombre d`allumettes à retirer.') ; 

 		if (choix < 1) or (choix > 3) then 	// Boucle de validation de la saiife de l'user.

        	begin

	            writeln ('Faux, veuillez entrer un nombre entre 1 et 3.') ;
	            readln ;

        	end

        else if (choix > = 1) and (choix < = 3) then	

		allumettes := (allumettes - choix) ;					// Exemple : 21 - 3.
		writeln ('Il reste : ', allumettes 'allumettes.')  		// Reste 18.

			if (allumettes <= 0) then 							// L'user perd if le nombre d'allumettes est inférieur à 0.
				writeln ('Vous avez perdu !')					// Etant donné qu'il y a 18 allumettes, le jeu ne s'arrête pas encore.  
	



		////////// BOT //////////

		writeln ('C`est au tour de l`ordinateur.') 				// 18 - 3 (on imagine que le bot a fait 3).
		bot = (ALEATOIRE(rand)+1) 
		allumettes = allumettes - bot 
		writeln ('Il reste : ', allumettes 'allumettes.') 

			if (allumettes <= 0) then 							
				writeln ('Vous avez gagné !')  					// Répétition de la boucle tant que le nombre d'allumettes est supérieur à 0.


	until (allumettes <= 1)




end.







