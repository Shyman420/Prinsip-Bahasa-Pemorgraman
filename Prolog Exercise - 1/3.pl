follows(anne,fred).
follows(fred,julie).
follows(fred,susan).
follows(john,fred).
follows(julie,fred).
follows(susan,john).
follows(susan,julie).
tweets(anne,tweet1).
tweets(anne,tweet5).
tweets(fred,tweet2).
tweets(fred,tweet7).
tweets(fred,tweet8).
tweets(john,tweet3).
tweets(john,tweet4).
tweets(julie,tweet6).
tweets(susan,tweet9).
tweets(susan,tweet10).

friend(X, Y) :- follows(X, Y), follows(Y, X).
friend_sees() :- follows(fred, X), tweets(X,Y), write(Y).