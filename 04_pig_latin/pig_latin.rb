def translate word
	words = word.split(/\W+/)
	new_word = ""
	for w in words
		if /[aeiou]/.match(w[0])
			w << "ay"
		else
			ii = 1
			while /[^aeiou]/.match(w[ii])
				ii += 1
			end
			if w[ii-1] == 'q' && w[ii] == 'u'
				ii += 1
			end
			w << w[0,ii]+"ay"
			w = w[ii,w.length]	
		end
	new_word = new_word + w + " "
	end
	word = new_word[0,new_word.length-1]
end