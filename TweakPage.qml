import QtQuick 2.0
import Ubuntu.Components 1.1
import QtQuick.Layouts 1.1

Tab {
    title: i18n.tr("Tweak")
    anchors.fill:parent

    page: Page {
        Column{
            spacing: 10

            Item {
                width: units.gu(10)
                height: units.gu(2)
            }

            Row {
                spacing: 2

                Item {
                    width: units.gu(10)
                    height: units.gu(2)
                }

                Label {
                    anchors.leftMargin: 10
                    text: i18n.tr("Window Desktop Mode")
                }

                Item {
                    width: units.gu(2)
                    height: units.gu(2)
                }

                Switch {
                    checked: true
                }
            }

            Row {
                spacing: 2

                Item {
                    width: units.gu(10)
                    height: units.gu(2)
                }

                Label {
                    anchors.leftMargin: 10
                    text: i18n.tr("Desktop Background")
                }

                Item {
                    width: units.gu(2)
                    height: units.gu(2)
                }

                Button {
                    text: i18n.tr("Select...")
                }
            }

            Row {
                spacing: 2

                Item {
                    width: units.gu(10)
                    height: units.gu(2)
                }

                Label {
                    anchors.leftMargin: 10
                    text: i18n.tr("Desktop Background")
                }

                Item {
                    width: units.gu(2)
                    height: units.gu(2)
                }

                Button {
                    text: i18n.tr("Select...")
                }
            }

        }

        tools: ToolbarItems {
            ToolbarButton {
                action: reloadAction
            }
        }
    }
}
