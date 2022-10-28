Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #'Projet_Pharo'
}

{ #category : #tests }
ENegationTest >> testEvaluate [

	| expression |
	
	expression := ENegation new.
	expression expression: (EConstant constant5).
	
	self assert: (expression evaluateWith: Dictionary new) equals: -5
]

{ #category : #tests }
ENegationTest >> testEvaluateWithClassCreationMessage [

	| expression |
	
	expression := ENegation expression: (EConstant constant5).
	
	self assert: (expression evaluateWith: Dictionary new) equals: -5
]

{ #category : #tests }
ENegationTest >> testNegatedStructureIsCorrect [

	| expression |
	
	expression := EConstant constant5.
	
	self assert: expression negated class equals: ENegation.
	self assert: expression negated negated equals: expression
]

{ #category : #tests }
ENegationTest >> testNegationNegated [
	
	self assert: ((EConstant constant5) negated negated evaluateWith: Dictionary new) equals: 5
]
