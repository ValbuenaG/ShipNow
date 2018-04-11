a = ['horse', 'shore', 'heros', 'standard']


def isAnagram(word, posibleAnagrams)
	wordToArr = word.split('').sort
	trueAnagrams = []
	posibleAnagrams.length.times do |i|
		aux = posibleAnagrams[i]
		aux = aux.split('').sort
		if(wordToArr[i] == aux[i] &&aux.length == wordToArr.length )
			trueAnagrams.push(posibleAnagrams[i])
		
		end
	end
	trueAnagrams
end

puts isAnagram('horse', a)
