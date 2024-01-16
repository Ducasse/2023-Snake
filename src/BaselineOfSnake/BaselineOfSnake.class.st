Class {
	#name : #BaselineOfSnake,
	#superclass : #BaselineOf,
	#category : #BaselineOfSnake
}

{ #category : #baselines }
BaselineOfSnake >> baseline: spec [
	<baseline>

	spec
		baseline: 'Myg'
		with: [ spec repository: 'github://Ducasse/Myg:v1.0.1/src' ].

	spec
		package: 'Snake' 
		with: [ spec requires: #( 'Myg' ) ]
]
