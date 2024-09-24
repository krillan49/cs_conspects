puts '                                      Системы контроля версий'

# Системы контроля версий(СКВ, VCS, Version Control Systems) - позволяют разработчикам сохранять все изменения, внесённые в код.
# При возникновении проблем они могут просто откатить код до рабочего состояния и не тратить часы на поиски ошибок.
# СКВ также позволяют нескольким разработчикам работать над одним проектом и сохранять внесённые изменения независимо друг от друга. При этом каждый участник команды видит, над чем работают коллеги

# Типы систем контроля версий:
# 1. (ЛСКВ) Локальные системы контроля версий         - различные версии хранятся в различных директориях на компьютере
# 2. (ЦСКВ) Централизованные системы контроля версий  - Такие системы имеют единственный сервер, содержащий все версии файлов(выход сервера из строя обернётся потерей всех данных)
# 3. (РСКВ) Распределённые системы контроля версий    - у каждого клиента есть копия всего исходного кода и внесённых изменений. В этом случае, если один из серверов выйдет из строя, любой клиентский репозиторий может быть скопирован на другой сервер для продолжения работы.
# Ещё одним преимуществом РСКВ является то, что они могут одновременно взаимодействовать с несколькими удалёнными репозиториями. Благодаря этому разработчики могут параллельно работать над несколькими проектами.



puts '                                               Git'

# Git — распределённая система контроля версий, которая даёт возможность разработчикам отслеживать изменения в файлах и работать над одним проектом совместно с коллегами.
# Каждый раз, когда вы сохраняете состояние своего проекта в Git, система запоминает, как выглядит каждый файл в этот момент, и сохраняет ссылку на этот снимок.
# Можно использовать при помощи команд терминала или при помощи дополнительно устанавливаемых графических оболочек(например Ungit)

# commit  -  в переводе это вклад. В Git  это значит наш вклад как разработчика в репозиторий исходного кода
# атомарность коммитов - желательно коммитить изменения отдельных фаилов отдельными коммитами для каждого
# коментарий к коммиту нужно писать информативным, чтобы другим разработчикам проекта было понятно
# initial commit - так обычно называют первый/начальный коммит в репозитории(но можно как угодно).



puts '                                  Git(установка и полезные ссылки)'

# Git - в Линукс и Мак стоит по умолчанию
# https://gitforwindows.org/                             оф сайт чтобы качнуть гит для Винды

# https://github.com/git-guides/install-git              гайд по установке
# https://think-like-a-git.net/                          описание работы с Git от энтузиастов
# https://github.com/nodejs/node-gyp#on-windows          команды и разная инфа

# code.visualstudio.com/docs/editor/github

# codeproject.com/Articles/1177391/How-to-Initialize-a-Git-Repository-using-Visual-St
#=>How to Initialize a Git Repository using Visual Studio Code and Publish the Code to Git Server (Visual Studio Team Services)



puts '                                      Git(логин и конфиг)'

# > git -v                              - возвращает версию Git, установленную в системе.
# > git --version                       - возвращает версию Git, установленную в системе.

# > git -h                              - вызов справки по командам
# > git --help                          - вызов справки по командам


# > git config --global user.name имя_пользователя      - команда установки имени пользователя(у меня k...n)
# $ git config --global user.name 'имя_пользователя'    - в Баше имя нужно вводить в кавычках.

# > git config --global user.email p...49@gmail.com     - команда установки почты

# --global      - означает установку для всей системы(для любых проектов в ней), без него будет установлено на конкретный проект

# .gitconfig теперь содержит эти данные в папке пользователя в Виноус

# > git config user.name                                    - посмотреть наше установленное имя пользователя
# > git config user.email                                   - посмотреть наш установленный имэил
# > git config --list                                       - посмотреть полную информацию



puts '                                   Git(инициализация, удаление)'

# Прежде чем начать работу с Git, его нужно инициализировать в конкретном проекте, для этого нужно в директории проекта выполнить команду инициализации:

