Exercise 1.
The bipolar divisor of a positive integer n is defined as follows:
ˆ If n = 1 or n is a prime number, then the bipolar divisor of n is itself.
ˆ If n is an integer, then the bipolar divisor of n is the product of the largest prime number dividing n by the smallest prime number dividing n. Write a program in Prolog to calculate the bipolar diuretic of a given positive integer. Specifically, define a bipolarDivisor predicate (N, D), which will be true if the value of N is a positive integer n and the value of D is the bipolar divisor of n. We are not interested in the behavior of the predicate when the first argument is not a natural number. Use the following values to check:
| ?- bipolarDivisor(14,D).
D = 14
| ?- bipolarDivisor(31,D).
D = 31
| ?- bipolarDivisor(81,D).
D = 9
| ?- bipolarDivisor(303,D).
D = 303
| ?- bipolarDivisor(308,D).
D = 22
| ?- bipolarDivisor(525,D).
D = 21
| ?- bipolarDivisor(1001,D).
D = 91
| ?- bipolarDivisor(1287,D).
D = 39
| ?- bipolarDivisor(3549,D).
D = 39
| ?- bipolarDivisor(5005,D).
D = 65
Exercise 2.
We can represent natural numbers in Prolog using the atomic term 0 and a functional symbol with an argument, e.g. the s. The natural number n is represented by the term
which we will then symbolize for short with s^n (0) (the unit representation is described in more detail in the notes, p. 38). The act of division into unit representation is described by the following function (where undefined is an atomic term):
 
Write a program in Prolog to implement the division of natural numbers into unit representations. Specifically define a divide statement (X, Y, D), which will be true if the value of D equals the value of the udiv function with arguments the values of X, Y. The program is not allowed to convert terms representing integers to Prolog integers and use the built-in arithmetic operators and the predefined is predicate to evaluate arithmetic expressions.
Use the following values to check:
| ?- divide(s(0),s(0),D).
D = s(0) ?
| ?- divide(s(s(s(s(0)))),s(0),D).
D = s(s(s(s(0))))
| ?- divide(s(s(s(s(s(s(s(s(0)))))))),s(s(0)),D).
D = s(s(s(s(0))))
| ?- divide(s(s(s(s(s(s(s(s(0)))))))),s(s(s(0))),D).
D = s(s(0))
| ?- divide(s(s(s(s(s(s(s(s(0)))))))),s(s(s(s(0)))),D).
D = s(s(0))
| ?- divide(s(s(s(s(0)))),s(s(s(s(0)))),D).
D = s(0)
| ?- divide(s(s(s(s(s(0))))),s(s(s(s(0)))),D).
D = s(0)
| ?- divide(s(s(s((0)))),s(s(s(s(0)))),D).
D = 0
| ?- divide(s(s(s((0)))),0,D).
D = undefined
| ?- divide(0,s(s(s((0)))),D).
D = 0


Instructions
	To write the programs you should use the standard file Lab6.pro (available on the course website), in which for each sentence you ask to define in the following exercises, there is a rule that defines it so that it always returns the answer no. To answer the exercises, replace each of the above rules with an appropriate set of sentences that define the corresponding sentence. You should not modify the name of any category or the number of its arguments.

	You can define as many auxiliary clauses as you want, which will be used to define the clauses you are asked to implement. Under no circumstances should you add other arguments to the categories requested.

	If you use predefined adjectives or operators that are not mentioned in the course notes, the corresponding exercise will not be graded.

	The correctness of the answers will be checked semi-automatically. Under no circumstances should the assessor need to intervene in the file you submit. Therefore you should consider the following:

1. Each of the accusations that you are asked to implement should have the specific name and the specific number of arguments described in the pronunciation of the respective exercise and that exists in the standard Lab6.pro file. If in an exercise the name or number of arguments does not match the one given in the recitation, the exercise will not be graded.

2. The file you submit should not contain syntax errors. If there are code snippets that contain syntax errors, then you need to correct or remove them before delivery. If the file you submit contains syntax errors, then the entire lab exercise will be reset.

3. The questions given at the end of each exercise should be answered. If any of the returned answers are incorrect, this will be taken into account in the scoring, however the exercise will be graded normally. However, if any of the above questions are not answered (eg stack overflow, endless calculation or some runtime error) then the score for the implementation of the corresponding charge will be zero.

4. When correcting the exercises, the assessors will not use questions that contain the auxiliary categories that you may have set. The use of auxiliary predicates should be made through the predicates you are asked to implement
