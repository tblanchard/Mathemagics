Class {
	#name : #BaselineOfMathemagics,
	#superclass : #BaselineOf,
	#category : #BaselineOfMathemagics
}

{ #category : #baselines }
BaselineOfMathemagics >> baseline: spec [
	<baseline>
	spec
		for: #pharo
		do: [ self
				setUpDependencies: spec;
				setUpPackages: spec.
				
				spec 
					group: 'Core' with: #('Mathemagics-Core'); 
					group: 'Tests' with: #('Core' 'Mathemagics-Tests');
					group: 'Tools' with: #('Core' 'Mathemagics-Tools');
					group: 'Deployment' with: #(Core);
					group: 'Development' with: #(all);
					group: 'default' with: #(Core)
					
					
					]
]

{ #category : #initialization }
BaselineOfMathemagics >> setUpDependencies: spec [
]

{ #category : #initialization }
BaselineOfMathemagics >> setUpPackages: spec [ 
	spec 
		package: 'Mathemagics-Core';
		package: 'Mathemagics-Tests';
		package: 'Mathemagics-Tools'
		
]
