Class {
	#name : #EvaluatorVisitorTest,
	#superclass : #TestCase,
	#category : #'Projet_Pharo'
}

{ #category : #tests }
EvaluatorVisitorTest >> testVisitAdditionReturnsAdditionResult [

	| expression result |
	
	expression := EAddition left: (EConstant value: 7) right: (EConstant value: -2).
	result := expression accept: (EEvaluatorVisitor new).
	
	self assert: result equals: 5
]

{ #category : #tests }
EvaluatorVisitorTest >> testVisitConstantReturnsConstantValue [

	| constant result |
	
	constant := EConstant value: 5.
	result := constant accept: EEvaluatorVisitor new.
	self assert: result equals: 5
]

{ #category : #tests }
EvaluatorVisitorTest >> testVisitDivisionByZeroThrowsException [

	| expression |
	
	expression := EDivision numerator: (EConstant value: 6) denominator: (EConstant value: 0).
	
	self should: [ expression accept: EEvaluatorVisitor new ] raise: ZeroDivide 
]

{ #category : #tests }
EvaluatorVisitorTest >> testVisitDivisionReturnsDivisionResult [

	| expression result |
	
	expression := EDivision numerator: (EConstant value: 6) denominator: (EConstant value: 3).
	result := expression accept: (EEvaluatorVisitor new).
	
	self assert: result equals: 2
]

{ #category : #tests }
EvaluatorVisitorTest >> testVisitMultiplicationReturnsMultiplicationResult [

	| expression result |
	
	expression := EMultiplication left: (EConstant value: 7) right: (EConstant value: -2).
	result := expression accept: (EEvaluatorVisitor new).
	
	self assert: result equals: -14
]

{ #category : #tests }
EvaluatorVisitorTest >> testVisitNegationReturnsNegatedConstant [

	| expression result |
	
	expression := (EConstant value: 7) negated.
	result := expression accept: EEvaluatorVisitor new.
	
	self assert: result equals: -7
]

{ #category : #tests }
EvaluatorVisitorTest >> testVisitVariableReturnsVariableValue [

	| expression visitor |
	
	expression := EVariable id: #answerToTheQuestion.
	visitor := EEvaluatorVisitor new.
	visitor at: #answerToTheQuestion put: 42.
	
	self assert: (expression accept: visitor) equals: 42
]
