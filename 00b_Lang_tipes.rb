puts '                                             Типы языков'

# Языки делятся на 2 типа: компилируемые и интерпритируемые

# компиляция - это трансляция исходного кода в код машинный

# Компилируемые - существует программа, которая читает код и сразу трансформирует его в машинный код и создает исполняемый фаил, который может исполнить наш компьютер

# Компилятор(compiler) - это программа принимающая исходный код и преобразующая его в объектный код
# Исходный код(sourse code) - это текст на языке программирования(то что пишет программист)
# Объектный код(object code) - промежуточный, еще не машинный, но уже не исходный.(промежуточные модули для сборки и компоновки в машинный код) набор техн символов.
# Машинный код - уже готов для исполнения. собранные объектные в исполняемые инструкции. тоже белиберда из спец символов


# Интерпритируемые - интерпритатор прямо в момент запуска программы читает наш код и исполняет инструкции из него, те интерпритирует


# Программы, написанные например на Руби, не компилируются, а интерпретируются: мы ведь запускаем программы с помощью команды "ruby app.rb", а не просто "./app", тоесть запускаем не скомпилированный исполняемый фаил, а просим интерпритатор прочитать код в филе и обработать его



puts '                              Языки со статической и динамической типизацией'

# Существует 2 вида языков: 1. С динамической типизацией; 2. Со статической типизацией;

# Руби - язык с динамической типизацией

# (Отличие явной-неявной и статической-динамической, в том что первое это указание типа переменных, а второе про использование, например пихание в массив ??)

# 1. Динамическая типизация - нужно меньше кода и программы более гибкие, но требуется большее покрытие тестами
# (на примере Руби):
def empty?(s)        # метод принимает объект любого типа
  return s.size == 0 # будет работать для объекта любого типа у которого есть метод size
end


# 2. Статическая типизация -
# (на примере Java):
public boolean isEmpty(String s) { # Для каждого типа объекта нужно писать отдельный метод иначе программа даже не откомпилируется. Тут принимает только параметры типа String, а возвращается только тип boolean
  return s.length() == 0;
}


# Типизация
# - ограничит руби, в этом весь ее механизм(вводить ограничения экспрессивности в замен на обещание корректности)
# - она уменьшит скорость разработки, из за более усложненного тулинга, увеличенной кодовой массы
# - она добавит новых багов(более свойственных статик языкам) и уменьшит количество других багов(связанных чаще с динамикой), новые баги появятся благодаря увеличению code mass(чем больше кода, тем больше багов), то есть вы не уберете баги, а уберете некоторую чать "динамических" багов, и добавите тонну "статических", ибо типы покрывают лишь небольшую часть логики проекта

# Тесты помимо (non-exhaustive правда) тестирования типов, добавляют тестирование любой другой логики. Наличие нормальой test suite функциональных, интеграционных, юнит тестов, дает бесконечно больше чем проверка типов во время компиляции



puts '                                  Языки с сильной и слабой типизацией'

# 1. Сильная типизация, когда для преобразования типов нужно явно указывать их преобразование(как в Руби например to_i)
# 2. Слабая типизация, когда явно преобразовывать не нужно и как в JS складывать например строку с чемто получая строку














#
