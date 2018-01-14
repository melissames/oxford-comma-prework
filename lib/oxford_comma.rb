def oxford_comma(array)
  comma_string = ''
  and_string = ''

  if array.length <= 1
    array.join
  elsif array.length == 2
    array.join(' and ')
  else
    array.each_with_index { |word, index|
      if array[index] == array[-1]
        and_string << "and #{word}"
      else
        comma_string << "#{word}, "
      end
    }
    comma_string + and_string
  end
end
