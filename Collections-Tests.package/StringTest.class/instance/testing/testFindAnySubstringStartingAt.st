testFindAnySubstringStartingAt

self assert: ('tester12345' findAnySubstring: #('st' $1) startingAt: 1) = 3.
self assert: ('������������1234' findAnySubstring: #('st' '' '��' '123') startingAt:  1) = 9.
self assert: ('������������' findAnySubstring: #('') startingAt:  2) = 13.
self assert: ('������������' findAnySubstring: #('��') startingAt:  3) = 9.
self assert: ('������������' findAnySubstring: #() startingAt:  3) = 13.
self assert: ('test12345' findAnySubstring: #('"' '@') startingAt: 12) = 10.