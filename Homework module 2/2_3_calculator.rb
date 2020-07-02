# Написати калькулятор, який отримуватиме на вході код команди та два числа
# Допустиму оперції: +, -, *, /, %

# Ви маєте дописати логіку для опрацювання валідних (правильних) значень вхідних параметрів.

class Calculator

  def calculate

    # Оголошуємо набір можливих операцій
    possible_operations = ["1", "2", "3", "4", "5"]

    # Формуємо повідомлення для виводу користувачу
    message = "Доброго дня, вас вітає програма калькулятор!\n"
    message += "Для початку роботи введіть код операції:\n"
    message += "1. +\n"
    message += "2. -\n"
    message += "3. *\n"
    message += "4. /\n"
    message += "5. %\n"

    # Виводимо сформоване повідомлення
    puts message

    # Зчитуємо введений користувачем рядок
    operation = gets.chomp
    # Розбиваємо на набір чисел, де в роді розділювача виступає пробіл
    operation = operation.split(" ")

    # Перевіряємо, чи введений код операції попадає в набір можливих
    if !possible_operations.include? operation[0]
      # Якщо ні, то виводимо дане повідомлення
      puts "Введений код не існуючої операції"
    else
      # Якщо так, тоді ми записуємо два числа, з якими ми будемо робити операцію у відповідні змінні
      a, b = operation[1].to_f, operation[2].to_f
      puts operation
      # В залежності від обраної операції згідно з повідомленням ми виводимо результат
      puts case operation[0].to_i
      when 1
        puts "#{a} + #{b} = #{a + b}"
      when 2
        puts "#{a} - #{b} = #{a - b}"
      when 3
        puts "#{a} * #{b} = #{a * b}"
      when 4
        puts "#{a} / #{b} = #{a / b}"
      when 5
        puts "#{a} % #{b} = #{a % b}"
      end
    end

    # Тут ми нагадуємо користувачеві про можливі обчислювальні похибки
    puts "Дякуємо за користування програмою. Пам'ятайте про похибку обчислень!"
  end
end
