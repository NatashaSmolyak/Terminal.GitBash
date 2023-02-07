# Terminal.GitBush
1) Посмотреть где я: <code> $ pwd </code>
2) Перейти на диск D: <code> $ cd d:/ </code>
3) Создать папку: <code> $ mkdir git</code>
4) Зайти в папку: <code> $ cd git </code>
5) Создать 3 папки: <code> $ mkdir dir_1 dir_2 dir_3 </code>
6) Зайти в любую папку (в последнюю созданную)
$ cd !$

7) Создать 5 файлов (3 txt, 2 json)
$ touch f1.txt f2.txt f3.txt f4.json f5.json

8) Вывод файлов списком
$ ls -la

9) Создать 3 папки
$ mkdir folder_1 folder_2 folder_3

10) Вывести список содержимого папки
$ ls -la
total 4
drwxr-xr-x 1 ShadowDzhek 197121 0 Nov  1 10:58 ./
drwxr-xr-x 1 ShadowDzhek 197121 0 Nov  1 10:47 ../
-rw-r--r-- 1 ShadowDzhek 197121 0 Nov  1 10:48 f1.txt
-rw-r--r-- 1 ShadowDzhek 197121 0 Nov  1 10:49 f2.txt
-rw-r--r-- 1 ShadowDzhek 197121 0 Nov  1 10:49 f3.txt
-rw-r--r-- 1 ShadowDzhek 197121 0 Nov  1 10:49 f4.json
-rw-r--r-- 1 ShadowDzhek 197121 0 Nov  1 10:49 f5.json
drwxr-xr-x 1 ShadowDzhek 197121 0 Nov  1 10:58 folder_1/
drwxr-xr-x 1 ShadowDzhek 197121 0 Nov  1 10:58 folder_2/
drwxr-xr-x 1 ShadowDzhek 197121 0 Nov  1 10:58 folder_3/

11) + Открыть любой txt файл
$ cat f1.txt

12) + написать туда что-нибудь, любой текст.
$ vim f1.txt
-Нажать Insert (начать запись текста)
1. Hello, Vadim!
2. My name is Natasha.
3. I am from Belarus. 

13) + сохранить и выйти.
Нажать ESC, затем  :wq 

14) Просмотр текстового файла (что записалось)
$ cat f1.txt
1. Hello, Vadim!
2. My name is Natasha.
3. I am from Belarus. 

15) Редактирование файла в терминале
$ cat >>f2.txt
I am learning GIT terminal commands

-CTRL+C - закрыть файл

16) Выйти из папки на уровень выше
$ cd ..

17) Зайти в папку с файлами
$ cd dir_3

18) переместить любые 2 файла, которые вы создали, в любую другую папку.
$ mv f1.txt f2.txt ../dir_2

19) скопировать любые 2 файла, которые вы создали, в любую другую папку.
$ cp f3.txt f4.json folder_3

20) Найти файл по имени в текущей папке и всех подпапках
$ cd dir_2
$ find -name f1.txt

21) Найти все текстовые файлы 
$ find -name "*.txt"

22) Найти файлы в любом каталоге
$ find /d/git/dir_3 -name '*.json'

23) Найти файлы, измененные за последние 3 дня
$ find /d/git/dir_3/ -mtime -3

24) Просмотреть содержимое в реальном времени (команда tail) изучите как она работает.
//С учетом регистра
$ tail -f f3.txt
test1
test2
test3
test4
test5
test6
test7
test8
test9
test10

//Показать строки с без учета регистра
$ grep -i test f3.txt
test1
test2
test3
test4
test5
test6
test7
test8
test9
test10
testabc
testABC
TESTABC
TESTabc3

//Показать несовпавшие строки с test1
$ grep -v test1 f3.txt
test2
test3
test4
test5
test6
test7
test8
test9
testabc
testABC
TESTABC
TESTabc3

//Показать количество совпадений
$ grep -c test1 f3.txt
2

25) Вывести несколько первых строк из текстового файла
$ head -n3 f3.txt
test1
test2
test3

26) Вывести несколько последних строк из текстового файла
$ tail -n3 f3.txt
testABC
TESTABC
TESTabc3

27) Просмотреть содержимое длинного файла (команда less) изучите как она работает.
//Просмотр текста по 5 строк.
$ less -5 f1.txt

//Просмотр текста с 5-й строки
$ less +5 f1.txt

28) Вывести дату и время

$ date
Wed Nov  2 18:26:28     2022

$ date +"%m-%d-%y"
11-02-22

$ date +"%m-%d-%Y"
11-02-2022

$ date +"%D"
11/02/22

$ date +"%H:%M:%S"
18:29:27

$ date +"%d-%m-%Y-%H:%M:%S"
02-11-2022-18:31:49
