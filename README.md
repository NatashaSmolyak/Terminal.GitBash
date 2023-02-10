## Задание по терминалу Linux (Git Bash). [Home work-1](https://github.com/NatashaSmolyak/Terminal.GitBush/blob/main/HW_1_GIT_BUSH.txt)
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
24) Просмотреть содержимое в реальном времени (команда tail): <code> $ tail -f f3.txt </code>
25) Изучить, как рабоатет команда grep: 
- Просмотреть содержимое без учета регистра: <code> $ grep -i test f3.txt </code>
- Просмотреть содержимое с без учета регистра: <code> $ grep -i test f3.txt </code>
- Просмотреть несовпавшие строки с test1: <code> $ grep -v test1 f3.txt </code>
- Просмотреть количество совпадений: <code> $ grep -c test1 f3.txt </code>
26) Вывести несколько первых строк из текстового файла: <code>$ head -n2 f3.txt </code>
27) Вывести несколько последних строк из текстового файла: <code> $ tail -n f3.txt </code>
28) Просмотреть содержимое длинного файла (команда less) изучите как она работает.
- Просмотр текста по 5 строк: <code> $ less -5 f1.txt </code>
- Просмотр текста с 5-й строки: <code> $ less +5 f1.txt </code>
29) Вывести дату и время:
- <code> $ date </code> Результат: *Wed Nov  2 18:26:28*
- <code> $ date +"%m-%d-%y" </code> Результат:  *11-02-22*
- <code> $ date +"%m-%d-%Y" </code> Результат: *11-02-2022*
- <code> $ date +"%D" </code> Результат: *11/02/22*
- <code> $ date +"%H:%M:%S" </code> Результат: *18:29:27*
- <code> $ date +"%d-%m-%Y-%H:%M:%S" </code> Результат: *02-11-2022-18:31:49*
---
## Дополнительное задание.
1) Отправить http-запрос на сервер: http://162.55.220.72:5005/terminal-hw-request 
<code> $ curl 'http://162.55.220.72:5006/terminal-hw-request' </code>
- Приходит ответ от сервера с новым заданием:
 ```{"Intro": "Hello!! This is your the first response from server",
 "Tasks": {"Task_1": "Send the next URL in terminal: http://162.55.220.72:5005/get_method?name=(set_your_String)&age=(set_your_number)",
  "result": ["Your_String", "Your_number"]}}
  ```
 - Отправляем http-запрос на сервер согласно постановке задачи: <code> $ curl 'http://162.55.220.72:5005/get_method?name=Nata&age=50'</code>
 - Получаем ответ от сервера:<code>["Nata","50"] </code>

2) Написать скрипт: 
 - Перейти в папку.
 - Создать 3 папки.
 - Перейти в любую папку.
 - Создать 5 файлов.
 - Создать 3 папки.
 - Вывести список содержимого папки.
 - Переместить 2 файла в другую папку.
 
  Создаем файл: <code> $ touch script1.sh </code>
  
  Открываем файл в Vim: <code> $ vim script.sh </code>
  
  Записываем скрипт:
```
 #!/bin/sh
 cd star
 mkdir folder_1 folder_2 folder_3
 cd folder_1
 touch f1.txt f2.txt f3.txt f4.json f5.json
 mkdir folder_4 folder_5 folder_6
 ls -la
 mv f1.txt f2.txt folder_4
```

 Сохраняем и выходим: <code> Esc </code> , затем <code> :wq </code>
 
 Запускаем скрипт: <code> $ sh script1.sh </code>
