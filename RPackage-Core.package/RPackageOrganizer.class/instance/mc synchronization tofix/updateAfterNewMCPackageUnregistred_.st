updateAfterNewMCPackageUnregistred: anAnnouncement

			"Not sure if we should remove the corresponding RPackage from the organizer. Monticello will notify a #unregistered change when we 'delete' a working copy, or when we 'unload' a workingCopy. 'Delete'  will only delete the MCWorkingCopy representing the package, but will let the category and classes existing in the system. 'Unload' will also remove all classes inside the category but will also let the category. So, for now,  in both cases it seems meaningfull to keep a RPackage pointing to the existing category. At least Monticello tests were expecting this behavior"
			"self unregisterPackageNamed: anArray second name."
			self flag: #cyrille. "shouldDoSomethingHere."
			"SD: my impression is that we should redo part of the MC browser. Delete package may move the classes to unpackaged" 
			"CD: When you 'delete' a MCPackage, it only remove the MC working copy, but let all the included classes in the system (in the same category). So now the question is: should we keep those classes in the same RPackage or move them to the #_UnpackagedPackage. As those classes are not moved to any other category for now , we could keep them in the same RPackage. 
			In any case, if deleting a MCPackage would move the classes to 'Unclassified' category, some announcement should be emitted , and RPackage should update itself ?  "