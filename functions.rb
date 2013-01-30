def menu
  puts `clear`
  puts "***CalcIt***".color("#cc0033")
  print "(b)asic, (a)dvanced, (m)ortgage, bm(i), (t)rip or (q)uit: ".color("#00cc33")
  gets.chomp.downcase
end

def mortgage_calc
  print "principal: "
  p = gets.to_f
  print "yearly interest rate: "
  i = gets.to_f / 12
  print "number of payments: "
  n = gets.to_i
  x = (1+i)**n
  puts "Your monthly mortgage payment is $#{p*i*x/(x-1)}"
  gets
end

def bmi_calc
  print "weight: "
  weight = gets.to_f
  print "height: "
  height = gets.to_f
  puts "Your BMI is #{(weight/(height**2))*703}"
  gets
end

def trip_calc
  print "distance: "
  distance = gets.to_f
  print "mpg: "
  mpg = gets.to_f
  print "gas price per gallon: "
  cost = gets.to_f
  print "speed: "
  speed = gets.to_f
  mpg = mpg_utility(speed, mpg)
  puts "It will take you #{distance/speed} hours at a cost of $#{(distance/mpg)*cost}"
  gets
end

def mpg_utility(speed, mpg)
  if speed > 60
    mpg - ((speed - 60) * 2)
  else
    mpg
  end
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f
  print "second number: "
  b = gets.to_f

  case operation
  when 'a'
    puts "#{a + b}"
  when 's'
    puts "#{a - b}"
  when 'm'
    puts "#{a * b}"
  when 'd'
    puts "#{a / b}"
  end

  gets
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f

  if operation == 's'
    puts "#{Math.sqrt(a)}"
  else
    print "second number: "
    b = gets.to_f
    puts "#{a**b}"
  end

  gets
end
