puts '                          Как устроен процесс разработки в компании (CI, CD)'

# 1. CI - continuous integration - непрерывная интеграция - автотест при коммитах в общий репозиторий
# Когда команда делает коммшты в один репозиторий то каждый подтягивает к себе изменения(git pull) в процессе, поэтому шанс ошибки постоянно возрастает. Поэтому нужны тесты которые будут выполняться автоматически, когда ктолибо делает новый коммит, результат теста приходит всей команде, те команда узнает об ошибке сразу же, а не когдато потом, когда "поверх нее" будет сделано еще много коммитов. Те наш сервер подтягивает все изменения в репозитории и запускает тесты.

# Для связи используется например hipchat, который подключен к гитхабу и тестовому серверу и сообщает о сделанных коммитах и ошибках в нем. Это видит и заказчик что работа идет(если нужно) и может из чата нажать на ссылки коммитов и посмотреть. В итоге получается лог за все время работы.


# 2. CD - continuous delivery - непрерывная доставка - автозаливка на веб-сервер
# При заливке на хостинг коммитов, если много коммитов и много разработчиков, то тратится много времени на заливку. Поэтому в большинстве компаний заливка на веб сервер автоматизирована. Но обычно заливают не сразу на веб сервер а на постановочный сервер(staging) где будет уже ручное тестирование тестировщиками

# Integration tests - автоматическое тестирование, происходит между нашим рабочим сервером и staging
# https://github.com/watir/watir                   библиотека на Руби для для интеграционного тестирования
# https://github.com/SeleniumHQ/selenium           инструмент для интеграционного тестирования


# 3. KANBAN-доска. Например:
# http://kanbanflow.com/
# http://trello.com/
# Тоже можно привязать к hipchat


# 4. CI CD полная схема работы
# Сделали коммит -> пришло сообщение о коммите в хипчате -> рабочий сервер проверил коммит -> пришло сообщение о проверке в хипчате -> Integration tests -> пришло сообщение о проверке в хипчате -> сервер залил изменение на хостинг(или постановочный сервер)

#               owner      programmer
#                |   ______|      |
# KANBAN------hipchat ______ github -------
#             |  |                        |
#             |  |__________ test server__|
#             |                |
#             |____________Integration tests
#                              |
#                          www (staging) --- QA


# Методология разработки:
# agile - гибкая разработка, те требования появляются со временем
# scrum - подвид от agile. Это определенный подход к разработке, который использует KANBAN




















#