# > git init                      - команда инициализации гита.

# В директорию проекта добавляется скрытая папка .git  которая будет отвечать за работу гита в проекте. В этот каталог Git будет особым образом складывать различные фаилы(пакует и добаляет метафаилы)

# Удаление папки .git (! работает только в Git Bash и других Bash ?):
# $ chmod -R a+w .git             - добавим w-права тк git делает определенные файлы доступными только для чтения
# $ rm -rf .git                   - удаляем папку



puts '                                            .gitignore'

# .gitignore    - скрытый фаил, создаем в основной папке проета. В него мы можем прописать фаилы и папки которые будут автоматически игнорироваться и не заносться в репозиторий.

# Добавляем каждое описание с новой строки. Синтаксис такой же как и у команды git add например *.txt - все фаилы с расширением txt



puts '                                              .gitkeep'

# git не может отправлять пустые каталоги. Он может только отслеживать файлы. Если вы попытаетесь закинуть папку, в которой ничего нет, хотя она будет существовать на вашей локальной машине, в вашу ветку ничего не попадет. Поэтому, если кто-то попытается клонировать ваш код, у него не будет такой же структуры папок, как у вас на вашем локальном компьютере.

# .gitkeep - фаил для помещеня в пустые папки, чтобы они были отправлены с коммитом. Вы можете скопировать и вставить текстовый файл file.txt, в котором ничего нет, однако .gitkeep является распространенной стандартизированной практикой.



puts '                                        Git(основные команды)'

# > git status                       - показывает информацию о наших фаилах: на какой мы сейчас ветке находимся, какие фаилы добавлены в стадию ожидания/не добавлены/созданы новые/изменены(modified)


# > git checkout -- .                -  удаляем все недобавленные в стадию ожидания(add) изменения
# > git checkout -- index.html       -  если фаил index.html еще не добавлен в стадию ожидания возвращаем его на момент до изменений(предыдущий коммит)


# > git add .                      - добавить все фаилы и папки относительно текущей(кроме .git) в стадию ожидания комита. Добавляется только если есть чтото отличное от последнего коммита
# > git add index.html             - добавить конкретный фаил index.html
# > git add css/                   - добавить конкретную папку с ее содержимым
# > git add css/style.css          - конкретный фаил из конкретной папки
# > git add *.html                 - все фаилы проекта с расширением html
# > git add css/*                  - все фаилы из папки
# > git add css/*.html             - все фаилы с расширением html из папки css(только самой папки а не ее внутренних папках)
# > git add css/**/*.html          - все фаилы с расширением html из папки css и ее дочерних папок
# > git add !css/style.css         - все фаилы из папки css кроме фаила style.css
# > git add !index.html            - все фаилы проекта кроме данного


# > git rm --cached index.html      - удалить фаил(ы) из стадии ожидания(используется синтаксис как в add)
# > git reset index.html            - (? тоже самое ?)


# > git commit -m "текст комментария"     - добавляет все из стадии ожидания в локальное хранилище и подписывает их комментарием


# > git log                      - выводит информацию о коммитах(сверху более поздние) и коментарии к ним (q - выйти)
# > git log --oneline            - выводит информацию о коммитах в сокращеннной форме, каждый коммит в одну строку
# HEAD - говорит о том где мы находимся
# По-умолчанию Git посылает вывод своих комманд на программу-pager. По-умолчанию это программа less. Выйти из less можно пятью способами: q, Q, :q, :Q и ZZ.

# > git reflog                   - Похоже на 'git log --oneline', но у каждого элемента есть индекс 'HEAD@{индекс}', например чтобы найти тот, перед которым всё сломалось


# > git checkout 7732aa8          - возвращает проект(все его фаилы соответсвующе меняются) на версию/стадию данного коммита. 7732aa8 - это id коммита из git log --oneline или первые 7 символов из git log. Когда мы откатываемся на этот коммит создается точка возврата. (В этом режиме лучше просто просмвтривать а не изменять, тк может нарушится структура и последовательность и все превратится в кашу)
# > git checkout master           - возвращаем наш проект на версию самого последнего коммита
# > git checkout main             - возвращаем наш проект на версию самого последнего коммита, если главная ветка переименована


