Ext.define "DriversLog.controller.Logs",
	extend: "Ext.app.Controller"

	config:
		refs:
			logsView: 			"logsview"
			logEditor:	 		"logeditor"
		control:
			logsView:
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