def show_menu
    puts "Базовий калькулятор на Ruby"
    puts "Оберіть дію:"
    puts "1. Додавання (+)"
    puts "2. Віднімання (-)"
    puts "3. Множення (*)"
    puts "4. Ділення (/)"
    print "Ваш вибір (1-4): "
  end
  def get_number(prompt)
    print prompt
    gets.chomp.to_f
  end
  loop do
    show_menu
    choice = gets.chomp
    num1 = get_number("Введіть перше число: ")
    num2 = get_number("Введіть друге число: ")
    result = case choice
    when "1"
      num1 + num2
    when "2"
      num1 - num2
    when "3"
      num1 * num2
    when "4"
      if num2 != 0
        num1 / num2
      else
        "Помилка: ділення на нуль!"
      end
    else
      "Невірний вибір!"
    end
    puts "Результат: #{result}"
    print "Бажаєте виконати ще одну операцію? (так/ні): "
    break if gets.chomp.downcase != "так"
end