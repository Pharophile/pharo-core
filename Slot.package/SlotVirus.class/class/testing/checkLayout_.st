checkLayout: aClass 
	(aClass withAllSubclasses sort: [:a :b| a name <= b name])
		do: [ :cls|
			self checkLayoutOfClass: cls.
			self checkLayoutOfClass: cls class.]