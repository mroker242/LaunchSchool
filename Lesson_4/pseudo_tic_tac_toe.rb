1. Display the initial empty 3x3 board.

- it has to be something that has a1,a2,a3,b1,b2,b3,c1,c2,c3
- it also has to be in asii format
- each value has to have another value to mark for if its filled in or not
- a hash can have a1 => true, etc
- start all with false for not marked
- name the hash a good name
- 0 is empty, 1 is user filled and computer is 2 filled 


2. Ask the user to mark a square.

- use gets to ask user to mark a square
- a prompt needs to show what spaces are available
- make a method that will find the 0s and show what is available
- 'x' needs to be marked where one of these spaces are available
- look for trues and true will show what is already taken


3. Computer marks a square

- Computers number is 2.
- Change the method so that an input can only be given for squares that are available
- If the square is available, then input a 2 for the square
  - for this you just need to do a random index number and put it into the hash
  - may need to refactor so that its one method to take the computer and the user



- logic to show game board with x and o
  - hash shows what keys has 0 and 1
  - make method so that the key shows 0


  - input board
    - hash
    - row
    - column
    - get the column and row for the person
    - take that and input a number 1 where it should go


  - the problem right now is that the input that i am receiving is a string and it needs to be
    a variable


  - winner is player or computer if they get the combination right ** need to figure this out **
  - make this a loop. make a loop and break only if one of these conditions equals true




