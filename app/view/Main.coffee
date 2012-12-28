Ext.define "DriversLog.view.Main"
    extend: "Ext.TabPanel"

    alias: "widget.mainview"

    requires: [
        "Ext.TitleBar"
    ]

    config:
        layout:
            type: "fit"

        # bottom bar
        tabBarPosition: "bottom"
        items: [
            # main list view
            { xtype: "logslist" }
            { title: "more" }
        ]