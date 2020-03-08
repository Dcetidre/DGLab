@echo off
set in=%1
set out=%2
set proxy_mode=%3
set proxy_port=1080

echo.%proxy_mode%


::  --http-proxy="http://127.0.0.1:%proxy_port%" --proxy-method="tunnel"
if "%proxy_mode%"=="true" (
set "params=--http-proxy="http://127.0.0.1:%proxy_port%" --proxy-method="tunnel"" )

:in
aria2c %params% --dir="%out%" -i %in%
exit
