subdir(documents, private).
subdir(documents, work).
subdir(private, images).
subdir(private, video).
subdir(work, research).
subdir(work, teaching).

descendant(X) :- write(X), write(' '), subdir(X,Y), descendant(Y).