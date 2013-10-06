browseSubMenu: aMenu
	
	aMenu 
		add: 'Browse full (b)' translated
			target: self
			selector: #browseValue;
		add: 'Browse class' translated
			target: self
			selector: #browseValueClass;
		add: 'Browse hierarchy (h)' translated
			target: self
			selector: #browseValueClassHierarchy.
			
	aMenu addLine.