# > git revert 8a3eb8b            - отменяет все изменения внесенные этим коммитом, сам коммит при этом остается(соотв его действие можно будет вернуть) + создает новый коммит-revert. Так же создает/меняет фаил COMMIT_EDITMSG в папке .git и открывает его. Либо открывает его в терминале в редакторе vim(выход - :wq)


# > git reset 7e0a953 --hard       - удаляет все коммиты после данного не включительно и возвращает проект к стадии данного коммита
# > git reset 7e0a953              - без --hard не отменяет действие удаленных коммитов, те не изменяет фаилы, а лишь только удаляет коммит и все поэтому лучше использовать --hard чтобы не испортить проект
# > git reset --hard HEAD^1        - удаляем 1 последний коммит и возвращаемся к предыдущему. Соотв при других цифрах можно откатиться на 2, 3 итд.
# > git reset --soft HEAD^1        -  удаляем 1 коммит, но оставляем фаилы измененными и добавленными в стэйдж(add).
# > git reset HEAD@{index}         -  где индекс можно посмотреть в 'git reflog'



puts '                                          Git(ветвления)'

# Git - ветвления очень быстро работают в отличие от многих других систем управления версиями

# Принято вносить изменения каждым из разработчиков в свою копию оригинальной версии кода. Каждая такая копия проекта называется веткой – она изолирована от других и имеет собственную историю. В каждой ветке есть свои фаилы(отдельные части проекта) и свои коммиты, видимые только когда активирована данная ветка.

# master - главная ветка создается по умолчанию. Другие ветки создавать и называть уже нужно самостоятельно.


# > git branch forum                    - создание новой ветки(тут с названием forum)

# > git checkout forum                  - переход на ветку forum

# > git checkout -b admin               - создание ветки admin и сразу переход на нее

# > git branch -a                       - посмотреть все ветки проекта и какая из них активная
# > git branch -v                       - посмотреть ветки с доп данными по последним коммитам

# > git branch -m new_name              - переименование текущей ветки на new_name

# > git branch -d forum                 - удалить ненужную ветку. (нужно находиться в другой ветке)

# > git merge forum                     - объединяем текущую ветку с ветой forum, все отличия из ветки forum добавились в нашу ветку, но сама ветка forum осталась. В логе у объединенной ветки будет двойное название, до удаления влитой ветки если она не нужна)
# (! конфликт слияния может призойти если у нас в одних и тех же фаилах нескольких сливающихся веток есть различный новый код. Его придется исправить вручную в фаилах и потом сделать новый коммит.)


# Создаем\меняем фаилы и делаем коммиты для конкретной ветки только после перехода на нее

# (пустые папки и их надпапки почемуто видны в других ветках. Чтобы предотвратить это нужно оставить там какойто фаил обычно это фаил-заполнитель .gitkeep)



puts '                                                GitHub'

# GitHub - это сайт-сервис онлайн-хостинга репозиториев/сервера/облачного хрпнилища/удаленного репозитория, обладающий всеми функциями распределённого контроля версий и функциональностью управления исходным кодом — всё, что поддерживает Git и даже больше, на котором мы можем сохранять наши репозитори. Далее мы или наша команда смогут с ними работать(качать дополнять итд). Так же мы можем качать(при помощи git clone) то что есть в открытом доступе, например библиотеки гемы итд.

# (Кроме GitHub есть другие сервисы, которые используют Git, — например, Bitbucket и GitLab)

# Рекомендованные размеры: фаилы не более 50мб, весь репозиторий не более 1гб.

