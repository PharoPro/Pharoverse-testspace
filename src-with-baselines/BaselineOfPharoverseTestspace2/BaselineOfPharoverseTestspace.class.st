Class {
	#name : #BaselineOfPharoverseTestspace2,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoverseTestspace2
}

{ #category : #baselines }
BaselineOfPharoverseTestspace2 >> baseline: spec [
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
BaselineOfPharoverseTestspace2 >> voyage: spec [
	spec baseline: 'Voyage' with: [ 
		spec
			repository: 'github://pharo-nosql/voyage/mc';
			loads: #( 'memory tests') ].
]
