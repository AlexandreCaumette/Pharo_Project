Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #'Projet_Pharo'
}

{ #category : #'instance creation' }
EBinaryExpression class >> left: aConstant right: aConstant2 [

	| expression |
	
	expression := self new.
	expression left: aConstant.
 	expression right: aConstant2.
	
	^ expression
]

{ #category : #initialization }
EBinaryExpression >> accept: aVisitor [ 

	^ self subclassResponsibility 
]

{ #category : #initialization }
EBinaryExpression >> initialize [ 

	super initialize
]

{ #category : #accessing }
EBinaryExpression >> left [
	
	^ left
]

{ #category : #accessing }
EBinaryExpression >> left: aConstant [
	
	left := aConstant
]

{ #category : #printing }
EBinaryExpression >> operatorString [

	^ ' + '
]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EBinaryExpression >> right [
	
	^ right
]

{ #category : #accessing }
EBinaryExpression >> right: aConstant [
	
	right := aConstant
]
