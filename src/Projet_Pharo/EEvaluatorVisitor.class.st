Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Projet_Pharo'
}

{ #category : #visiting }
EEvaluatorVisitor >> at: anId put: aValue [

	bindings at: anId put: aValue
]

{ #category : #visiting }
EEvaluatorVisitor >> bindings: aDictionary [

	bindings := aDictionary
]

{ #category : #visiting }
EEvaluatorVisitor >> initialize [

	super initialize. 
	bindings := Dictionary new
	
]

{ #category : #visiting }
EEvaluatorVisitor >> visitAddition: anAddition [
	
	^ (anAddition left evaluateWith: bindings) + (anAddition right evaluateWith: bindings)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [
	
	^ aConstant value
]

{ #category : #visiting }
EEvaluatorVisitor >> visitDivision: aDivision [

	^ (aDivision left evaluateWith: bindings) / (aDivision right evaluateWith: bindings)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitMultiplication: aMultiplication [

	^ (aMultiplication left evaluateWith: bindings) * (aMultiplication right evaluateWith: bindings)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitNegation: aNegation [
	
	^ (-1) * (aNegation expression accept: self)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitVariable: aVariable [

	^ bindings at: (aVariable id)
]
