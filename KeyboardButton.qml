import QtQuick 1.0

Item{
    id: keyboardButton
    property string btnKeyText;

    signal keyPressed(string key)
    signal enterPressed()
    signal backPressed()
    signal majPressed()
    signal numericSwitchPressed()

    state: "NormalButton"
    
    Rectangle {
        id: borderColor
        anchors.fill: parent;
        border.width: 2;
        radius: 10;
        color: "#000000";
        border.color: "black";
    }

    Rectangle  {
            id: bgcolor
            anchors.fill: parent; radius: 10; color: "#3a6c99"
    }

    Text  {
        id: textTicketLabel
        text: btnKeyText
        font.pixelSize: 30
        transformOrigin: Item.Center

        anchors.centerIn: parent

        style: Text.Sunken; color: "white"; smooth: true
    }

    MouseArea  {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                
                if(btnKeyText.length === 1)
                {
                    if((btnKeyText.charCodeAt(0) > 31) && (btnKeyText.charCodeAt(0) < 149))
                    {                
                        keyPressed(btnKeyText)
                    }
                    else if(btnKeyText.charCodeAt(0) === 8629) //Enter
                    {
                        enterPressed()
                    }
                    else if(btnKeyText.charCodeAt(0) === 8592) //Back
                    {
                        backPressed()
                    }
                    else if(btnKeyText.charCodeAt(0) === 8679) //Maj
                    {
                        majPressed()
                    }
                }
                else
                {
                    numericSwitchPressed()
                }
            }
        }

    states: State  {
        name: "pressed"; when: mouseArea.pressed === true
        PropertyChanges  { target: bgcolor; color: "#244664" }
    }
}
