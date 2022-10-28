Class {
	#name : #EMultiplicationTest,
	#superclass : #TestCase,
	#category : #'Projet_Pharo'
}

{ #category : #tests }
EMultiplicationTest >> testEvaluate [

	| expression |
	
	expression := EMultiplication new.
	expression left: (EConstant constant5).
	expression right: (EConstant constant3).
	
	self assert: (expression evaluateWith: Dictionary new) equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluateWithClassCreationMessage [

	| expression |
	
	expression := EMultiplication left: (EConstant constant5) right: (EConstant constant3).
	
	self assert: (expression evaluateWith: Dictionary new) equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluateWithNegation [ 

	| expression |
	
	expression := EMultiplication new.
	expression left: (EConstant constant5).
	expression right: (ENegation expression: (EConstant constant3)).
	
	self assert: (expression evaluateWith: Dictionary new) equals: -15
]

{ #category : #tests }
EMultiplicationTest >> testNegated [

	| expression |
	
	expression := EMultiplication left: (EConstant constant5) right: (EConstant constant3).
	
	self assert: (expression negated evaluateWith: Dictionary new) equals: -15
]

{ #category : #tests }
EMultiplicationTest >> testPrinting [
	
	self assert: EMultiplication fiveTimesThree printString equals: '( 5 * 3 )'.
	self assert: EMultiplication fiveTimesThree negated printString equals: '- ( 5 * 3 )'
]
