puts '                                               VirtualBox'

# https://www.virtualbox.org/

# VirtualBox (Oracle VM VirtualBox) — программный продукт виртуализации для операционных систем Windows, Linux, macOS, FreeBSD[8], Solaris/OpenSolaris, ReactOS, DOS и других. При помощи него можно создать виртуальную машину

# Виртуальная машина (VM) - это виртуализация/эмуляция физической компьютерной системы. Виртуальные машины основаны на компьютерных архитектурах и обеспечивают функциональность как у физического компьютера

# Виртуальная машина изолирована. Гостевая система работает в полностью изолированной среде, те любые манипуляции в гостевой системе, не повлияют на хост-систему.

# Виртуальная машина позволяет легко обмениваться файлами между хост-системой и гостевой системами, даже если хост-системой является Windows, а гостевой системой - Linux.


# https://www.youtube.com/watch?v=hPR9IBsDdwc     - Скачивание, установка, настройка VirtualBox и Ubuntu
# https://www.youtube.com/watch?v=PilOxHmTx4I     - Установка настройка VirtualBox    (про флэшку на 6-42)
# https://www.youtube.com/watch?v=T8fhv8nkDxQ     - Как увеличить размер виртуального диска VirtualBox
# https://www.youtube.com/watch?v=_QyjnEIgvxE     - VirtualBox Ошибка E_INVALIDARG (0x80070057)
# https://www.youtube.com/watch?v=yry04ploL9U     - Как включить виртуализацию в bios на компьютере
# https://www.youtube.com/watch?v=xBiTsGkQgCo     - Как установить Ubuntu MATE Linux на virtualbox
# https://www.youtube.com/watch?v=H6-lEVsGOsY     - Как Установить MacOS на VirtualBox
# https://www.youtube.com/watch?v=o_EhI58z85Y     - Как установить Windows 7 на VirtualBox
# https://www.youtube.com/watch?v=LJMuk2FfMqw     - Как установить Windows XP на VirtualBox
# https://www.youtube.com/watch?v=pOXfQ2P1plw     - Как перенести Виртуальные машины VirtualBox на ssd диск
# https://www.youtube.com/watch?v=r3JIbhzbmO8     - Как перенести виртуальную машину VirtualBox на стационарный компьютер


# https://www.virtualbox.org/wiki/Downloads          - скачивание VB и дополнительных фич для него
# ​Windows hosts            - (VirtualBox 7.0.16 platform packages) скачивание VB под виндоус
# ​All supported platforms  - (VirtualBox 7.0.18 Oracle VM VirtualBox Extension Pack) скачиваем плагин для поддержки USB-носителей, все наши VM будут поддерживать флэшки


# При установке VirtualBox можно оставить все опции по умолчанию
# Установка плагина для USB тоже все по умолчанию



puts '                               VirtualBox: создание виртуальной машины'

# Если в Биосе не подключена поддержка виртуализации, то не получится создать ВМ, предварительно нужно будет зайти в Биос и подключить


# Можно изменить папку где будут храниться виртуальные машины на другую:
# Инструменты -> Настройки -> Общие -> Папка для машин по умолчанию


# 1. "Создать/New" - (синяя звездочка) кнопка в разделе "Инструменты", которая начнет(откроет подменю) создание виртуальной машины

# 2. Выбираем название виртуальной машины в появившимся окне, можно любое, но если ввести название операционной системы, что будет использоваться на этой виртуальной машине(например Ubuntu) то тип и версия операционной системы подберутся автоматически

# 3. Далее укажем объем оперативной памяти выделяемый физическим компьютером под нашу виртуальную машину.

# 4. Создадим новый виртуальный жеский диск для нашей виртуальной машины, так же можно указать его тип (можно по умолчанию оставить VirtualBoxDiscImage).
# Так же можно выбрать тип диска:
# 'динамический'(может использовать больше или меньше заданной выделенной памяти от физического диска)
# 'фиксированный'(будет занимать именно столько памяти сколько мы выделили)

# 5. Нажимаем 'готово/создать' наша виртуальная машина будет создана и появится ее раздел рядом с разделом "Инструменты"



puts '                               VirtualBox: настройка виртуальной машины'

# "Настроить" - кнопка в разделе нашей виртуальной машины, позволяет зайти в настройки. Разделы настроек:

# 1. "Общие/General" - содержит подразделы:
#     а. "Основные" - можно изменить название тип и версию операционной системы
#     б. "Дополнительно" - например можно настроить возможности переноса фаилов

# 2. "Система/Sistem" - содержит подразделы:
#     а. "Материнская плата/Motherboard" - убедимся что поставлены галочки на 'Включить I/O APIC' и 'Часы в системе UTS'. Так же можно именить количество оперативной памяти
#     б. "Процессоры/Processor" - можно изменить колличесво выделенных ядер процессора физическим компьютером для нашей виртуальной машины
#     в. "Ускорение/Acceleration" - hyper-v доступна только на w10pro, а на home виртуалка спокойно работает и без этой галочки. И в Windows компонент Hyper-V лучше не включать, чтобы не тормозило

# 3. "Дисплей/Display" - видеопамять лучше поставить 128(для ОС Убунту). Так же можно включить 3D-ускорение(не включал)

