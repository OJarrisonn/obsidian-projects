# Linear vs Parallel
ARCL has commands to iterate over any iterable tagged type in a linear or parallel way
## Linear
```
for (&type|@type)? elem -> expr { ... }

for &int i -> 0..10 {
	stdout <- i <- "\n";
};
```

## Parallel
```
decl var [int 4] v = {1, 0, 0, 1};
|for @int i -> v {
	i += 1;
};

stdout <- v <- "\n"; // {2, 1, 1, 2};
```
# Conditional and Inconditional
## Conditional
```
while <expr> { ... };
```
## Inconditional
```
loop { ... };
```