require 'gosu'

Name = "Salut"
Extent = ".html"
Picture = "https://upload.wikimedia.org/wikipedia/en/4/44/Spyro_the_Dragon_(character).JPG"
Text = "Ce test fut bien concluant mdr"
Size_text = 1
Title = "Spyrojojo test page HTML" 

class Window_base < Gosu::Window
  def initialize
    super(250, 100, false)
    self.caption = "Generateur HTML - Press escape to exit"
    @text = Gosu::Font.new(self, "Arial", 15)
    File.open(Name+Extent, "w+") { |f| f.write("<html>\n"+"<head>\n"+"<title>#{Title}</title>\n"+"</head>\n"+"</html>\n"+"<body>\n"+"<h#{Size_text}>#{Text}</h#{Size_text}>\n"+"<img src=#{Picture} />\n"+"</body>\n") }
  end

  def button_down(id); close if id == Gosu::KbEscape; end

  def draw
    @text.draw("Le fichier #{Name} a etait genere en #{Extent}.", 2, 2, 1) 
  end 

end

Window_base.new.show





#Gosu::Font.new(WINDOW, FONT, size)
#draw_rot(@x, @y, @z, @angle, center_x, center_y, @zoom_x, @zoom_y, Gosu::Color.new(255, 0, 255, 0), :default)
#File.open("lol.txt", "w+") { |f| f.write("Coucou je suis un pakistanais, vous voulez fleur ?") }`

#@f = File.new("out.txt", "w+")
# @f.write("1234567890\n";"azerty") 
#Test = File.open("coucou.txt", "r+") { |f| f.read }


