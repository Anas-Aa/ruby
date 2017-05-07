#!/usr/bin/ruby
#class Plateau

class Plateau

  
  attr_accessor :plateau

  #constructeur de la classe
  def initialize
    @plateau = [[0,0,0],[0,0,0],[0,0,0]]  # Array.new(Array.new(3,0))
  end

  #methode qui permet d'efficher le plateau
  def to_s
    plat=""
    
    plateau.each do |elm|
      elm.each do |elmt|
        plat= plat + "#{elmt}  ".chomp
      end
      plat = plat + "\n"
    end
    puts plat
  end

  #methode qui place un pion  a la case n et m du plateau
  def place( n, m, pion)
    if plateau[n][m]==0
      plateau[n][m]=pion
      return true
    else
      puts "coup invalide rejoue"
      return false
    end
  end

  #methode qui permet de verifier qu'une ligne est gagnante ou non 
  def gagne_ligne
    plateau.size.times do |elt|
      debut = plateau[elt][0]==plateau[elt][1]
      millieu = plateau[elt][1]==plateau[elt][2]
      non_null =  plateau[elt][0]!=0
      if debut && millieu && non_null
        return true
      end 
    end
    return false
  end

  #methode qui permet de verifier qu'une colonne est gagnante ou non 
   def gagne_colonne
     plateau.size.times do |elt|
       debut = plateau[0][elt]==plateau[1][elt]
       millieu = plateau[1][elt]==plateau[2][elt]
       non_null =plateau[0][elt]!=0
       if debut && millieu && non_null
        return true
      end 
    end
    return false
  end

   #methode qui permet de verifier qu'une des diagonales est gagnante ou non 
   def gagne_diagonal
     diagonal = plateau[0][0] == plateau[1][1]
     diagonal_millieu = plateau[1][1] == plateau[2][2]
     diagonal_inverse = plateau[0][2] == plateau[1][1] 
     diagonal_millieu_inverse = plateau[1][1] == plateau[2][0]
     millieu_non_null =  plateau[1][1] != 0
     
     if diagonal && diagonal_millieu && millieu_non_null
       return true
     elsif diagonal_inverse && diagonal_millieu_inverse  && millieu_non_null
       return true
     end    
     return false
   end
   
end



#on va utiliser la commande shell pour dire Bonjour
wasGood = system( "echo 'Bonjour'" )
