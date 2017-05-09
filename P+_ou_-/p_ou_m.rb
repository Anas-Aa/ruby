#! /usr/bin/ruby

valeur= rand(100)

essaye=-1

while essaye != valeur do
  puts("Entrez un nombre entre 0 et 100")
  essaye=gets.to_i

  if(essaye > valeur)
    puts " cest moins"
  elsif ( essaye <valeur)
    puts " c est plus"
  else
    puts "trouver !!!"
  end
end

  