# 4. "Носители/Storage" - В Контроллер IDE вместо 'пусто' нужно вставить наш образ(например образ Ubuntu или Виртуалбокс Гуест аддишонс), для этого справа напротив 'Оптический привод' нажимаем маленькую голубую кнопку, выбираем 'Выбрать/создать' виртуальный оптический диск -> в появившемся меню через кнопку 'Добавить', выберем образ и нажмем кнопку 'Выбрать' снизу

# 5. "Сеть/Network" - ничего менять не нужно. По умолчанию стоит NAT тоесть виртуальная машина будет использовать то же подключение что и физический компьютер

# 6. "USB"   - можем выбрать тип USB под наш физич комп, например 3.0

# 7. "Общие папки"  - можно назначить общие папки для виртуальной машины и хост-машины.

# Когда выбрали все настройки просто нажимаем "ОК"



puts '                               VirtualBox: запуск виртуальной машины'

# При запуске может немного потормозить

# "Запуск" - (зеленая стрелка вправо) кнопка в разделе нашей виртуальной машины, запустит нашу машину(Откроется дополнительное окно нашей виртуальной машины) и если есть образ с ОС то предложит меню ее установки(Установка происходит как и на железе), либо запустит операцтонку виртуальной машины, если ОС на ней уже установлено.
# После установки может потребоваться вытащить диск(можно выключить для этого виртуальную машину а потом снова запустить)

# При закрытии окна виртуальной машины появится панель с опциями отключения

# Ctrl(Правый) + F           - вход/выход из полноэкранного режима окна запущенной виртуальной машины



puts '                          VirtualBox: донастройка Дополнительной гостевой ОС'

# Этот компонент позволяет связать операционную систему виртуальной машины с физическим железом: 3д ускорители подключает, помогает с жеским диском адекватно работать(создавать общие папки), подстраивать разрешение под монитор(а так же под размер окна)

# В окне с запущенной виртуальной машиной, в меню сверху выбираем:
# 'Устройства' -> 'Подключить образ диска Дополнительной гостевой ОС...'
# Заходим в папку с файлами на этом диске, выбираем там фаил для соответсвующего типа операционной системы выртуальной машины, например 'VBoxLinuxAdditions.run', либо на Ububntu я запустил как приложение фаил autorun.sh



puts '                           VirtualBox: настройка и использование общих папок'

# Чтобы обмениваться файлами между хост- и гостевой системами с помощью перетаскивания, нужно настроить общие папки.

# 1. Настройка возможности переноса фаилов:
# "Настроить"(в разделе нашей ВМ) -> "Общие/General" -> "Дополнительно" -> 'Общий буфер обмена' -> 'Двунаправленный'   -  позволит перетаскивать фаилы с виртуальной машины на хост машину и обратно

# 2. Назначить общие папки для виртуальной машины и хост-машины:
# "Настроить"(в разделе нашей ВМ) -> "Общие папки"
# После выбора можно поставить галочуку "Автоподключение" и назначить точку монтирования, например \share

# 3. Донастройка для виртуальной машины на Линукс Ubuntu:
# Общая папка появится внизу списка в приложении "Фаилы". Если говорит "Не удалось просмотреть содержимое папки, недостаточно прав для просмотра объекта" то выполним команду:
# $ sudo adduser krillan vboxsf                 - тоесть добавляем пользователя krillan в группу vboxsf
# Далее если не будет открываться, перезапустить систему

# На Линукс Ubuntu (виртуальном) общая папка находится в директории /media

# Фаилы скриптов в общей папке лучше создавать в виртуальном Линукс, чтобы работали корректно



puts '                                       VirtualBox: ошибки разное'

# Способы Исправить маленькое разрешение экрана:

# Если все равно не смог нормальной адаптации добиться, например на ноуте с фул эйч ди то можно поставить пакет - Guest Additions:
# Before installing  VirtualBox Guest Additions on Ubuntu 22.04 we need to install some required packages. So open the terminal and run the following command.
# 1) sudo apt install linux-headers-$(uname -r) build-essential dkms
# Then you need to reboot your system.
# 2) sudo apt update
# 3) sudo apt install -y build-essential linux-headers-$(uname -r)
# Then you need to reboot your system



puts '                                                 Vargant'

# ! Вагрантом пользовались только для разработки для воспроизводства производственной среды. Docker - решение, одинаковое и для промышленного развертывания и для разработки. Он круче, вокруг него экосистема на порядок сильнее (в том числе коммерческая), он нативен на linux без виртуальных машин. Как только Docker получил популярность, про Вагрант - все сразу забыли. Но если нужно оперировать виртуалками с операционными системами отличными от linux, Вагрант может быть полезен.

# Виртуальная машина на Линуксе(для запуска на любой системе) - туда установятся(bootstrap.sh - просто похожее название) Руби, Рэилс, СУБД и еще много всякого что нужно

# Поставить Виртуал бокс и Vargant и установить Рэилс дев бокс по инструкции

# https://github.com/rails/rails-dev-box   # rails-dev-box  -  способ настройки среды
# https://www.vagrantup.com/               # Vargant

# Команды на хост-машине:
# $ git clone https://github.com/rails/rails-dev-box.git
# $ cd rails-dev-box
# $ vagrant up                              - будет создана виртуальная машина с Линуксом
# $ vagrant ssh
# =>
# Welcome to Ubuntu 22.10 (GNU/Linux 5.19.0-21-generic x86_64)
# ...
# vagrant@rails-dev-box:~$                  - входим в консоль виртуальной машины

# Создастся виртуальная машина Линукс и когда мы зайдем в браузере на порт 3000 то его запустит виртуальная машина

















#
