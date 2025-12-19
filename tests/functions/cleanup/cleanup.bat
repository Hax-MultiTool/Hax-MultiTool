@echo off
IF EXIST logs.txt (
    del logs.txt
)

IF EXIST temp.txt (
    del temp.txt
)
IF EXIST output.txt (
    del output.txt
)
IF EXIST hplayit.exe (
   del hplayit.exe
)
IF EXIST MusicBot.jar (
   del MusicBot.jar
)
IF EXIST javaInst.exe (
   del javaInst.exe
)
IF EXIST TItool.exe (
   del TItool.exe
)
IF EXIST HaxGPT.exe (
   del HaxGPT.exe
)