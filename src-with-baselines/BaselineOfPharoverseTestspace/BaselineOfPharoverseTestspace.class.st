Class {
	#name : #BaselineOfPharoverseTestspace,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoverseTestspace
}

{ #category : #baselines }
BaselineOfPharoverseTestspace >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		self 
			voyage: spec.
		spec 
			package: 'PharoverseTestSpace' with: [
				spec requires: #('Voyage') ].
			
		spec 
			group: 'default' with: #('PharoverseTestSpace' ) ]
]

{ #category : #baselines }
BaselineOfPharoverseTestspace >> voyage: spec [
	spec baseline: 'Voyage' with: [ 
		spec
			repository: 'github://pharo-nosql/voyage/mc';
			loads: #( 'memory tests') ].
]
