Ext.define "DiversLog.view.Main"
    extend: "Ext.tab.Panel"

    alias: "widget.mainView"

    requires: [
        "Ext.TitleBar"
    ]

    onAddLogEntryTap: ->
        console.log "test"

    config:
        tabBarPosition: "bottom"
        # bottom bar
        items: [
            # main list view
            {
                title: "Driver's Log"
                iconCls: "speedometer"

                scrollable: true

                items:[
                    # title bar
                    {
                        docked: "top"
                        xtype: "titlebar"
                        title: "Driver's Log"
                        items: [
                            {
                                xtype:      "button"
                                ui:         "action"
                                iconCls:    "add"
                                align:      "right"
                                iconMask:   true
                                itemId:     "addNoteButton"
                            }
                        ]
                    }
                ]
            }
        ]
        listeners: [
            {
                delegate:   "#addNoteButton"
                event:      "tap"
                fn:         "onAddLogEntryTap"
            }
        ]