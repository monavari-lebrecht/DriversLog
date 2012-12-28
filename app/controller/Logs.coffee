Ext.define "DriversLog.controller.Logs",
	extend: "Ext.app.Controller"

	config:
		refs:
			mainView: 			"mainview"
			logEditor:	 		"logeditor"
		control:
			mainView:
				addLogEntryCommand: "onAddLogEntryCommand"

	slideLeftTransition: 
		type: 'slide'
		direction: 'left'

	slideRightTransition: 
		type: 'slide'
		direction: 'right'

	onAddLogEntryCommand: ->
		Ext.Viewport.animateActiveItem @getLogEditor(), @slideLeftTransition
		console.log "add log entry"