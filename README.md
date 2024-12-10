# Introduction to riverpod

1. How does it work?
   1. How are the data stored
   2. How are the data updated
2. How to use it

## TLDR:

- Use immutable data
- Use the simplest provider possible
- Use `ref.watch` in widget's and provider's `build`.
- Use `ref.read` for callbacks.
- Keep your widget's `build` method pure
