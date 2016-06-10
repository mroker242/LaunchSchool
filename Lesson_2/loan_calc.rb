# loan_calculator.rb

loop do
  loan = ''
  puts 'Loan Calculator: Please enter the amount you would like to borrow:'
  loop do
    loan = gets.chomp.to_i
    if loan == 0
      puts 'Please input a number:'
    else
      break
    end
  end

  duration = ''
  puts 'How long would you like to borrow for? (Enter in years)'
  loop do
    duration = gets.chomp.to_i
    duration *= 12
    if duration == 0
      puts 'Please input a correct number:'
    else
      break
    end
  end

  mo_rate = ''
  puts 'what is the interest rate?'
  loop do
    mo_rate = gets.chomp.to_i
    mo_rate = (mo_rate.to_f / 100) / 12

    if mo_rate == 0
      puts 'Please input a correct number:'
    else
      break
    end
  end

  def monthy_fixed(loan, duration, mo_rate)
    mo_rate_added = mo_rate + 1
    mo_rate_powered = mo_rate_added**duration
    left_side_equation = mo_rate * mo_rate_powered
    mo_rate_power = mo_rate_added**duration
    right_side_equation = mo_rate_power - 1
    main_equation = left_side_equation / right_side_equation
    loan *= main_equation
  end

  puts "Your monthly rate is: $#{format('%02.2f', monthy_fixed(loan, duration, mo_rate))}"
  puts 'Would you like to make another calculation? (y or n)'
  answer = gets.chomp

  break unless answer == 'y'
end

puts 'Thank you for using the loan calaulator.'
puts 'Good Bye!'
