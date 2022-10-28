Class {
	#name : #EVariableTest,
	#superclass : #TestCase,
	#category : #'Projet_Pharo'
}

{ #category : #tests }
EVariableTest >> testEvaluateXplusY [

	| x y expression |
	
	x := EVariable id: #x.
	y := EVariable id: #y.
	expression := EAddition left: x right: y.
	
	self assert: (expression evaluateWith: {#x -> 10 . #y -> 2} asDictionary) equals: 12.
	self assert: (expression evaluateWith: {#x -> 10 . #y -> 12} asDictionary) equals: 22.
]

{ #category : #tests }
EVariableTest >> testValueOfx [

	self assert: ((EVariable id: #x) evaluateWith: {#x -> 10} asDictionary) equals: 10
]

{ #category : #tests }
EVariableTest >> testValueOfxInNegation [

	self assert: ((EVariable id: #x) negated evaluateWith: {#x -> 10} asDictionary) equals: -10
]
