lc([_,_,_,_,_]).
la([_,_,_,_,_]).
lp([_,_,_,_,_]).
ln([norvegien,_,_,_,_]).
lb([_,_,lait,_,_]).

meme_maison(X,[X|_],Y,[Y|_]).
meme_maison(X,[_|T],Y,[_|U]):- meme_maison(X,T,Y,U).

maison_a_cote(X,[X,_|_],Y,[_,Y|_]).
maison_a_cote(X,[_,X|_],Y,[Y,_|_]).
maison_a_cote(X,[_|T],Y,[_|U]):- maison_a_cote(X,T,Y,U).

maison_a_droite(X,Y,[X,Y|_]).
maison_a_droite(X,Y,[_|T]):- maison_a_droite(X,Y,T).

zebre(C,N,B,A,P,PossZebre,BoitDuVin):-
	lc(C),la(A),lp(P),ln(N),lb(B),
	meme_maison(anglais,N,rouge,C),
	meme_maison(espagnol,N,chien,A),
	meme_maison(japonais,N,peintre,P),
	meme_maison(italien,N,the,B),
	meme_maison(verte,C,cafe,B),
	meme_maison(sculpteur,P,escargot,A),
	meme_maison(diplomate,P,jaune,C),
	meme_maison(violoniste,P,jus_de_fruit,B),
	maison_a_cote(norvegien,N,bleue,C),
	maison_a_cote(renard,A,medecin,P),
	maison_a_cote(cheval,A,diplomate,P),
	maison_a_droite(blanche,verte,C),
	meme_maison(PossZebre,N,zebre,A),
	meme_maison(BoitDuVin,N,vin,B).
