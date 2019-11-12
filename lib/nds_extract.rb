$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
def directors_totals(nds)
  pp nds
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  dir_total = 0 
  dir_index = 0 
  while dir_index < nds.length do 
    dir_name = nds[dir_index][:name]
    mov_index = 0 
    dir_mov = nds[dir_index][:movies]
    while mov_index < dir_mov.length do 
      dir_total += dir_mov[mov_index][:worldwide_gross]
      result[dir_name] = dir_total
      mov_index += 1 
    end 
    dir_index += 1 
  end 
  result 
end








