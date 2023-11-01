Class {
	#name : #BaselineOfAthensSVG,
	#superclass : #BaselineOf,
	#category : #BaselineOfAthensSVG
}

{ #category : #baselines }
BaselineOfAthensSVG >> baseline: spec [
	<baseline>

	spec for: #common do: [

		spec package: 'Athens-SVG-PathConverter'.

		spec baseline: 'XMLParser' with: [
			spec repository: 'github://bauing-schmidt/XML-XMLParser:production12/src' ].
		spec baseline: 'SmaCC' with: [
			spec repository: 'github://bauing-schmidt/SmaCC:production12'; loads: 'Runtime' ].

		spec package: 'Athens-SVG-Support'.
		spec package: 'Athens-SVG-Parsers'.
		spec package: 'Athens-SVG'.
		
		spec group: 'PathConverter' with: #('Athens-SVG-PathConverter').
		spec group: 'default' with: #('PathConverter' 'XMLParser' 'SmaCC' 'Athens-SVG-Support' 'Athens-SVG-Parsers' 'Athens-SVG').
	].		
]
