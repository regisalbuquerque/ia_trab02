/*
Crie uma base de dados de sentenças atômicas sobre os filmes de 2021 usando os seguintes
predicados:
atuouem(pessoa, filme).
dirigiu(pessoa, filme).
genero(filme, genero).
duracao(filme, minutos).

Para descrever nomes de filmes e de pessoas você pode usar strings com aspas (p.ex. ’The Big
Lebowski’).

Salve sua base de dados como um programa Prolog e a carregue. Então escreva consultas do tipo:
1. O ator X atuou no filme Y? (observe que você deve decidir quem são X e Y, não são variáveis)
2. Quem dirigiu o filme Y?
3. Quem atuou no filme Y e no filme Z?
4. Algum filme não teve a atuação da atriz X?
5. Quem dirigiu mais de um filme (use ; para a resposta).
6. Qual filme teve mais de um diretor?
7. Qual ator trabalhou com o mesmo diretor mais de uma vez?

Ex:
atuouem('Leonardo DiCaprio',X)
atuouem('Leonardo DiCaprio','Roma')
atuouem('Leonardo DiCaprio','Inception')
atuouem('Jim Caviezel','Inception')
atuouem('Jim Caviezel','The passion of the Christ')
dirigiu(X,'The passion of the Christ')
dirigiu('David Yates',X)
dirigiu(X,Y)
duracao(X,'90')
duracao(X,Y)
genero(X,'Religioso')
atuouem('Russell Crowe', A), atuouem('Brad Pitt', A)
dirigiu('David Yates', A), atuouem('Brad Pitt', A)
dirigiu('David Yates', A), atuouem('Daniel Radcliffe', A)


Criar a base de conhecimento sobre filmes conforme slide 28 da aula de Prolog. 
Você pode escolher 50 filmes para popular sua base de conhecimento e 5 (distintos) para 
responder as perguntas. 
Você pode fazer um parser para construir a base no formato Prolog, a partir, por exemplo, 
da base do IMDB.

A lista foi montada tomando como base as recomendações comentadas do IMDb, apresentando entre diversos
títulos clássicos, e de extrema repercussão positiva. Não apresentamos listas de nomes multiplos nos predicados
atuouem() e dirigiu() dessa forma em que as perguntas aplicadas a esse contexto retornam sempre false.


*/

atuouem('Christian Bale', 'The dark knight').
atuouem('Natalie Portman', 'Black swan').
atuouem('Lisa Adam', 'The great Gatsby').
atuouem('Omar Sy', 'Intouchables').
atuouem('Hailee Steinfeld', 'True grit').
atuouem('Bill Murray', 'The Grand Budapest Hotel').
atuouem('Harrison Ford', 'Star Wars: Episode VII - The Force Awakens').
atuouem('Mel Gibson', 'Mad Max: Fury Road').
atuouem('Tom Hanks', 'Bridge of spies').
atuouem('Yalitza Aparicio', 'Roma').
atuouem('Anthony Hopkins', 'Two popes').
atuouem('Robert De Niro', 'Joker').
atuouem('Daniel Craig', 'Skyfall').
atuouem('Jamie Foxx', 'Django unchained').
atuouem('Daniel Day-Lewis', 'Lincoln').
atuouem('Ben Kingsley', 'Hugo').
atuouem('Tom Cruise', 'MI ghost protocol').
atuouem('Leonardo DiCaprio', 'Inception').
atuouem('Lin-Manuel Miranda', 'Hamilton').
atuouem('Leonardo DiCaprio', 'Shutter island').
atuouem('Benicio Del Toro', 'The wolfman').
atuouem('Sam Worthington', 'Avatar').
atuouem('Daniel Radcliffe', 'Harry Potter and the Half-Blood Prince').
atuouem('Leonard Nimoy', 'Star trek').
atuouem('Clint Eastwood', 'Gran Torino').
atuouem('Robert Downey Jr', 'Iron Man').
atuouem('Colin Farrell', 'In bruges').
atuouem('Brad Pitt', 'The curious case of Benjamin Button').
atuouem('Mickey Rourke', 'The wrestler').
atuouem('Russell Crowe', 'Body of lies').
atuouem('Daniel Craig', 'Defiance').
atuouem('Sacha Baron Cohen', 'Borat Sagdiyev').
atuouem('Simon Pegg', 'Hot Fuzz').
atuouem('Daniel Radcliffe', 'Harry Potter and the Order of the Phoenix').
atuouem('Elliot Page', 'Juno').
atuouem('Denzel Washington', 'American gangster').
atuouem('Matt Damon', 'The Bourne Ultimatum').
atuouem('Johnny Depp', 'Pirates of the Caribbean: At Worlds End').
atuouem('Daniel Craig', 'Casino Royale').
atuouem('Helen Mirren', 'The Queen').
atuouem('Leonardo DiCaprio', 'Blood diamond').
atuouem('Meryl Streep', 'The devil wears Prada').
atuouem('Ivana Baquero', 'El laberinto del fauno').
atuouem('Christopher Lee', 'The wicker man').
atuouem('Forest Whitaker', 'The last king of Scotland').
atuouem('Jack Nicholson', 'The departed').
atuouem('Johnny Depp', 'Pirates of the Caribbean: Dead Mans Chest').
atuouem('Johnny Depp', 'Charlie and the Chocolate Factory').
atuouem('Jay Hernandez', 'Hostel').
atuouem('Jim Caviezel', 'The passion of the Christ').

