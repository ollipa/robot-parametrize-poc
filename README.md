# Parametrize Robot Framework tests

This repository contains a suggested new syntax to parametrize Robot Framework test cases. See suite `tests/parametrize.robot` to see an example of the syntax in use. Other suites (`for_loop` and `template`) represent ways how tests can be parametrized currently.

## Running tests

```sh
pipenv shell
pipenv sync
robot tests
```

 or

 ```sh
pip install -r requirements.txt
robot tests
```