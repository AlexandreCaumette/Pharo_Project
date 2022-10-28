Class {
	#name : #EConstantTest,
	#superclass : #TestCase,
	#category : #'Projet_Pharo'
}

{ #category : #tests }
EConstantTest >> testEvaluate [

	self assert: ((EConstant new value: 5) evaluateWith: Dictionary new) equals: 5
]

{ #category : #tests }
EConstantTest >> testEvaluateWithClassCreationMessage [

	self assert: ((EConstant value: 5) evaluateWith: Dictionary new) equals: 5
]

{ #category : #tests }
EConstantTest >> testNegated [

	self assert: ((EConstant constant5) negated evaluateWith: Dictionary new) equals: -5
]

{ #category : #tests }
EConstantTest >> testPrinting [

	self assert: (EConstant constant5) printString equals: '5'
]
