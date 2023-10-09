The command to create new [[Box|boxes]].
## Syntax
```
decl var? (read|write|mov)? <type_ident>? <box_ident> (= <expr>|-> <ref_expr>)?;
```
- ``var``: the box value is variable
- ``read``: the value is readable (for structs)
- ``write``: the value is writable (for structs)
- ``mov``: the value possession can be moved through [[Scopes]]
- ``<type_ident>``: a type
- ``<box_ident>``: the box name

## Redeclaration
Once you've declared a [[Box]] that is variable you can redeclare it to have another [[Entity Signature|signature]]. 