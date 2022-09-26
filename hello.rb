# def divisor(num,range,bottom)
#   num_div = (1..num).select{ |count| num % count == 0 }
# #   range_div = (1..range).select{ |count| num % count == 0 }
#   bottom_div = (bottom..range).select{ |count| num % count == 0 }
#   puts "約数の数は#{num_div.length}です"
#   puts "約数の総和は#{num_div.sum}です"
#   puts "#{bottom}以上#{range}以下の約数の和は#{bottom_div.sum}です"
# end


# puts "約数の総和を出したい整数を入力してください"
# num = gets.to_i
# puts "和を出したい約数の範囲を指定してください"
# range = gets.to_i
# puts "和を出したい約数の範囲を指定してください"
# bottom = gets.to_i
# divisor(num,range,bottom)

def kakewari(number)
    number = (1..9991) * (2..9992) / (3..9993) + (4..9994) * (5..9995) / (6..9996) + (7..9997) * (8..9998) / (9..9999)
    puts number.sum
end

kakewari(number)