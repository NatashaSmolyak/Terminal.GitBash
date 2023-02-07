# Terminal.GitBush
1) Посмотреть где я: <code> $ pwd </code>
2) Перейти на диск D: <code> $ cd d:/ </code>
3) Создать папку: <code> $ mkdir git</code>
4) Зайти в папку: <code> $ cd git </code>
5) Создать 3 папки: <code> $ mkdir dir_1 dir_2 dir_3 </code>
6) Зайти в любую папку (в последнюю созданную): <code> $ cd !$ </code>
7) Создать 5 файлов (3 txt, 2 json): <code> $ touch f1.txt f2.txt f3.txt f4.json f5.json </code>
8) Вывод файлов списком: <code> $ ls -la </code>
9) Создать 3 папки: <code> $ mkdir folder_1 folder_2 folder_3 </code>
10) Вывести список содержимого папки: </code> $ ls </code>
11) Открыть любой txt файл: <code> $ vim f1.txt </code>
12) Написать туда что-нибудь, любой текст: <code> Нажать Insert (начать запись текста) 1. Hello, Vadim! 2. My name is Natasha. 3. I am from Belarus. </code>
13) Сохранить и выйти: <code> Нажать ESC, затем  :wq </code> 
14) Просмотр текстового файла (что записалось): <code> $ cat f1.txt </code>
15) Редактирование файла в терминале: <code> $ cat >>f2.txt I am learning GIT terminal commands </code> <code> CTRL+C </code> - закрыть файл
16) Выйти из папки на уровень выше: <code> $ cd .. </code>
17) Зайти в папку с файлами: <code> $ cd dir_3 </code>
18) Переместить любые 2 файла, которые вы создали, в любую другую папку: <code> $ mv f1.txt f2.txt ../dir_2 </code>
19) Скопировать любые 2 файла, которые вы создали, в любую другую папку: <code> $ cp f3.txt f4.json folder_3 </code>
20) Найти файл по имени в текущей папке и всех подпапках: <code> $ find -name f1.txt </code>
21) Найти все текстовые файлы: <code> $ find -name "*.txt" </code>
22) Найти файлы в любом каталоге: <code> $ find /d/git/dir_3 -name '*.json' </code>
23) Найти файлы, измененные за последние 3 дня: <code> $ find /d/git/dir_3/ -mtime -3 </code>

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
