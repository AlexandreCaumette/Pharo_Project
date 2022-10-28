Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #'Projet_Pharo'
}

{ #category : #'as yet unclassified' }
EConstant class >> constant3 [
	<sampleInstance>
	^self new value: 3
]

{ #category : #'as yet unclassified' }
EConstant class >> constant5 [
	<sampleInstance>
	^self new value: 5
]

{ #category : #creating }
EConstant class >> value: anInteger [ 
	
	| constant |
	
	constant := EConstant new.
	constant value: anInteger.
	
	^ constant
]

{ #category : #visiting }
EConstant >> accept: aVisitor [
	
	^ aVisitor visitConstant: self
]

{ #category : #initialization }
EConstant >> initialize [ 

	super initialize 
]

{ #category : #printing }
EConstant >> printOn: aStream [
	aStream nextPutAll: value printString
]

{ #category : #accessing }
EConstant >> value [

	^ value
]

{ #category : #setting }
EConstant >> value: anInteger [ 

	value := anInteger
]
