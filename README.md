# ITS-FamilyTree

## Information on tree.pl
Within the tree.pl you can find all the facts and rules which define our Expert System. 

Our preferred interference engine to use is SWI-Prolog, you can use this engine for free on any system. 
Implicitly, we allow the usage of forward and backward chaining. From data we can reach a goal, and from a goal we can reach data.

## Running the tree
You can simply run the family tree by running your favorite prolog interference engine and typing the following in the command-line:


`[tree].`

Following that, you can use any of the defined rules in the tree.pl file, e.g.:

`sister_of(marijn, X).`

Here you will retrieve all of the sisters of family member "marijn".
