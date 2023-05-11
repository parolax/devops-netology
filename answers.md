# Домашнее задание к занятию «Инструменты Git»

1. Найдите полный хеш и комментарий коммита, хеш которого начинается на aefea.
   - commit aefead2207ef7e2aa5dc81a34aedf0cad4c32545
   - comment: Update CHANGELOG.md
2. Ответьте на вопросы. 
   1. Какому тегу соответствует коммит 85024d3?
      - git describe --tags 85024d3
      - v0.12.23
   2. Сколько родителей у коммита b8d720? Напишите их хеши.
      - git show --no-patch --format=%P b8d720
      - 2 родителя:
        - 56cd7859e05c36c06b56d013b55a252d0bb7e158
        - 9ea88f22fc6269854151c571162c5bcf958bee2b
   3. Перечислите хеши и комментарии всех коммитов, которые были сделаны между тегами v0.12.23 и v0.12.24.
      - git log --pretty=format:"%h %s" v0.12.23..v0.12.24
      - Коммиты между тегами v0.12.23 и v0.12.24:
        33ff1c03bb v0.12.24
        b14b74c493 [Website] vmc provider links
        3f235065b9 Update CHANGELOG.md
        6ae64e247b registry: Fix panic when server is unreachable
        5c619ca1ba website: Remove links to the getting started guide's old location
        06275647e2 Update CHANGELOG.md
        d5f9411f51 command: Fix bug when using terraform login on Windows
        4b6d06cc5d Update CHANGELOG.md
        dd01a35078 Update CHANGELOG.md
        225466bc3e Cleanup after v0.12.23 release
   4. Найдите коммит, в котором была создана функция func providerSource, её определение в коде выглядит так: func providerSource(...) (вместо троеточия перечислены аргументы).
      - git log -S 'func providerSource('
      - commit 8c928e83589d90a031f811fae52a81be7153e82f
      - func providerSource(services *disco.Disco) getproviders.Source {
   5. Найдите все коммиты, в которых была изменена функция globalPluginDirs.
      - Выяснил к каком файле функция globalPluginDirs -> git grep 'func globalPluginDirs('
      - git log -L :globalPluginDirs:plugins.go --pretty=format:%h
        78b1220558
        52dbf94834
        41ab0aef7a
        66ebff90cd
        8364383c35 -> создана
   6. Кто автор функции synchronizedWriters?
      - Не удалось найти функцию:
        - git grep -l 'func synchronizedWriters(' .
        - Поиск в репозитории на github не нашёл функцию с таким именем 