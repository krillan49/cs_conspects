puts '                                           SSH-ключи'

# https://www.youtube.com/watch?v=QF4ZF857m44    (1-05-20)    про генерерацию SSH-ключей

# На Мак и Линукс уже стоят утилиты для генерации SSH-ключей, для Виндоус можно воспользоваться встроенной утилитой от Git



puts '                               Генерация ключа (на Мак и ??Линукс??)'

# 1. Переходим в скрытый каталог ".ssh" в домашнем катаоге  (?? сами его создам чтоли??)
# $ cd .ssh

# 2. Создадим отделдьную директорию в .ssh для каждого проекта в котором нужны SSH-ключи
# $ cd some-project

# 3. Генерируем SSH-ключ. Там попросит ввести имя для ключа, назовем например some
# $ ssh-keygen -t rsa

# 4. Посмотрим (и скопируем если нао передать кудато) публичный ключ что сгенерился в фаиле some.pub
# $ cat some.pub

















#
