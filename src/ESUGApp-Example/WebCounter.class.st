Class {
	#name : #WebCounter,
	#superclass : #WAComponent,
	#instVars : [
		'count'
	],
	#category : #'ESUGApp-Example'
}

{ #category : #initialization }
WebCounter class >> initialize [
	"self initialize"
	WAAdmin register: WebCounter asApplicationAt: 'webcounter'
]

{ #category : #accessing }
WebCounter >> count [
	^ count
]

{ #category : #accessing }
WebCounter >> count: anObject [
	count := anObject
]

{ #category : #initialization }
WebCounter >> decrease [
    count := count - 1
]

{ #category : #initialization }
WebCounter >> increase [
    count := count + 1
]

{ #category : #initialization }
WebCounter >> initialize [
   super initialize.
   count := 0
]

{ #category : #initialization }
WebCounter >> renderContentOn: html [
    html heading: count
]
