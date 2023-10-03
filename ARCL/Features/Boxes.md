Boxes are the things who store or reference values in ARCL. Boxes define how to handle the values stored (or referenced) by them in a declaration.

# Declaration
```
decl var? (read|write|mov)? <type_ident>? <box_ident> (= <expr>|-> <ref_expr>)?;
```
- ``var``: the box value is variable
- ``read``: the value is readable (for structs)
- ``write``: the value is writable (for structs)
- ``mov``: the value possession can be moved
- ``<type_ident>``: a type
- ``<box_ident>``: the box name