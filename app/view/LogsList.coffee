Ext.define "DriversLog.view.LogsList"
    extend: "Ext.Panel"

    alias: "widget.logslist"

    config:
        title: "Driver's Log"
        iconCls: "speedometer"

        scrollable: true

        items:[
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