Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #'Projet_Pharo'
}

{ #category : #'as yet unclassified' }
EAddition class >> fivePlusThree [

	<sampleInstance>
	^ self left: (EConstant constant5) right: (EConstant constant3)
]

{ #category : #visiting }
EAddition >> accept: aVisitor [

	^ aVisitor visitAddition: self
]

{ #category : #initialization }
EAddition >> initialize [ 

	super initialize 
]
