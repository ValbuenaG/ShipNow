a = ['horse', 'shore', 'heros', 'standard']


def isAnagram(word, posibleAnagrams)
	wordToArr = word.split('').sort
	posibleAnagrams.length.times do |i|
		aux = posibleAnagrams[i]
		aux = aux.split('').sort
		if(wordToArr[i] != aux[i])
			posibleAnagrams.delete_at(i)
		end
	end
	posibleAnagrams
end

puts isAnagram('horse', a)
