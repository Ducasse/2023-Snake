Class {
	#name : #SnakeGameElement,
	#superclass : #BlElement,
	#instVars : [
		'walls'
	],
	#category : #'Snake-UI'
}

{ #category : #initialization }
SnakeGameElement >> initialize [
    super initialize.
    self size: (800@600).
    self background: Color white.

    
]

{ #category : #update }
SnakeGameElement >> updateFoodPosition: aPosition [
    | food |
    
    food := BlElement new.
    food
        size: (20@20);
        background: Color red;
        position: aPosition.
    
    self addChild: food.
    
    ^ food
]

{ #category : #update }
SnakeGameElement >> updateHeadPosition: aPosition segments: aSegments [ 
    | head |
    
   
    aSegments do: [ :each |
        | segment |
        segment := BlElement new.
        segment size: (20@20).
        segment background: Color green.
        segment  border: (BlBorder paint: Color black width: 1).
        segment position: each.
        self addChild: segment.
    ].
    
    head := BlElement new.
    head size: (20@20).
    head background: Color blue.
    head position: aPosition.
    self addChild: head.
]
