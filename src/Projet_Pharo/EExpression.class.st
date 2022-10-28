Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'Projet_Pharo'
}

{ #category : #visiting }
EExpression >> accept: aVisitor [

	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
EExpression >> evaluateWith: anEnvironment [

	| visitor |
	
	visitor := EEvaluatorVisitor new.
	visitor bindings: anEnvironment.
	
	^ self accept: visitor 
]

{ #category : #initialization }
EExpression >> initialize [ 

	super initialize
]

{ #category : #arithmetic }
EExpression >> negated [

	^ ENegation expression: self
]