# (?? Хз куда это добавить ??)
# GitHub: Перейдите в настройки вашего репозитория, выберите вкладку "Collaborators and teams" (Сотрудники и команды), и добавьте пользователя, указав его имя пользователя или email
# Настройка доступа: Убедитесь, что добавляемый контрибьютор имеет соответствующий уровень доступа. Например, на GitHub роль "Collaborator" даст возможности для выполнения git pull, git push и других команд.



puts '                       GitHub(подключение и выгрузка данных на удаленный репозиторий)'

# 1.  Создать репозиторий(new/start project) на GitHub. Потом указываем его название(войдет в url адрес) и прочие данные(описание, публичность, создать доп фаилы)


# 2.  Появляется страница команд(несколько первых уже ненужны если репозиторий уже создан локально)

# > git remote add origin https://github.com/username/rep_name.git     - подключение к определенному удаленному репозиторию, для возможности работы с ним
# origin - если проект имеет несколько удаленных репозитариев – каждому из них присваивается собственное имя. Главный репозитарий принято называть origin

# > git remote                       - проверить(в соотв папке проекта) подключены ли мы к удаленному репозиторию(тут выдает origin если подключены, ничего если не подключены и сообщение если нет папки .git)

# > git branch -M main               - nак как в GitHub главная ветка зазывается main а Git master, то нужно переименовать 2ю перед пушами в нее
# > git push -u origin main          - добавляет весь наш локальный репозиторий данной ветки(тут main) в гитхаб репозиторий(тут origin)
# > git push -u origin master:main   - либо так и написать, что вы хотите master отправить во внешний main

# Далее выдаст несколько способов подтверждения-авторизации нашего устройства и после подтверждения выгрузит фаилы на сервер, при след добавлениях в таблице будет последняя версия, остальное в коммитах.

# > git push                         -  заливает все


# 3.  Обновляем страницу и увидим фаилы нашего репозитория. Мы можем нажимать на них и смотреть что там. Посмотреть ветки
# commits         - (справа вверху таблички) Посмотреть(и взаимодействовать) все коммиты. Даты стоят не загрузки, а создания самих коммитов локально.
# Pull requests   - панель для обновления наших данных до тех что есть в репозитории.
# Add files       - скачивание или загрузка фаилов без команд консоли
# Code            - получить ссылки на клонирование репозитория или скачать zip архив с репозиторием


# 4.  Создаем фаил README.md(необязательно)  можно кнопкой или через консоль локально и потом закоммитить и добавить.



puts '                             GitHub(изменение ссылки на удаленный репозиторий)'

# 1. Смотрим текущие ссылки на удаленный репозиторий
# git remote -v
# origin  git@github.com:USERNAME/REPOSITORY.git (fetch)
# origin  git@github.com:USERNAME/REPOSITORY.git (push)

# 2a. Установим новую ссылку на репозиторий - https://github.com/USERNAME/REPOSITORY_NEW.git
# git remote set-url origin https://github.com/USERNAME/REPOSITORY_NEW.git

# 2b. Так же можем переустановить ссылку на связанный репозиторий
# > remote set-url upstream https://github.com/AndriiKot/Create__html-table__.git

# 3a. Проверяем результат
# git remote -v
# origin  https://github.com/USERNAME/REPOSITORY_NEW.git (fetch)
# origin  https://github.com/USERNAME/REPOSITORY_NEW.git (push)



puts '                                      GitHub(удаление репозитория)'

# 1. Заходим в Settings на странице репозитория
# 2. Прокручиваем в самый низ на раздел Danger Zone. В нем последний пункт удалить репозиторий.
# 3. Вводим название репозитория, пароль и он удаляется.



puts '                         GitHub(загрузка копии чужого репозитория, не подходит для форков?)'

# (!!! Для коммитов чужоей реп на гитхабе ниже )

# 1.  Для клонирования себе репозитория можно просто его скачать: нажать code(зеленая кнопка справа таблицы) и затем Download ZIP, либо клонировать через консоль:

