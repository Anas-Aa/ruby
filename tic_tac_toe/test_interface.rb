#librairie qui gere l'interface graphique
require 'gtk2'

#initialisation de la librairie gtk
Gtk.init

window = Gtk::Window.new
window.set_title("test interface graphique ")

#permet de mettre fin a la boucle de l interface graphique
window.signal_connect('destroy') {
   Gtk.main_quit
}

button = Gtk::Button.new('Bonjour tout le monde')

#gere le signal quand on clique sur le bouton
button.signal_connect('clicked') {
   print "Bonjour tout le monde\n"
}


window.add(button)

button.show
window.show

#lance la boucle principal de l'interface graphique
Gtk.main
