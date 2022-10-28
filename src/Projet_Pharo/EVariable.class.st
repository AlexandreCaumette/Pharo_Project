Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #'Projet_Pharo'
}

{ #category : #creating }
EVariable class >> id: anId [ 
	
	^ self new id: anId; yourself
]

{ #category : #setting }
EVariable >> accept: aVisitor [
	^ aVisitor visitVariable: self
]

{ #category : #printing }
EVariable >> evaluateWith: aBindingDictionnary [
	
	^ aBindingDictionnary at: id
]

{ #category : #setting }
EVariable >> id [
	
	^ id
]

{ #category : #setting }
EVariable >> id: anId [
	
	id := anId
]

{ #category : #setting }
EVariable >> initialize [ 
	super initialize 
]

{ #category : #printing }
EVariable >> printOn: aStream [

	aStream nextPutAll: id asString
]
