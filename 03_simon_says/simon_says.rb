def echo msg
	msg
end

def shout msg
	msg.upcase	
end

def repeat (msg, times=2)
	new_msg = msg.dup
	for ii in 1...times
		new_msg = new_msg + " " + msg
	end
	new_msg
end

def start_of_word (word, num)
	s_word = word[0,num]
end

def first_word word
	words = word.split(/\W+/)
	words[0]
end

def titleize word 
	words = word.split(/\W+/)
	title = ""
	words[0].capitalize!
	for w in words 
		if w != 'or' &&  w != 'and' && w != 'the' && w != 'over'
			w.capitalize!
		end
		title = title + w + " "
	end
	title[0,title.length-1]
end