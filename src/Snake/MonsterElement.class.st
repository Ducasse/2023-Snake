Class {
	#name : #MonsterElement,
	#superclass : #BlElement,
	#instVars : [
		'position'
	],
	#category : #'Snake-UI'
}

{ #category : #initialization }
MonsterElement >> initialize [

	super initialize.
	self size: 20 @ 20.
	self background: Color orange.
	self border: (BlBorder paint: Color black width: 1).
	self geometry: (BlRoundedRectangleGeometry cornerRadius: 10)
]

{ #category : #move }
MonsterElement >> moveRandomly [

	position := (2 to: 36) atRandom * 20 @ ((4 to: 26) atRandom * 20).
	self position: position
]
