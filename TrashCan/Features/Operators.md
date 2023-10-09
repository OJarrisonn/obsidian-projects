Operators put expressions together to produce new expressions. In ARCL we have three types of operators: unary, infix unary and binary
# Builtins
```
Math: + - * / %
Logic: == != > < >= <=
Bitwise: & | ^ !
```
## References
- ``&<identifier>``: gets a seeker
- ``@<identifier>``: gets a borrower
- ``*<identifier>``: dereference
- ``->``: points to someone
- ``=``: shallow copy
- ``:=``: deep copy
## Parallelism
- ``<identifier>...``: blocks the execution until the promisse is finally evaluated