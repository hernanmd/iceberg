tests-changes
testCreateClassInImageMakesChangesNonEmpty

	"This is a Ring working copy"
	repository workingCopy
		createClass: 'IceAnotherGeneratedClassForTesting' 
		inPackage: self packageName1 asSymbol.
	self deny: repository workingCopyDiff isEmpty