dirigiu('Christopher Nolan', 'The dark knight').
dirigiu('Darren Aronofsky', 'Black swan').
dirigiu('Baz Luhrmann', 'The great Gatsby').
dirigiu('Olivier Nakache', 'Intouchables').
dirigiu('Joel e Ethan Cohen', 'True grit').
dirigiu('Wes Anderson', 'The Grand Budapest Hotel').
dirigiu('J. J. Abrams', 'Star Wars: Episode VII - The Force Awakens').
dirigiu('George Miller', 'Mad Max: Fury Road').
dirigiu('Steven Spielberg', 'Bridge of spies').
dirigiu('Alfonso Cuaron', 'Roma').
dirigiu('Fernando Meirelles', 'Two popes').
dirigiu('Todd Phillips', 'Joker').
dirigiu('Sam Mendes', 'Skyfall').
dirigiu('Quentin Tarantino', 'Django unchained').
dirigiu('Steven Spielberg', 'Lincoln').
dirigiu('Martin Scorsese', 'Hugo').
dirigiu('Brad Bird', 'MI ghost protocol').
dirigiu('Christopher Nolan', 'Inception').
dirigiu('Thomas Kail', 'Hamilton').
dirigiu('Martin Scorsese', 'Shutter island').
dirigiu('Joe Johnston', 'The wolfman').
dirigiu('James Cameron', 'Avatar').
dirigiu('David Yates', 'Harry Potter and the Half-Blood Prince').
dirigiu('J. J. Abrams', 'Star trek').
dirigiu('Clint Eastwood', 'Gran Torino').
dirigiu('Jon Favreau', 'Iron Man').
dirigiu('Martin McDonagh', 'In bruges').
dirigiu('David Fincher', 'The curious case of Benjamin Button').
dirigiu('Darren Aronofsky', 'The wrestler').
dirigiu('Ridley Scott', 'Body of lies').
dirigiu('Edward Zwick', 'Defiance').
dirigiu('Larry Charles', 'Borat Sagdiyev').
dirigiu('Edgar Wright', 'Hot Fuzz').
dirigiu('David Yates', 'Harry Potter and the Order of the Phoenix').
dirigiu('Jason Reitman', 'Juno').
dirigiu('Ridley Scott', 'American gangster').
dirigiu('Paul Greengrass', 'The Bourne Ultimatum').
dirigiu('Gore Verbinski', 'Pirates of the Caribbean: At Worlds End').
dirigiu('Martin Campbell', 'Casino Royale').
dirigiu('Stephen Frears', 'The Queen').
dirigiu('Edward Zwick', 'Blood diamond').
dirigiu('David Frankel', 'The devil wears Prada').
dirigiu('Guilherme Del Toro', 'El laberinto del fauno').
dirigiu('Neil LaBute', 'The wicker man').
dirigiu('Kevin MacDonald', 'The last king of Scotland').
dirigiu('Martin Scorsese', 'The departed').
dirigiu('Gore Verbinski', 'Pirates of the Caribbean: Dead Mans Chest').
dirigiu('Tim Burton', 'Charlie and the Chocolate Factory').
dirigiu('Eli Roth', 'Hostel').
dirigiu('Mel Gibson', 'The passion of the Christ').

