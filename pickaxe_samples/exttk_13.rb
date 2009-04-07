#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'tk'

class GifViewer

  def initialize(filelist)
    setup_viewer(filelist)
  end

  def run
    Tk.mainloop
  end

  def setup_viewer(filelist)
    @root = TkRoot.new {title 'Scroll List'}
    frame = TkFrame.new(@root)

    image_w = TkPhotoImage.new
    TkLabel.new(frame) do 
      image image_w
      pack 'side'=>'right'
    end

    list_w = TkListbox.new(frame) do
      selectmode 'single'
      pack 'side' => 'left'
    end
      
    list_w.bind("ButtonRelease-1") do
      busy do
        filename = list_w.get(*list_w.curselection)
        tmp_img = TkPhotoImage.new { file filename }
        scale   = tmp_img.height / 100
        scale   = 1 if scale < 1
        image_w.copy(tmp_img, 'subsample' => [scale, scale])
        image_w.pack
      end
    end

    filelist.each do |name|
      list_w.insert('end', name) # Insert each file name into the list
    end

    scroll_bar = TkScrollbar.new(frame) do 
      command {|*args| list_w.yview *args }
      pack    'side' => 'left', 'fill' => 'y'
    end

    list_w.yscrollcommand  {|first,last| scroll_bar.set(first,last) }
    frame.pack
  end

  # Run a block with a 'wait' cursor
  def busy 
    @root.cursor "watch" # Set a watch cursor
    yield
  ensure
    @root.cursor "" # Back to original
end

end

viewer = GifViewer.new(Dir["screenshots/gifs/*.gif"])
viewer.run