# > git clone https://github.com/username/rep_name.git   - клонирование(перенос с сервера на комп) репозитория, URL адрес находится в зеленой кнопке code.
# Добавляется вмсете с папкой название которой == названию репозитория на github. Сразу же будет папка .git(соотв git init не нужен), подключен к репозиторию github

# > git pull                    - добавляем из репозитория все изменения которые были внесены в проект(которых у нас нет локально). Нужно для того чтобы докачать то что делали другие сотрудники. Обычно первое с чего начинают рабочий день. Имя сервера есть в папке .git
# > git pull origin master      - можно указать репозиторий и ветку если нужно



puts '                         GitHub(Fork, Pull Request - изменения в чужой репозиторий)'

# https://docs.github.com/en/get-started/quickstart/contributing-to-projects

# Минигайд про пулл реквесты:
# https://jeka.by/post/1053/github-send-PR-to-other-repository/

# Fork(создадим копию проекта с которого сможем отправлять изменения):
# 1. Заходим на необходимый чужой репозиторий, нажимаем справа вверху 'Fork' -> '+ Create a new fork' - создается копия этого репозитория в нашем Гитхаб хранилище
# 2. Клонируем эту копию из своего Гитхаб:
# > git clone https://github.com/username/rep_name.git
# 3. Вносим изменения в склонированный проет, пушим. Далее автору ставятся от этом пометки в поле fork.

# Pull Request(отправим изменения с нашей копии автору):
# 1. Нажимаем на 'Contribute' справа вверху(под зеленой кнопкой 'Code') -> 'Open Pull Request' откроются настройки(из какой ветки какого репозитория в какие, все изменения)
# 2. Нажимаем 'Create Pull Request' и указываем комментарии к изменениям которые внесли, нажимаем 'Create Pull Request' и теперь на вкладке 'Pull Request' у нас появилась отметка

# Автор мержит изменения:
# 1. Приходит уведомление(на вкладке с колокольчиком), открываем смотрим(кнопка 'Review changes' - написать ответ) 'Merge Pull Request' - слияние репозиториев(принять пул реквест)

# В нашем проекте по той же кнопке fork можно посмотреть кто себе форкнул. Можем принять или не принять изменения.



puts '                        GitHub(Fork, Pull Request - синхронизация с чужим репозиторием)'

# https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork

# Синхронизируйте свое ответвление репозитория, чтобы поддерживать его в актуальном состоянии с вышестоящим репозиторием.


# Вариант 1. Синхронизация ответвления ветки из веб-интерфейса:
# а. На GitHub перейдите на главную страницу ответвленного репозитория, который вы хотите синхронизировать с вышестоящим репозиторием
# б. Над списком файлов выберите раскрывающееся меню 'Sync fork'
# в. Просмотрите сведения о коммитах из вышестоящего репозитория, затем нажмите 'Update branch'


# Вариант 2. Синхронизация ветки форка из командной строки:

# 1. Прежде чем вы сможете синхронизировать свой форк с репозиторием upstream, вы должны настроить удаленный, который указывает на репозиторий upstream в Git
# а. Перечислите текущий настроенный удаленный репозиторий для вашего форка.
# $ git remote -v
#=> origin  https://github.com/YOUR-USERNAME/YOUR-FORK.git (fetch)
#=> origin  https://github.com/YOUR-USERNAME/YOUR-FORK.git (push)
# б. Укажите новый удаленный вышестоящий репозиторий, который будет синхронизирован с форком.
# $ git remote add upstream https://github.com/ORIGINAL-OWNER/ORIGINAL-REPOSITORY.git
# в. Проверьте новый репозиторий, который вы указали для своего форка.
# $ git remote -v
#=> origin    https://github.com/YOUR-USERNAME/YOUR-FORK.git (fetch)
#=> origin    https://github.com/YOUR-USERNAME/YOUR-FORK.git (push)
#=> upstream  https://github.com/ORIGINAL-OWNER/ORIGINAL-REPOSITORY.git (fetch)
#=> upstream  https://github.com/ORIGINAL-OWNER/ORIGINAL-REPOSITORY.git (push)

