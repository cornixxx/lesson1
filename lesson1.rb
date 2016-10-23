require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.split('').map(&:to_i).inject(0, :+)
  end

  def age(birthday)
    if birthday
      birthday = Date.parse(birthday)
      today = Date.today
      age = today.year - birthday.year
      age_in_days = today - birthday
      "Я живу #{age} года или #{age_in_days} дней или #{age_in_days * 24} часов
      или #{age_in_days * 1140} минут или #{age_in_days * 1140 * 60} секунд"
    else
      'Invalid Date Format'
    end
  end

  def name
    first_name = gets
    second_name = gets
    last_name = gets
    full_name = [first_name, second_name, last_name].join(' ')
    "Hello #{full_name}!"
  end
end
