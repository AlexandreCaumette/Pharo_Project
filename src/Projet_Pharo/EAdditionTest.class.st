Class {
	#name : #EAdditionTest,
	#superclass : #TestCase,
	#category : #'Projet_Pharo'
}

{ #category : #tests }
EAdditionTest >> testEvaluate [

	| expression |
	
	expression := EAddition new.
	expression left: (EConstant constant5).
	expression right: (EConstant constant3).
	
	self assert: (expression evaluateWith: Dictionary new) equals: 8
]

{ #category : #tests }
EAdditionTest >> testEvaluateWithClassCreationMessage [

	| expression |
	
	expression := EAddition left: (EConstant constant5) right: (EConstant constant3).
	
	self assert: (expression evaluateWith: Dictionary new) equals: 8
]

{ #category : #tests }
EAdditionTest >> testEvaluateWithNegation [

	| expression |
	
	expression := EAddition 
		left: (ENegation expression: (EConstant constant5)) 
		right: (EConstant constant3).
	
	self assert: (expression evaluateWith: Dictionary new) equals: -2
]

{ #category : #tests }
EAdditionTest >> testNegated [

	| expression |
	
	expression := EAddition 
		left: (EConstant value: 5) 
		right: (EConstant value: 3).
	
	self assert: (expression negated evaluateWith: Dictionary new) equals: -8
]

{ #category : #tests }
EAdditionTest >> testPrinting [
	
	self assert: EAddition fivePlusThree printString equals: '( 5 + 3 )'.
	self assert: EAddition fivePlusThree negated printString equals: '- ( 5 + 3 )'
]
