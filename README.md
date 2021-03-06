# pyo3

## Summary

Example of a PyO3 project integrating Python and Rust.

## Setup the project

### Setup pre-commit

https://pre-commit.com/

### Create a new project with maturin

1. Install maturin

```
pipx install maturin
```

2. Get help on maturin

```
maturin --help
```

3. Get help on maturin new command

```
maturin new --help
```

4. Create a new mixed Python & Rust project

```
maturin new --bindings pyo3 --mixed my_project
```

### Setup rust tools

Make sure that the following rust tools are in the path

```
rust-analyzer --version
rustfmt --version
```

### Build the Python module

```
maturin develop
```

## Test project

1. Run test Python files

```
make pytest
```

2. Run test Rust files

```
cargo test
```

## Links

[Python and Rust project][900] with PyO3 bindings

[900]: https://medium.com/@MatthieuL49/a-mixed-rust-python-project-24491e2af424

Calling [Rust from Python][910] using PyO3

[910]: http://saidvandeklundert.net/learn/2021-11-18-calling-rust-from-python-using-pyo3/

[From Python to Rust][920]

[920]: https://betterprogramming.pub/from-python-to-rust-some-key-differences-and-takeaways-151da8293b9a

[Nine rules][930] for Python extensions in Rust

[930]: https://towardsdatascience.com/nine-rules-for-writing-python-extensions-in-rust-d35ea3a4ec29

[Python-numpy with Rust-ndarray][940]

[940]: https://itnext.io/how-to-bind-python-numpy-with-rust-ndarray-2efa5717ed21
