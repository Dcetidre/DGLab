@echo off
setlocal enabledelayedexpansion

set file=%1

copy out_poses\%file% assets\live2d\a\a.moc /y
