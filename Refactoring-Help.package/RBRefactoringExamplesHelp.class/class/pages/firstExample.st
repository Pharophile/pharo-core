firstExample
	^HelpTopic
		title: 'A first example'
		contents: 
'
We want to add a new class with the RBAddClassRefactoring. (This is just a simple example, most of the time you won''t use a refactoring operation for adding new classes. But it is used by tools generating classes or by other refactoring operations (RBSplitClassRefactoring)).

First we need a namespace, a RBNamespace, it collects the changes generated by this operation and provides an environment for finding other classes / methods affected by the operation.
We create a ''default'' RBNamespace that represents an environment of all system classes. The RBAddClassRefactoring needs all the information needed for the class hierarchy (name/superclass/subclasses/category) and our namespace as the ''model''. The ChangesBrowser lists all the refactoring changes in a check box list. The reason for calling ''changes changes'' not the model is, because the first ''changes'' does not give a list of all changes but a RBCompositeRefactoryChange that actually holds the list of all changes.

  | model addClassRB browser |
    model := RBNamespace new.
    addClassRB := RBAddClassRefactoring
        model: model
        addClass: #SomeClass
        superclass: #Object
        subclasses: {}
        category: #Category.
    addClassRB primitiveExecute.
    browser := ChangesBrowser changes: (model changes changes ).
    browser open

In the ChangesBrowser list of changes you can select which one to apply. Keep in mind that some compound refactorings may not show all intermediate changes.

The primitiveExecute method will check all preconditions for this Refactoring and either shows a warning or a refactoring error, if this operation can not be performed.
We can execute the above refactoring ''twice'' and will see the second time it shows an error about SomeClass already exists.

There is a global change manager - RBRefactoryChangeManager, we can use it to undo the last operation.

RBRefactoryChangeManager instance undoOperation.
and again redo
RBRefactoryChangeManager instance redoOperation.
and undo, and .... :)

'