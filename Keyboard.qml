import QtQuick 1.0

Item {
    id: keyboard
    width: 740
    height: 300

    property string text

    signal enterSignalEmited
    signal keySignalEmited(string key)
    signal backSignalEmited

    property int numericalDecal: 0
    property variant keys: ["azertyuiop", "qsdfghjklm", "wxcvbn,;:!", "⇧* ←↵",
                            "AZERTYUIOP", "QSDFGHJKLM", "WXCVBN,;:!", "⇧* ←↵",
                            "1234567890", "-+/?()€&\"%", "_\\|~<>$[]#", "@* ←↵", ]

    Repeater{
        id: lineRpt
        model: 4

        anchors.fill: parent

        Row {
            spacing: 4

            anchors.verticalCenter: parent.top
            anchors.verticalCenterOffset: 25+(index*75)

            anchors.left: parent.left

            property string currentLine: keys[index+numericalDecal]
       
            Repeater {
                model: currentLine.length

                KeyboardButton {
                    height: 70

                    width: { currentLine.charAt(index) === " " ? 440 : 70; }
                    
                    btnKeyText: { currentLine.charAt(index) === "*" ? "123" : currentLine.charAt(index); }

                    onKeyPressed: { keySignalEmited(key) }

                    onEnterPressed: { enterSignalEmited() }

                    onBackPressed: { backSignalEmited() }

                    onMajPressed: { 
                        if(numericalDecal == 0)
                        { 
                            numericalDecal = 4;
                        }
                        else if(numericalDecal == 4)
                        {
                            numericalDecal = 0;
                        }
                    }

                    onNumericSwitchPressed: { 
                        if(numericalDecal < 8)
                        { 
                            numericalDecal = 8
                        }
                        else
                        {
                            numericalDecal = 0;
                        }                            
                    }
                }
            }
        }
    }
}
