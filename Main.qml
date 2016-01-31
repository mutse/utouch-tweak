import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 0.1 as ListItem
//import "Readfile.js" as ReadFile

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "utouch-tweak.mutse"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(50)
    height: units.gu(70)

    PageStack {
        id: pageStack
        Component.onCompleted: push(tabs)

        Tabs {
            id: tabs
            Tab {
                id: tab1
                title: i18n.tr("Overview")

                page: Loader {
                    id: mainPage
                    parent: tab1
                    anchors{
                        left:parent.left
                        right: parent.right
                        bottom: parent.bottom
                    }
                    source: (tabs.selectedTab === tab1) ? Qt.resolvedUrl("OverviewPage.qml") : ""
                }
            }

            Tab {
                id: tab2
                title: i18n.tr("Tweak")
                page:Loader{
                    id: tweakPage
                    parent: tab2
                    anchors{
                        left:parent.left
                        right: parent.right
                        bottom: parent.bottom
                    }
                    source: (tabs.selectedTab === tab2) ? Qt.resolvedUrl("TweakPage.qml") : ""
                    onLoaded: {
                        item.side= mainPage.item.side
                    }
                }
            }

            Tab {
                id: tab3
                title: i18n.tr("About")
                page:Loader{
                    id:aboutPage
                    parent: tab3
                    anchors{
                        left:parent.left
                        right: parent.right
                        bottom: parent.bottom
                    }
                    source: (tabs.selectedTab === tab3) ? Qt.resolvedUrl("AboutPage.qml") : ""
                    onLoaded: {
                        item.side= mainPage.item.side
                    }
                }
            }
        }

    }
}

