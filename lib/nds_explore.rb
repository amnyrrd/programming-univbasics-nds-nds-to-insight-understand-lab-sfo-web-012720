require 'pp'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def print_first_directors_movie_titles
  row_index = 0
  while row_index < directors_database.length do
      column_index = 0
      while column_index < directors_database[row_index][:name][column_index].length do
          if directors_database[row_index][:name].include?("Stephen Spielberg")
            puts directors_database[row_index][:movies][column_index][:title]
                  column_index += 1
          end
          

      end
    row_index += 1
  end
  # pp directors_database
  # p directors_database[0][:movies][0][:title]
  # p directors_database[0][:movies][1][:title]
  # p directors_database[0][:movies][2][:title]
  # p directors_database[0][:movies][3][:title]
  # p directors_database[0][:movies][4][:title]
  # p directors_database[0][:movies][5][:title]
end

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end


