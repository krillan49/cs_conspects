# Мб потом вынести в какуюто отдельную тему, тк это относится к программированию в общем а не к Руби


# 1 Бит - это выбор из 2х вариантов(вкл и выкл) - Ячейка памяти компьютера состоят из таких переключателей.
# 8 Бит = 1Байт(выбор из 256(2**8) вариантов)

# В кодировке UTF-8 символы кодируются и могут помещаться и в 1(англ буквы) и 2(ру буквы) и 3 и 4 байта в зависимости от символа


# Зачем добавлять в путь:
# добавить в переменную PATH каталог, в котором размещен исполняемый файл программы. Это избавит от необходимости каждый раз открывать файловый менеджер и переходить в папку с программой.


# Как читать код оказавшись в новом проекте, от самого лучшего способа к менее лучшим:
# 1. Коммиты, начиная с первого, если они норм а не простыни с горой кода в перемешку
# 2. Доки если есть
# 3. Тесты если есть
# 4. Посмотреть приложение через пользовательский интерфейс, потыкав всякое



puts '                                               Big-O'

# (constant time, O(1)) константное время. Сколько бы элементов мы не добавили в наш хеш, поиск всегда будет занимать одно и то же время(сразу найдет нужное).
# (linear time, O(N)) линейное время. Для поиска элемента нам необходимо перебрать весь массив (с помощью конструкции each). Если элементов будет много, то поиск будет занимать больше времени. Другими словами, с возрастанием размера массива возрастает и количество элементов, которое требуется просмотреть чтобы найти слово.
# Константное O(1) и линейное O(N) время это понятия о т.н. Big-O (большое O), понятие из Computer Science.



puts '                                             Типы языков'

# Языки делятся на 2 типа: компилируемые и интерпритируемые

# Компилируемые - существует программа, которая читает код и сразу трансформирует его в машинный код и создает исполняемый фаил, который может исполнить наш компьютер

# Интерпритируемые - интерпритатор прямо в момент запуска программы читает наш код и исполняет инструкции из него, те интерпритирует



puts '                              Языки со статической и динамической типизацией'

# Существует 2 вида языков: 1. С динамической типизацией; 2. Со статической типизацией;

# Руби - язык с динамической типизацией

# (Отличие явной-неявной и статической-динамической, в том что первое это указание типа переменных, а второе про использование, например пихание в массив ??)

# 1. Динамическая типизация - нужно меньше кода и программы более гибкие, но требуется большее покрытие тестами
# (на примере Руби):
def empty?(s) # метод принимает объект любого типа
  return s.size == 0 # будет работать для объекта любого типа у которого есть метод size
end


# 2. Статическая типизация -
# (на примере Java):
public boolean isEmpty(String s) { # Для каждого типа объекта нужно писать отдельный метод иначе программа даже не откомпилируется. Тут принимает только параметры типа String, а возвращается только тип boolean
  return s.length() == 0;
}



puts '                                  Языки с сильной и слабой типизацией'

# 1. Сильная типизация, когда для преобразования типов нужно явно указывать их преобразование(как в Руби например to_i)
# 2. Слабая типизация, когда явно преобразовывать не нужно и как в JS складывать например строку с чемто получая строку



puts '                                       Разное. Определения'

# Легаси код - код унаследованный(чужой) от предыдущих разработчиков

# рефакторинг - улучшение кода, чтоб он выглядел лучше и понятнее для разработчика

# Валидация(validation) - обозначает проверку параметров на их соответсвие ожидаемому. Например если отправлена форма с незаполненными полями

# scraping - область програмирования для парсинга информации

# Инициализация (initialization, инициирование) — создание, активация, подготовка к работе, определение параметров

# application - (приложение)

# .. -- означают переход на уровень ввех(влево от слэша), переход производится клавишей enter

# папка/директория/folder/каталог - это все одно и тоже


# Компилятор(compiler) - это программа принимающая исходный код и преобразующая его в объектный код
# Исходный код(sourse code) - это текст на языке программирования(то что пишет программист)
# Объектный код(object code) - промежуточный, еще не машинный, но уже не исходный.(промежуточные модули для сборки и компоновки в машинный код) набор техн символов.
# Машинный код - уже готов для исполнения. собранные объектные в исполняемые инструкции. тоже белиберда из спец символов

# Функция(function) - это действие, например - сказать "привет мир"
# Оператор - отвечает за определенные действия(функции), например print/puts ("привет мир")


# У браузера своя по сути виртуальная машина, в которой исполняется особый сорт программ. Грубо говоря это HTML (композиция элементов страницы) + CSS (отрисовка элементов страницы) + JS
# (манипулирование элементами, динамический отклик и т.д. и т.п.).
# С другой стороны, бекенд это просто ну вот программа на компьютере, исполняемый файл (для интерпретируемых языков - файл с кодом + программа-интерпретатор).
# Эта программа особым образом цепляется к другой программе - веб-серверу - чтобы браузеру в ответ на его запрос выдавать те или иные страницы (т.е. все эти HTML/CSS/JS)



puts '                                          Разное. Проги'

# Gow - набор юникс команд и программ для виндоус(есть на гитхаб) - можно установить. https://github.com/bmatzelle/gow
# grep - одна из таких програм. Фильтрует вывод в консоль по строкам в которых есть некие слова
# в консоли после имени фаила(через пробел) ставим символ перенаправления вывода(для след команды) через команду "|" # пр name.rb | grep aaa - например ищет строку с ааа в фаиле(полезно для подборщика)


# Чтобы Руби(?? И не только ??) понимал русский язык в интерпритаторе. Руби, Мак и Линукс используют кодировку символов UTF-8, а консоль Винды cp866
# #encoding: cp866 - (не забываем двоеточие после энкодинг)при вводе этой строки в начале программы комментарием мы подсказываем Руби кодировку.
# Потом в Фаре нажимаем F8(чтобы на панели появилось ANCI вместо OEM) в самом фаиле, потом пишем русским
# cp866(code page 866)(также она может называться DOS кодировкой)



puts '                                               Рекурсия'

# Рекурсия - функция вызывает сама себя, чтобы получить некий промежуточный результат

# Факториал 5 = 5 * 4 * 3 * 2 * 1
# Факториал 4 =     4 * 3 * 2 * 1
# Соответсвенно Факториал 5 = 5 * Факториал 4
# Факториал n = n * Факториал n-1

def factorial(n)
  puts "x = #{n}"
  if n == 1
    return n
  else
    return n * factorial(n - 1) # вызывается таже функция но с новым значением, соответвенно вернет значение этот внутренний вызов функции сюда во внешний вызов и так на каждом новом круге вовнутрь.
  end
end

p factorial(5) #=> 120
# puts:
# x = 5
# x = 4
# x = 3
# x = 2
# x = 1
















#
