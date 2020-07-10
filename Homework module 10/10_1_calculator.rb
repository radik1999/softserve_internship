#
# Калькулятор з такими можливостями:
# 1. додавання, віднімання, множення, ділення
# 2. додавання, віднімання з пам’яті і перегляд її стану
# 3. ланцюгування методів @calc.add(3).multiply(6) => 18
# 4. збереження актуального стану і зчитування його
# 5. можливість очищення актульного стану
#
# Змінна калькулятора може бути ініціалізована певним значенням.
# Доступ до пам’яті та актуального результату здійснюється за допомогою
# ґеттерів відповідних полів об’єкту, а саме методів result та memory.
#

class Calculator
  attr_reader :memory, :result

  def initialize num = 0
    @result = num
    @memory = 0
  end

  def add(par)
    return Calculator.new(@result + par)
  end

  def substract(par)
    return Calculator.new(@result - par)
  end

  def multiply(par)
    return Calculator.new(@result * par)
  end

  def divide(par)
    return Calculator.new(@result / par)
  end

  def add_to_memory
    @memory += @result
    return self
  end

  def clear
    @result = 0
  end

  def substract_from_memory
    @memory -= @result
    return self
  end


end
