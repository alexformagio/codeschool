#using unless
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
unless games.empty?
  puts "Games in your vast collection: #{games.count}"
end

#------------------------------------------------------------------------------
#inline statement
puts "Games in your vast collection: #{games.count}" unless games.empty?

#------------------------------------------------------------------------------
#Implied nil
search = "Contra2"
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
search_index = games.find_index(search)

#-----------------------------------------------------------------------------
#ruby understand nil as false
if search_index
  puts "Game #{search} Found: #{games[search_index]} at index #{search_index}."
else
  puts "Game #{search} not found."
end

#-----------------------------------------------------------------------------
#short-circuit and
search = "Super Mario Bros."
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
matched_games = games.grep(Regexp.new(search))

# Found an exact match
puts (matched_games.include?(search) && matched_games.length > 0) ? "Game #{search} found." : "Game #{search}"

#------------------------------------------------------------------------------
#conditional assignment
search = nil
search = search || ""
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
matched_games = games.grep(Regexp.new(search))
puts "Found the following games..."
matched_games.each do |game|
  puts "- #{game}"
end


#conditional return 1
search = "Contra"
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
search_index = games.find_index(search)
search_result = if search_index
  "Game #{search} found: #{games[search_index]} at index #{search_index}."
else
  "Game #{search} not found."
end
puts search_result


#Conditional return 2
def search(games, search_term)
  search_index = games.find_index(search_term)
  #search_result =
  if search_index
    "Game #{search_term} found: #{games[search_index]} at index #{search_index}."
  else
    "Game #{search_term} not found."
  end
  #return search_result
end

#short-circuit evaluation
def search_index(games, search_term)
 games.find_index(search_term) || "Not Found"
end


puts search_index(games,"Contra2")
puts search_index(games,"Contra")



