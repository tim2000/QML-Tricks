import QtQuick 1.0

Item {
    id: logger

    property string text
    property int textFontSize: 20
    property int textHAlign: Text.AlignLeft
    property int textVAlign: Text.AlignTop

    signal clicked()
    signal scrolled()

    FontLoader {
        id: uniFont
        source: "../../font.ttf"
        }

    Rectangle {
        id: adminTextBox

        anchors.fill: parent

        width: 1
        border.color: "black"
        color: "transparent"

        Flickable {
            id: flickArea
            anchors.fill: parent
            anchors.margins: 5

            contentWidth: adminTextBox.width;
            contentHeight: adminTextInfo.paintedHeight;

            contentY: adminTextInfo.height - flickArea.height;

            boundsBehavior: Flickable.StopAtBounds
            flickableDirection: Flickable.VerticalFlick
            clip: true

            MouseArea {
                id: areaClick
                anchors.fill: parent
                onClicked: {
                    logger.clicked();
                }
            }

             onMovementStarted: {
                logger.scrolled();
             }

            Text {
                id: adminTextInfo
                objectName: "adminTextInfo"
                color: "white"

                anchors.topMargin: 20
                width: flickArea.width

                text: logger.text
                verticalAlignment: textVAlign
                horizontalAlignment: textHAlign
                wrapMode: Text.WordWrap

                font.pixelSize: textFontSize
                font.family: uniFont.name

                MouseArea {
                    id: areaClick2
                    anchors.fill: parent
                    onClicked: {
                        logger.clicked();
                    }
                }
            }
        }

        Rectangle {
            id: scrollbar

            anchors.right: adminTextBox.right

            y: (scrollbar.height <= flickArea.height) ? (flickArea.visibleArea.yPosition * flickArea.height) : 0

            width: 10
            height: (flickArea.visibleArea.heightRatio * flickArea.height) <= flickArea.height ? 10 + (flickArea.visibleArea.heightRatio * flickArea.height) : adminTextBox.height

            color: "black"

            opacity: 0.2
            visible: true
        }
    }
}
