@echo off

call .venv\Scripts\activate.bat

if "%1"=="1" (
    jupyter notebook
) 

REM command line stays open
cmd /K