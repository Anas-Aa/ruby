load 'plateau.rb'

class Joueur

  #variable static qui permet de donner un numero de pion different a chaque joueur
  @@numero_pion = 1
  attr_accessor :plateau, :pion , :nom

  #constructeur de la classe joueur
  def initialize( plateau_de_jeu  , name)
    @plateau= plateau_de_jeu
    @pion = @@numero_pion
    @nom = name
    @@numero_pion += 1
  end

  #methode qui permet de garder la main tant qu'on a pas jouer un coup valide
  def joue
    coup_valide = false
    until coup_valide do
      puts "#{nom}, entrez le numero de la colonne: "
      colonne = gets
      puts "#{nom} entrez le numero de ligne : "
      ligne = gets
      coup_valide = plateau.place(ligne.to_i ,colonne.to_i ,pion)
    end    
  end

end

# test et ebauche du debut de la classe jeu
#initialisation du jeu 
plateau= Plateau.new

puts "Entrez le nom du premier joueur :"
nom_1=gets

puts "Entrez le nom du second joueur :"
nom_2=gets

joueur= Joueur.new(plateau , nom_1)
joueur_2=Joueur.new(plateau, nom_2)

#boucle du jeu a revoir

gagnant=joueur.nom

loop do
  joueur.joue
  puts plateau
  gagnant = joueur.nom
  break if plateau.gagne_colonne || plateau.gagne_ligne || plateau.gagne_diagonal
  
  joueur_2.joue
  puts plateau
  gagnant = joueur_2.nom
  break if plateau.gagne_colonne || plateau.gagne_ligne || plateau.gagne_diagonal

end

puts "Le gagnant est #{gagnant}"