genero('The dark knight', 'Aventura').
genero('Black swan', 'Drama').
genero('The great Gatsby', 'Drama').
genero('Intouchables', 'Drama').
genero('True grit', 'Western').
genero('The Grand Budapest Hotel', 'Comedia').
genero('Star Wars: Episode VII - The Force Awakens', 'Ficcao').
genero('Mad Max: Fury Road', 'Aventura').
genero('Bridge of spies', 'Aventura').
genero('Roma', 'Drama').
genero('Two popes', 'Drama').
genero('Joker', 'Ficcao').
genero('Skyfall', 'Aventura').
genero('Django unchained', 'Western').
genero('Lincoln', 'Drama').
genero('Hugo', 'Drama').
genero('MI ghost protocol', 'Aventura').
genero('Inception', 'Aventura').
genero('Hamilton', 'Drama').
genero('Shutter island', 'Drama').
genero('The wolfman', 'Terror').
genero('Avatar', 'Ficcao').
genero('Harry Potter and the Half-Blood Prince', 'Aventura').
genero('Star trek', 'Ficcao').
genero('Gran Torino', 'Drama').
genero('Iron Man', 'Acao').
genero('In bruges', 'Drama').
genero('The curious case of Benjamin Button', 'Drama').
genero('The wrestler', 'Drama').
genero('Body of lies', 'Drama').
genero('Defiance', 'Guerra').
genero('Borat Sagdiyev', 'Comedia').
genero('Hot Fuzz', 'Aventura').
genero('Harry Potter and the Order of the Phoenix', 'Aventura').
genero('Juno', 'Animacao').
genero('American gangster', 'Policial').
genero('The Bourne Ultimatum', 'Suspense').
genero('Pirates of the Caribbean: At Worlds End', 'Aventura').
genero('Casino Royale', 'Aventura').
genero('The Queen', 'Drama').
genero('Blood diamond', 'Drama').
genero('The devil wears Prada', 'Comedia').
genero('El laberinto del fauno', 'Aventura').
genero('The wicker man', 'Suspense').
genero('The last king of Scotland', 'Aventua').
genero('The departed', 'Drama').
genero('Pirates of the Caribbean: Dead Mans Chest', 'Aventura').
genero('Charlie and the Chocolate Factory', 'Aventura').
genero('Hostel', 'Suspense').
genero('The passion of the Christ', 'Religioso').

duracao('The dark knight', '90').
duracao('Black swan', '88').
duracao('The great Gatsby', '88').
duracao('Intouchables', '90').
duracao('True grit', '90').
duracao('The Grand Budapest Hotel', '90').
duracao('Star Wars: Episode VII - The Force Awakens', '120').
duracao('Mad Max: Fury Road', '105').
duracao('Bridge of spies', '100').
duracao('Roma', '88').
duracao('Two popes', '88').
duracao('Joker', '100').
duracao('Skyfall', '96').
duracao('Django unchained', '105').
duracao('Lincoln', '96').
duracao('Hugo', '90').
duracao('MI ghost protocol', '90').
duracao('Inception', '100').
duracao('Hamilton', '95').
duracao('Shutter island', '88').
duracao('The wolfman', '90').
duracao('Avatar', '120').
duracao('Harry Potter and the Half-Blood Prince', '115').
duracao('Star trek', '120').
duracao('Gran Torino', '96').
duracao('Iron Man', '100').
duracao('In bruges', '100').
duracao('The curious case of Benjamin Button', '96').
duracao('The wrestler', '88').
duracao('Body of lies', '86').
duracao('Defiance', '88').
duracao('Borat Sagdiyev', '80').
duracao('Hot Fuzz', '90').
duracao('Harry Potter and the Order of the Phoenix', '100').
duracao('Juno', '80').
duracao('American gangster', '100').
duracao('The Bourne Ultimatum', '96').
duracao('Pirates of the Caribbean: At Worlds End', '115').
duracao('Casino Royale', '105').
duracao('The Queen', '90').
duracao('Blood diamond', '85').
duracao('The devil wears Prada', '96').
duracao('El laberinto del fauno', '100').
duracao('The wicker man', '88').
duracao('The last king of Scotland', '90').
duracao('The departed', '110').
duracao('Pirates of the Caribbean: Dead Mans Chest', '120').
duracao('Charlie and the Chocolate Factory', '110').
duracao('Hostel', '100').
duracao('The passion of the Christ', '120').
