#!/bin/sh
 
#Зайти в папку
cd star
#Создать 3 папки
mkdir folder_1 folder_2 folder_3
#Зайти в любоую папку
cd folder_1
#Создать 5 файлов (3 txt, 2 json)
touch f1.txt f2.txt f3.txt f4.json f5.json
#Создать 3 папки 
mkdir folder_4 folder_5 folder_6
#Вывести список содержимого папки
ls -la
#переместить любые 2 файла, которые вы создали, в любую другую папку
mv f1.txt f2.txt folder_4
