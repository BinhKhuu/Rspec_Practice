class Book
	
	attr_accessor :title
	
	def title
		uncap_words = [ /^the$/, /^and$/, /^in$/, /^of$/, /^a$/, /^an$/]

		words = @title.split(/\W+/)
		words[0].capitalize!
		for w in words
			if !Regexp.union(uncap_words).match(w)
				w.capitalize!	
			end
		end
		@title = words.join(" ")
	end

end
