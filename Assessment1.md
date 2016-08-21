# Aseessment Notes

## Some Array methods

...

### Inject

This method, takes a number, along with another, and makes a binary operation onto it. For example:

`(1..10).inject {|sum,n| sum + n } => 55`

This iterates 10 times, each time n represents the number (1-10).  This number gets added to sum, hence sum is the number that gets added to.