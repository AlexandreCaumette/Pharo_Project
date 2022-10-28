Class {
	#name : #EPrinterVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Projet_Pharo'
}

{ #category : #accessing }
EPrinterVisitor >> at: anId put: aValue [

	bindings at: anId put: aValue
]

{ #category : #visiting }
EPrinterVisitor >> initialize [ 

	super initialize.
	bindings := Dictionary new
]

{ #category : #visiting }
EPrinterVisitor >> visitAddition: aAddition [

	| left right |
	
	left := aAddition left accept: self.
	right := aAddition right accept: self.
	
	^ '(', left, ' + ', right, ')'
]

{ #category : #visiting }
EPrinterVisitor >> visitConstant: aConstant [

	^ aConstant value asString
]

{ #category : #visiting }
EPrinterVisitor >> visitDivision: aDivision [

	| left right |
	
	left := aDivision left accept: self.
	right := aDivision right accept: self.
	
	^ '(', left, ' / ', right, ')'
]

{ #category : #visiting }
EPrinterVisitor >> visitMultiplication: aMultiplication [

	| left right |
	
	left := aMultiplication left accept: self.
	right := aMultiplication right accept: self.
	
	^ '(', left, ' * ', right, ')'
]

{ #category : #visiting }
EPrinterVisitor >> visitNegation: aNegation [

	^ '-', (aNegation expression accept: self)
	
]

{ #category : #visiting }
EPrinterVisitor >> visitVariable: aVariable [
	
	^ (bindings at: (aVariable id)) asString
]