# 2. Извлечь ветки и соответствующие им коммиты из репозитория upstream. Коммиты в BRANCH-NAME будут сохранены в локальной ветке upstream/BRANCH-NAME.
# $ git fetch upstream
#=> remote: Counting objects: 75, done.
#=> remote: Compressing objects: 100% (53/53), done.
#=> remote: Total 62 (delta 27), reused 44 (delta 9)
#=> Unpacking objects: 100% (62/62), done.
#=> From https://github.com/ORIGINAL-OWNER/ORIGINAL-REPOSITORY
#=>  * [new branch]      main     -> upstream/main

# 3. Проверьте локальную ветку по умолчанию вашего форка — в данном случае мы используем main.
# $ git checkout main
#=> Switched to branch 'main'

# 4. Объедините изменения из ветки по умолчанию upstream, в данном случае upstream/main, в вашу локальную ветку по умолчанию. Это синхронизирует ветку по умолчанию вашего форка с репозиторием upstream, не теряя локальные изменения.
# $ git merge upstream/main
#=> Updating a422352..5fdff0f
#=> Fast-forward
#=>  README                    |    9 -------
#=>  README.md                 |    7 ++++++
#=>  2 files changed, 7 insertions(+), 9 deletions(-)
#=>  delete mode 100644 README
#=>  create mode 100644 README.md
# Если в вашей локальной ветке не было уникальных коммитов, Git выполнит ускоренную перемотку
# $ git merge upstream/main
#=> Updating 34e91da..16c56ad
#=> Fast-forward
#=>  README.md                 |    5 +++--
#=>  1 file changed, 3 insertions(+), 2 deletions(-)
# Если в вашей локальной ветке были уникальные коммиты, вам может потребоваться разрешить конфликты

# Синхронизация вашего форка обновляет только вашу локальную копию репозитория. Чтобы обновить ваш форк на GitHub.com, вы должны отправить/запушить свои изменения

# 5. Коммиты в наш синхронизированный репозиторий
# $ git push
# Далее, чтобюы залить их в целевой, нужно сделать Pull Request

# 6. Подтянуть изменения из чужого(целевого) синхронизированного репозитория
# $ git pull upstream main



puts '                                            GitHub Теги'

# > git tag                     - выводит список всех тегов если они есть

# > git tag version1_0_0        - создать тег локально
# > git tag -d version1_0_0     - удалить тег локально

# > git push origin --tags                      - залить все теги на GitHub
# > git push origin --delete version1_0_0       - удалить тег на GitHub

# Также можно перемещаться по тегам также как по веткам:
# > git checkout v1_0_0                   - переместиться на коммит по тегу
# > git checkout main                     - вернуться на последний коммит



puts '                                          GitHub pages(хостинг)'

# https://pages.github.com/    - облегченный хостинг.

# Работает только с открытым для других репозиторием

# Не поддерживает технологии: php, mySQL
# Поддерживает: js, jquery, bootstrap

# https://docs.github.com/ru/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site
# 1. Заходим в 'Settings' на странице репозитория
# 2. Находим пункт 'Pages' в меню слева, нажимаем
# 3. В разделе 'Branch' на кнопке вместо 'None' выбираем необходимую ветку
# 4. На основной странице репозитория справа внизу в пункте 'environments' можно перейти на нашу страницу и там же посмотреть ссылку на нее



puts '                                          GitHub Issue'

# https://docs.github.com/ru/issues/tracking-your-work-with-issues/quickstart

# Заметка по Issue на Github. У issue есть номер (например #12), если при коммите указать этот номер, то issue сама закроектся и пометится как выполненная.



puts '                                   GitHub(Авторизация через SSH)'

# SSH - secured shell

# Авторизация через SSH  - чтобы не вводить логин и пароль

