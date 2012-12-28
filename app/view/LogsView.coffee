###*
 * @class DriversLog.view.Logs
 * @extends Ext.Panel
 * View (Container) to list logs and add new ones
###
Ext.define 'DriversLog.view.LogsView'
    extend: 'Ext.Panel'
    alias: 'widget.logsview'

    config:
        # Tab configuration
        title: "Driver's Log"
        iconCls: "speedometer"

        items: [
            # title bar
            {
                docked: "top"
                xtype:  "titlebar"
                title:  "Driver's Log"
                items: [
                    {
                        xtype:      "button"
                        ui:         "action"
                        iconCls:    "add"
                        align:      "right"
                        iconMask:   true
                        itemId:     "addLogEntryButton"
                    }
                ]
            }
        ]
        # connect listeners to ui elements to fire events to controllers
        listeners: [
            {
                delegate:   "#addLogEntryButton"
                event:      "tap"
                fn:         ->
                    @fireEvent "addLogEntryCommand"
            }
        ]