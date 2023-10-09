@echo off

pushd ..

echo.
echo Format using isort
isort govern --sp=.isort.cfg
isort tests --sp=.isort.cfg

echo.
echo Format using black
black -q govern --config=pyproject.toml
black -q tests --config=pyproject.toml

echo.
echo Validate using flake8
flake8 govern --config=.flake8
flake8 tests --config=.flake8

popd
