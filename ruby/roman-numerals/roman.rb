class Integer < Numeric

  attr_reader = :roman_literal, :original_num


  DICTIONARY = { 1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M' }

  def to_roman
    roman_literal = ""
    original_num = self

    puts "--"
    puts "TRY FOR #{original_num}"
    puts "--"

    process_num(original_num)
    roman_literal
  end

  private


  def chop_off_thousand(num)
    num / 1000
    
  end

  # 40 = XL
  def process2(number)

    # # where does number lie between
    # closest_numeral = closest_numeral(number)


    # number_of_times = number / next_lowest_numeral
    # # 8 / 5 = 1
    # # 3 / 1 = 3
    # # 40 / 10 = 4

    # left_over = number - next_lowest_numeral

  end


  def closest_numeral(num)
    if num < 5
      1
    elsif num < 10
      5
    elsif num < 50
      10
    elsif num < 100
      50
    elsif num <500
      100
    elsif num < 1000
      500
    elsif num >= 1000
      1000
    end
  end




  def process_num(num)
    current_number = num
    # work out i
    i = 5 #work_out_i(current_number)
    if(current_number != 0)
      greater = current_number >= i
      current_literal = ""
      left_over = 0

      if greater
        number_of_times = current_number / i
        number_of_times.times do
          current_literal += "#{DICTIONARY[i]}"
        end
        left_over = current_number - (i * number_of_times)
      end
      # going to insert its letter number_of_times

      # puts "LEFT_OVER = #{left_over}"
      # puts "CURRENT_NUM = #{current_number}"
      # puts "CURRENT = #{current_literal}"

      if left_over < current_number / 2
        roman_literal = "#{process_num(left_over)}#{current_literal}"
        puts roman_literal
      elsif left_over >=  current_number / 2
        roman_literal = "#{current_literal}#{process_num(left_over)}"
        puts roman_literal
      end
    else
      ""
    end
  end

  def work_out_i(a_num)
    i = 0
    DICTIONARY.each do |k,v|
      if k >= a_num
        i = k
      end
    end
    i
  end

end
