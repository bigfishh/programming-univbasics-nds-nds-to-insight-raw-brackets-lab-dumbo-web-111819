  
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  pp directors_database
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  row_index = 0 
  while row_index < directors_database.length do 
    element_index = 0
    while element_index < directors_database[row_index].length do
      indvi_dtotal = 0
      indvi_dtotal += directors_database[row_index][:movies][element_index][:worldwide_gross]
      element_index += 1
      result[directors_database[row_index][:name]] = indvi_dtotal
    end
    row_index += 1
  end
  # Be sure to return the result at the end!
  result
end






