# Triomino Core

Triomino Core with command-line application.


## Tests

Dependencies:
- lcov
  - macos: `brew install lcov`

```
dart test --coverage
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```
