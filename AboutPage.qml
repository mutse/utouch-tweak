import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 0.1 as ListItem

Tab {
    title: i18n.tr("About")
    anchors.fill: parent

    Page {
        id: aboutPage

        title: i18n.tr("About")

        Column {
            anchors.centerIn: parent
            width: parent.width
            spacing: units.gu(4)

            UbuntuShape {
                id: logo
                x: parent.width / 3
                width: parent.width / 3
                height: width
                radius: "medium"

                image: Image {
                    source: "utouch-tweak.png"
                }
            }

            Column {
                width: parent.width

                Label {
                    x: (parent.width - width) / 2
                    fontSize: "x-large"
                    font.weight: Font.DemiBold
                    text: "uTouch Tweak"
                }

                Label {
                    x: (parent.width - width) / 2
                    text: i18n.tr("Version ") + "1.0"
                }
            }

            Column {
                width: parent.width

                Label {
                    x: (parent.width - width) / 2
                    text: "(C) 2016 Mutse Young"
                }

                Label {
                    x: (parent.width - width) / 2
                    fontSize: "small"
                    text: i18n.tr("Released under the terms of the GNU GPL v3")
                }
            }

            Button {
                x: (parent.width - width) / 2
                color: "#b50000"
                text: i18n.tr("Visit Website")
                onClicked: Qt.openUrlExternally("https://github.com/mutse/utouch-tweak")
            }

            /*Label {
                x: (parent.width - width) / 2
                text: "Database Version: "
            }*/
        }
    }
}
