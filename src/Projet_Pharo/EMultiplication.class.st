Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #'Projet_Pharo'
}

{ #category : #'as yet unclassified' }
EMultiplication class >> fiveTimesThree [

	<sampleInstance>
	^ self left: (EConstant constant5) right: (EConstant constant3)
]

{ #category : #visiting }
EMultiplication >> accept: aVisitor [	

	^ aVisitor visitMultiplication: self
]

{ #category : #initialization }
EMultiplication >> initialize [ 

	super initialize 
]

{ #category : #printing }
EMultiplication >> operatorString [ 

	^ ' * '
]
