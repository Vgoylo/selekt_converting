# метод, который из двух массивов выбирает общие элементы, 
# потом достает все элементы, где есть большие буквы, 
# потом делает все буквы в этих жлементах большими,
#  а потом сортирует в обратном порядке

def total_element(arr1,arr2)
  a = arr1 & arr2
  arr1 & arr2.select! do |element|
    element.match?(/[A-Z]/) 
  end
  a.reverse.to_s.upcase
end

puts total_element(
  ['mom', 'Dad','sisTer', 'wife', 'Son' 'sisTer'],
  ['brother', 'sisTer', 'wife', 'Son', 'Dad'],
)
