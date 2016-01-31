import QtQuick 2.0
import Ubuntu.Components 1.1
import QtQuick.Layouts 1.1
import Ubuntu.Components.ListItems 0.1 as ListItem

Page {
    title: i18n.tr("Overview")

    ColumnLayout {
        anchors.left: parent.left
        anchors.leftMargin: units.gu(5)
        anchors.right: parent.right
        anchors.rightMargin: units.gu(5)
        spacing: 10

        Column {
            anchors.fill: parent
            ListItem.Base {
                id: header
                height: ubuntuLabel.height + labelTitle.height + units.gu(6)
                pressed: false

                Column {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.centerIn: parent
                    spacing: units.gu(2)
                    Label {
                        id: ubuntuLabel
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: ""
                        fontSize: "x-large"
                    }
                    Label {
                        id: labelTitle
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: i18n.tr("<b>Nexus 7 (2013) Wi-Fi</b>")
                        fontSize: "large"
                    }
                }
            }
        }

        RowLayout
        {
            anchors.top: header.bottom

            ListItem.Standard {
                text: i18n.tr("<b>Hardware Information</b>")
            }

            Item{ height: units.gu(5); width: 2 }

            ListItem.Standard {
                text: i18n.tr("<b>Hardware Information</b>")
            }

        }

        //ListItem.ThinDivider{}

    }
}
