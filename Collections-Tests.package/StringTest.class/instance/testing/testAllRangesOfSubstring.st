testAllRangesOfSubstring

self assert: ('aabbccbb' allRangesOfSubstring: 'bb' ) = {(3 to: 4). (7 to: 8)}.
self assert: ('� � � � � � � � � � � �' allRangesOfSubstring: '� � �') = {(11 to: 15)}.
self assert: ('test' allRangesOfSubstring: '') = #().