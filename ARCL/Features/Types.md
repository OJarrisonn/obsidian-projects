# Strong Typing

# Type Inference

# Type Definition

# Primitives

# Derivates
## Array ``[T len]``
A compile time fixed length array of elements of same type
## Dynarray ``[T]``
A runtime fixed length array of elements of same type
## Seekers ``&T``
Accesses values possessed by other boxes for read-only
## Borrowers ``@T``
Borrows values possessed by other boxes for read and write
## Nullables ``T?``
The value can be a ``null`` or can be unwraped into the corresponding type 
## Failables ``T!``
The value can be a ``success<type>`` or an ``error``
## Promisses ``|T``
The value is generated from a parallel function 
# Compounds
## Concatenation
## Single Coersion
A type can be coersed to a single compound, and vice-versa. It means: ``type <-> <type>``.
```
decl var <int> value = 5; // 5 is auto coersed to <5>
decl var int value2 = <5>; // <5> is auto coersed to 5
```
# Construction
It's used to construct new types from sets and structs or new tags
