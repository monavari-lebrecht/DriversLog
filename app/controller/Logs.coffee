Ext.define "DriversLog.controller.Logs",
	extend: "Ext.app.Controller"

	config:
		refs:
			mainView: "mainview"
		control:
			mainView:
				addLogEntryCommand: "onAddLogEntryCommand"

	onAddLogEntryCommand: ->
		console.log "add log entry"