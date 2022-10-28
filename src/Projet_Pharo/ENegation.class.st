Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #'Projet_Pharo'
}

{ #category : #'instance creation' }
ENegation class >> expression: anExpression [

	| negation |
	
	negation := ENegation new.
	negation expression: anExpression.
	
	^ negation
]

{ #category : #visiting }
ENegation >> accept: aVisitor [

	^ aVisitor visitNegation: self
]

{ #category : #printing }
ENegation >> evaluateWith: anObject [

	^ (expression evaluateWith: anObject) negated
]

{ #category : #visiting }
ENegation >> expression [

	^ expression
]

{ #category : #visiting }
ENegation >> expression: anExpression [

	expression := anExpression 
]

{ #category : #initialization }
ENegation >> initialize [ 

	super initialize 
]

{ #category : #arithmetic }
ENegation >> negated [
	^ expression
]

{ #category : #printing }
ENegation >> printOn: aStream [
	aStream nextPutAll: '- '.
	expression printOn: aStream
]
