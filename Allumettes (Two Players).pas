program Matches ;

uses crt ;


var
	allumettes, choix, player : integer ; 	// Declaration des variables.



begin 

	clrscr ;
	player := 1 ;
	allumettes := 21 ; // Affectation du nombre d'allumettes.


	writeln ('Matches Puzzle Game') ; // Introduction du jeu.
	writeln ;
	writeln ('Two players are sharing a pile of 21 matches.') ;
	writeln ('Alternatively, they have to take off, one, two or three matches. The player that take off the last matche loses the game.') ;
	writeln ;
	writeln ('Press Enter to launch the game.') ;
	clrscr ;



	repeat

        writeln ('It is ', player, ' `s turn.') ;
        writeln ;
        writeln ('Enter the number of matches that you want to take off.') ;

        readln (choix) ;

        if (choix < 1) or (choix > 3) then 	// Boucle de validation de la saisie de l'user.

        	begin

	            writeln ('Wrong number. Please enter a number between 1 and 3.') ;
	            readln ;

        	end

        else if (choix >= 1) and (choix <= 3) then

        	begin

	            writeln ('You took off ', choix, ' matche(s).') ;

	            allumettes:=allumettes-choix ;

	            if (player = 1) then  // Pour savoir à quel joueur revient le tour. 

	            	begin

	                	player := 2 ;

	            	end

	            else if (player = 2) then

	            	begin

	                	player := 1 ;

	            	end

        end

   	until (allumettes <= 1) ; // Boucle de fin du jeu.

    if (player = 1) then 	// Pour savoir qui a gagné.

        writeln ('Player 2 has won.')

    else
        writeln ('Player 1 has won.') ;

    readln ;

end.