# Чтобы SSH работал нужно сгенерировать ключ (инструкция для Винды):
# 1.  C:\Program Files\Git\usr\bin\ssh-keygen.exe
# 2.  C:\Users\имя_пользователя   ищем или создаем тут каталог .ssh   в итоге у нас получается путь например C:\Users\User\.ssh\
# 3.  Запускаем ssh-keygen.exe(программа для генерации ключей)(выход Ctrl+C)  и вводим(либо просто нажимаем энтер если наш путь предложен по умолчанию) в нее наш путь C:\Users\User\.ssh\id_rsa   (ключи можно генерить и в самом гитхабе)
# 4.  Далее спрашивает passphrase, лучше ее не вводить чтоб потом каждый раз не спрашивало, просто тыкаем энтер
# 5.  В директории .ssh появилось 2 фаила id_rsa (секретный ключ) и id_rsa.pub (публичный ключ)
# 6.  Копируем содержимое фаила id_rsa.pub в буфер обмена(это просто нажать скопировать))
# 7.  Заходим на гитхаб в раздел settings -> SSH and GPG keys -> New SSH key  Вводим название(любое) и копируем ключ, далее вводим пароль от Git - ключ создан

# Теперь например на странице с подсказками после создания репозитория есть ссылка на его ssh соотв можно его клонировать:
# > git clone git@github.com:username/rep_name.git
# На вопрос вводим yes - это значит что публичный ключ гитхаба будет добавлен к нам



puts '                                               Ungit'

# Ungit — графический веб интерфейс для Git.Это веб оболочка в нашем браузере, которая выполняет команды программы Git, например 'кнопка "Create Repository"' это тоже что и команда 'git init .' Возможно так же запускать его в облаке.

# Необходим Node.js версии 0.10 или выше и npm версии 1.3.1 или выше (ungit это пакет/библиотека nodejs)
# > npm install -g ungit          - установка пакета ungit (npm - node packet manager, -g говорит о том что нужно установить глобально а иначе установит в текущую директорию)

# Ungit работает как маленький сервер, открывается окно в браузере http://localhost:8448/...


# > ungit                    - команда запускает ungit. Нужно находиться в каталоге проекта
# > start ungit              - запустить в отдельном окне(из powershell не работает)

# сразу предлагает сделать директорию репозиторием(местом для хранения кода) либо склонировать репозитоий откудато.
# .git создается когда нажимаем кнопку "Create Repository" в ungit в браузере

# Когда мы создаем фаилы и каталоги, то ungit автоматически их обнаруживает. Можно на каждый из них нажать и посмотреть что в него дописалось
# Название коммита пишется в поле Title(required). Поле Body можно не заполнять.
# Даллее жмем кнопку Commit что под этими полями. Получается наш первый коммит отображающийся графически кружечком, на который можно нажать(справа будут разные команды) слева информация
# Если мы используем фаил который нам в коммите не нужен то до нажатия коммита снимаем галочку рядом с ним(придется каждый раз) либо кнопка справа от названия(i) 'Add to .gitignor'
# master - показывает где мы сейчас находимся, переместив ее мы можем откатиться к одному из предыдущих состояний(и например сделать параллельное ветвление коммитов и соотв версий нашей программы)

# Аналог git checkout 285f1287 через меню ungit:
# Нажимаем '+' справа от кружечка открывается поле, пишем там название(пр version2) и кажимаем кнопку Таg чтобы создать тег/метку/ссылку (для полноценного ветвления используется кнока Branch)
# Теперь можно нажать на метку(тут version2) справа откроется меню(как в у поля master) в нем нажимаем кнопку checkout и получится точка возврата от данного коммита и соотв переключаться между версиями

# Когда мы клонируем репозиторий то указатель master раздваивается на локальный и удаленный(origin/master). Если мы делаем коммит, то master, а origin/master сдвигается только после пуша коммита на Github

# Чтобы запушить, нажимаем на master затем на появившуюся кнопку push

# Fetch в меню сверху справа это похоже аналог pull












#
