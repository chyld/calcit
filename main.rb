require 'rainbow'
require_relative 'functions'

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'm'
    mortgage_calc
  when 'i'
    bmi_calc
  when 't'
    trip_calc
  end

  response = menu
end
