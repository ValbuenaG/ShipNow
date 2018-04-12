a = ['horse', 'dhore', 'heros', 'standard']


def isAnagram(word, posibleAnagrams)
	wordToArr = word.split('').sort
	trueAnagrams = []
	
	posibleAnagrams.length.times do |i|
		acum = 0
		
		aux = posibleAnagrams[i]
		aux = aux.split('').sort
		if(aux.length == wordToArr.length )
			aux.length.times do |i|
				if(aux[i]==wordToArr[i])
					
					acum+=1
				end
			end
		
		end
		if(acum==wordToArr.length && acum > 0)
			
			trueAnagrams.push(posibleAnagrams[i])
		end
		
	end
	trueAnagrams
end

puts isAnagram('horse', a)
