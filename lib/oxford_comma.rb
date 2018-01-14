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
        comma_string << "#{word}, "
      else
        and_string << " and #{word}"
      end
    }
    comma_string + and_string
  end
end
