newEmptyText

	^ GLMLabelBrick new
			text: 'No saved pages';
			hSpaceFill;
			textPosition: #center;
			padding: self themer bindingThemer emptyTextPadding;
			textColor: self themer bindingThemer emptyTextColor;
			fontSize: self themer bindingThemer emptyTextFontSize;
			yourself