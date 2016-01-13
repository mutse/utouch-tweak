import QtQuick 2.0
//import QtSystemInfo 5.0
//import SystemSettings 1.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 0.1 as ListItem
import "Readfile.js" as ReadFile
//import Ubuntu.SystemSettings.StorageAbout 1.0
//import Ubuntu.SystemSettings.Update 1.0

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

    Tabs {
        id: tabs

        OverviewPage {
            objectName: "Overview"
        }

        TweakPage {
            objectName: "Tweak"
        }

        AboutPage {
            objectName: "About"
        }
    }

   /* PageStack {
        id: pageStack
        Component.onCompleted: push(tabs)

        Tabs {
            id: tabs
            Tab {
                title: i18n.tr("Overview")

                page: Loader {
                     id: loader
                     anchors.fill: parent
                     source:  Qt.resolvedUrl("Tab1.qml")

                     onLoaded: {
                         console.log( loader.source + " is loaded")
                     }
                 }
            }

            Tab {
                title: i18n.tr("Tweak")
                page: Page {
                    Label {
                        anchors.centerIn: parent
                        text: "Use header to navigate between tabs"
                    }
                }
            }

            Tab {
                title: i18n.tr("Admins")
                page: Page {
                    Label {
                        anchors.centerIn: parent
                        text: "Use header to navigate between tabs"
                    }
                }
            }
        }

    }*/
}

