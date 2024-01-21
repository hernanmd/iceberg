"
Generic command to cherry pick changes
"
Class {
	#name : 'IceTipCherryPickCommand',
	#superclass : 'IceTipCommand',
	#category : 'Iceberg-TipUI-Commands',
	#package : 'Iceberg-TipUI',
	#tag : 'Commands'
}

{ #category : 'accessing - defaults' }
IceTipCherryPickCommand class >> defaultDescription [

	^ 'Cherrypick this commit and apply changes to the working copy'
]

{ #category : 'accessing - defaults' }
IceTipCherryPickCommand class >> defaultName [

	^ 'Cherrypick'
]

{ #category : 'testing' }
IceTipCherryPickCommand >> canBeExecuted [

	self flag: #pharoTodo. "TODO: Still not ready"
	^ false
]

{ #category : 'executing' }
IceTipCherryPickCommand >> execute [

	(IceTipCherrypickPreviewBrowser onCommitish: self selectedCommitish)
		open
]

{ #category : 'executing' }
IceTipCherryPickCommand >> selectedCommitish [
	"Not removed since this is marked as ToDo in #canBeExecuted"

	self flag: 'Warning: realObject method is missing. It was present with the #beCached sends and implemented by IceTipCachedModel. Commented to avoid ReleaseTest errors'.
	^ (self context selectedCommit perform: #realObject) entity
]
