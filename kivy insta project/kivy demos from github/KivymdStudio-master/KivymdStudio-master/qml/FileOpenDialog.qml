import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtCharts 2.15
import QtQuick.Layouts 1.0

Item{
    id:root
    property color theme_color
    property color border_color
    property string message:'Create new file'
    
    property alias get_field: field
    property alias get_filename: field.text
    property alias field:field
    

    Rectangle{
        id:cadre
        width:220
        height:150
        color:theme_color
        border.width:1
        border.color:border_color
        UIText{
            y:25
            text:message
            color:'#A8B2BD'
            font.pixelSize:22
            //font.family:'Olivia Kevin'
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextField{
            id:field
            background: Rectangle{
                radius:12
                color:'#19191A'
            }
            y:67
            width:200
            height:40
            placeholderText: 'filename'
            placeholderTextColor: '#838485'
            bottomPadding: 3
            font.pixelSize: 16
            leftPadding: 15
            color:'white'
            focus:true
            anchors.horizontalCenter: parent.horizontalCenter
            // Keys.onReturnPressed:{
            //     root.visible=false
            // }
        }
        Rectangle{
            width:18
            height:18
            radius:30
            anchors.right:parent.right
            anchors.top:parent.top
            anchors.margins: 5
            color:parent.color
            
            Text{
                text:'×'
                font.pixelSize:16
                anchors.centerIn: parent
                color:'white'
            }

            MouseArea{
                anchors.fill: parent
                hoverEnabled:true
                onEntered:{
                    parent.color='#A8B2BD'
                }
                onExited:{
                    parent.color=cadre.color
                }
                onClicked:{
                    root.visible=false
                }
            }
        }

    }
}