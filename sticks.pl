run(1):-
write('Enter num of sticks'),nl,
read(N),
play(N).

play(1):-
write('You lose').

play(3):-
write('computer'),nl,
write(2),nl,
write('You lose'),!.

play(2):-
write('computer'),nl,
write(1),nl,
write('You lose'),!.

play(N):-
Q is N // 3,N is Q * 3,
N1 is N-2,
write('computer'),nl,
write(2),nl,
write('Reminder'),nl,
write(N1),nl,
write('Enter your choice'),nl,
read(Ch1),
N2 is N1-Ch1,
play(N2).

play(N):-
N1 is N-1,
Q is N1 // 3,N1 is Q * 3,
write('computer'),nl,
write(1),nl,
write('Reminder'),nl,
write(N1),nl,
write('Enter your choice'),nl,
read(Ch),
N2 is N1-Ch,
play(N2).

play(N):-
N1 is N-2,
write('computer'),nl,
write(2),nl,
write('Reminder'),nl,
write(N1),nl,
write('Enter your choice'),nl,
read(Ch),
N2 is N1-Ch,
play(N2).