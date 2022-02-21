# Aquamarine 🧜‍♀️

> An eDSL for writing Fish shell scripts in Haskell

## Examples

### Functions

```haskell
"hello" $> ["echo 'Hello'", "echo 'Bye'"]
```
generates:

```sh
function hello
    echo 'Hello'
    echo 'Bye'
end
```

### Abbreviations

```haskell
"yar" --> "yarn add react"
```

generates:

```sh
abbr -a -g yar yarn add react
```
