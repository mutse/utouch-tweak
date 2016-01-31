import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 0.1 as ListItem

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
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            spacing: units.gu(1)

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                fontSize: "x-large"
                font.weight: Font.DemiBold
                text: "uTouch Tweak"
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Version ") + "1.0"
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "uTouch Tweak is a tool that make it easy to <br>configure your ubuntu touch settings"
            }
        }

        Column {
            width: parent.width

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "(C) 2016 Mutse Young"
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Released under the terms of the GNU GPL v3")
            }
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            //font.pixelSize:side*0.7
            color: "#b50000"
            text: i18n.tr("Source code available on <a href=\"%1\">%2</a>")
                      .arg("https://github.com/mutse/utouch-tweak")
                      .arg("github.com")
             onLinkActivated: Qt.openUrlExternally(link)
        }

    }
}
