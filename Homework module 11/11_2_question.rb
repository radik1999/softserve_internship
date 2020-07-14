require_relative '11_1_answer'

# Клас для збереження питання та управління його вмістом.
# При створенні об'єктів цього класу ми можемо передати текст питання
# та інформацію щодо відповіді.
# Також є реалізовані методи для:
#     додавання нових відповідей;
#     перевірки кількості правильних відповідей користувача;
#     отримання множини номерів правильних питань;
#     виводу тексту питання на екран та звитування відповіді;
#     виводу результатів по даному питанню.
#  Також є службовий метод для опрацювання вхідних даних від користувача
#  ( даних з консолі ).
# 
# Даний клас залежить від класу Answer.
# 

class Question
  attr_accessor :text, :answers, :info, :user_answer

  def initialize(text = 'не вказано', info = 'не вказано')
    @text = text
    @info = info
    @answers = []
  end

  # метод для додавання питання в множину питань
  def add_answer(answer)
    @answers << answer
  end

  # функція, яка видає відношення правильних варіантів, які були вказані користувачем
  # та загальної кількості правильних варіантів
   def check
    correct = 0
    fault = 0
    answers = get_correct
    @user_answer.each do |e|
      if answers.include? e
        correct += 1
      else
        fault += 1
      end
    end

    correct.to_f / answers.count.to_f
  end

  # метод проходиться по всіх відповідях питання та 
  # формує масив індексів правильних відповідей
  def get_correct
    correct = []
    @answers.each do |e|
      correct << e if e.correct
    end
    correct
  end

  # мето генерує питання та зчитує відповідь користувача
  def generate(number)
    puts ''
    puts "#{number}. #{@text}"
    @answers.each_with_index do |answer, index| 
      answer.generate index
    end
    begin
      puts 'Your guess: '
      data = gets.chomp
      @user_answer = cast_user_answers data
    rescue ArgumentError
      puts 'Enter number only'
      retry
    end
  end

  # цей метод перетворює ввід користувача на масив чисел 
  def cast_user_answers(data)
    temp = data.split ','
    result = []
    temp.each do |e|
      if @answers[Integer(e)]
        result << @answers[Integer(e)]
      end
    end
    result
  end
  # Ця функція виводить у потрібній формі результати
  def generate_result(index)
    puts ''
    puts "Питання №#{index}: #{@text}"
    puts "Ваш варіант: #{@user_answer.count > 0 ? @user_answer.collect { |usr| usr.text }.join(', ') : 'None'}"
    puts "Правильний варіант: #{get_correct.collect { |usr| usr.text }.join(', ')}"
    puts "Коротка довідка: #{@info}"
  end
end













