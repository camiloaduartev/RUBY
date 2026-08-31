require './list'
require './item'

class ListApp
  attr_writer :list

  def initialize
    @list = List.new()
  end

  def run
    
    while true
    
      puts "Bienvenido a la lista de compras"
      puts "Ingrese una opcion: "
      puts "1 - Agregar articulo"
      puts "2 - Eliminar articulo"
      puts "3 - Marcar articulo como comprado"
      puts "4 - Mostrar lista de articulos"
      puts "5 - Eliminar todos los articulos"
      puts "6 - Salir"
      print "Opcion: "
      option = gets.chomp.to_i

      if option == 1
        print"Ingrese el articulo nombre del articulo a agregar: "
        item = gets.chomp
        @list.add_item(item)
        puts "Articulo agregado: " + item
      elsif option == 2
        puts "Ingrese el indice del articulo a eliminar: "
        index = gets.chomp.to_i
        @list.del_item(index)
        puts "Articulo eliminado."
      elsif option == 3
        puts "Ingrese el indice del articulo a marcar como comprado: "
        index = gets.chomp.to_i
        @list.check_item(index)
        puts "Articulo marcado como comprado."
      elsif option == 4
        @list.show_all()
      elsif option == 5
        puts "Esta seguro que desea eliminar todos los articulos? (s/n)"
        confirmation = gets.chomp.downcase
        if confirmation == "s"
          @list.remove_all()
          puts "Todos los articulos han sido eliminados."
        else
          puts "Operacion cancelada. No se han eliminado los articulos."
        end
      elsif option == 6
        puts "Saliendo de la aplicacion."
      else
        puts "Opcion invalida. Por favor, ingrese una opcion valida."
      end

    end 

  end 
end 


list_app = ListApp.new()

list_app.run
