def sklonenie(number, krokodil, krokodila, krokodilov)
  ostatok = number % 10

  if number == nil || !number.is_a?(Numeric)
    number = 0
  end

  if ostatok == 1
    return krokodil
  elsif ostatok >= 1 && ostatok <= 4
    return krokodila
  elsif ostatok > 4 || ostatok == 0
    return krokodilov
  end

end

#класический for
a = 10
for i in 0..10
  sleep 1
  puts "#{a} " +
           sklonenie(a, "негритенок", "негритенка", "негритят") + " " +
           sklonenie(a, "пошел", "пошли", "пошли") + " купаться в море!"
  a -= 1
end
puts "end for"
sleep 2

#начнет с 0 и до 10
a = 10
10.times { |i|
  sleep 1
  puts "#{a} " +
      sklonenie(a, "негритенок", "негритенка", "негритят") + " " +
      sklonenie(a, "пошел", "пошли", "пошли") + " купаться в море!"
  a -= 1
}
puts "end times"
sleep 2

#есть возможность задавать стартовую позицию (в times старт начинается с ноля)
a = 5
a.upto(10){ |i|
  sleep 1
  puts "#{a} " +
           sklonenie(a, "негритенок", "негритенка", "негритят") + " " +
           sklonenie(a, "пошел", "пошли", "пошли") + " купаться в море!"
  a -= 1
}
puts "end undo"
sleep 2


#Итератор step эквивалентен циклу for с инкрементом равным 2, т.е. при каждой идерации i=+2
1.step(100, 20){ |i|
  sleep 1
  puts "#{i} " +
           sklonenie(i, "негритенок", "негритенка", "негритят") + " " +
           sklonenie(i, "пошел", "пошли", "пошли") + " купаться в море!"
}
puts "end step"
sleep 2