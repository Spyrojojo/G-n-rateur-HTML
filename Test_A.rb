require 'gosu'

class Window_base < Gosu::Window
  def initialize
    super(300, 30, false)
    self.caption = "Generateur HTML | Press exit."
    @result = ""
  end
  def update
    create_text("ca marcheeeeee !", 1)
    create_picture("http://orig12.deviantart.net/678d/f/2014/294/b/6/erza_by_spyrojojo-d83oo6b.gif")
    File.open("Test.html", "w+") { |f| f.write(@result) }
    close   
  end
  def create_text(string, size); @result += "<h#{size}>#{string}</h#{size}>\n"; end
  def create_picture(link); @result += "<img src=#{link} />\n"; end
end

Window_base.new.show
