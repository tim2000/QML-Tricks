import QtQuick 1.0

Item {
    id: loadingAnim
    x: 0
    y: 0
    width: 165
    height: 165

    property string color1: "black"
    property string color2: "white"

    property int timeVal: 400

    Rectangle {
      id:rect1

      height: 50
      width: 20

      x:73
      y:8

      color:"#FFFFFF"
      radius:20
      smooth: true

      SequentialAnimation {
        id:animRect1
        running: false
        ColorAnimation {target: rect1; property: "color"; to: color1; duration: timeVal }
        ColorAnimation {target: rect1; property: "color"; to: color2; duration: timeVal }
      }
    }

    Rectangle {
      id:rect2

      height: 50
      width: 20

      x:113
      y:18

      color:"#FFFFFF"
      radius:20
      smooth: true
      rotation:45

      SequentialAnimation {
        id:animRect2
        running: false
        ColorAnimation {target: rect2; property: "color"; to: color1; duration: timeVal }
        ColorAnimation {target: rect2; property: "color"; to: color2; duration: timeVal }
      }
    }

    Rectangle {
      id:rect3

      height: 50
      width: 20

      x:123
      y:58

      color:"#FFFFFF"
      radius:20
      smooth: true
      rotation:90

      SequentialAnimation {
        id:animRect3
        running: false
        ColorAnimation {target: rect3; property: "color"; to: color1; duration: timeVal }
        ColorAnimation {target: rect3; property: "color"; to: color2; duration: timeVal }
      }
    }

    Rectangle {
      id:rect4

      height: 50
      width: 20

      x:113
      y:98

      color:"#FFFFFF"
      radius:20
      smooth: true
      rotation:135

      SequentialAnimation {
        id:animRect4
        running: false
        ColorAnimation {target: rect4; property: "color"; to: color1; duration: timeVal }
        ColorAnimation {target: rect4; property: "color"; to: color2; duration: timeVal }
      }
    }

    Rectangle {
      id:rect5

      height: 50
      width: 20

      x:73
      y:108

      color:"#FFFFFF"
      radius:20
      smooth: true

      SequentialAnimation {
        id:animRect5
        running: false
        ColorAnimation {target: rect5; property: "color"; to: color1; duration: timeVal }
        ColorAnimation {target: rect5; property: "color"; to: color2; duration: timeVal }
      }
    }

    Rectangle {
      id:rect6

      height: 50
      width: 20

      x:33
      y:98

      color:"#FFFFFF"
      radius:20
      smooth: true
      rotation:45

      SequentialAnimation {
        id:animRect6
        running: false
        ColorAnimation {target: rect6; property: "color"; to: color1; duration: timeVal }
        ColorAnimation {target: rect6; property: "color"; to: color2; duration: timeVal }
      }
    }


    Rectangle {
      id:rect7

      height: 50
      width: 20

      x:23
      y:58

      color:"#FFFFFF"
      radius:20
      smooth: true
      rotation:90

      SequentialAnimation {
        id:animRect7
        running: false
        ColorAnimation {target: rect7; property: "color"; to: color1; duration: timeVal }
        ColorAnimation {target: rect7; property: "color"; to: color2; duration: timeVal }
      }
    }

    Rectangle {
      id:rect8

      height: 50
      width: 20

      x:33
      y:18

      color:"#FFFFFF"
      radius:20
      smooth: true
      rotation:135

      SequentialAnimation {
        id:animRect8
        running: false
        ColorAnimation {target: rect8; property: "color"; to: color1; duration: timeVal }
        ColorAnimation {target: rect8; property: "color"; to: color2; duration: timeVal }
      }
    }


    Timer {
      id: timer
      interval: timeVal/4;
      running: true
      repeat: true
      onTriggered: {
        if(!animRect1.running)
        {
          animRect1.start();
        }
        else if(!animRect2.running)
        {
          animRect2.start();
        }
        else if(!animRect3.running)
        {
          animRect3.start();
        }
        else if(!animRect4.running)
        {
          animRect4.start();
        }
        else if(!animRect5.running)
        {
          animRect5.start();
        }
        else if(!animRect6.running)
        {
          animRect6.start();
        }
        else if(!animRect7.running)
        {
          animRect7.start();
        }
        else if(!animRect8.running)
        {
          animRect8.start();
        }
      }
    }
  }
