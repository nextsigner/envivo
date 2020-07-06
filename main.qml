import QtQuick 2.0
import QtQuick.Controls 2.0
import QtMultimedia 5.12
import QtQuick.Window 2.0
ApplicationWindow {
    id: app
    visible: true
    visibility: "Maximized"
    //width: 800/2
    //height: 600/2
    color: 'black'
    //x:Screen.width-width
    //y:Screen.height-height
    Item{
        id: xApp
        anchors.fill: parent
        MediaPlayer {
            id: videoPlayer
            source: "rtsp://66.97.41.234:80/live/node-rtsp-rtmp-server"
            //muted: true
            autoPlay: true
        }
        VideoOutput {
            id: camera1
            anchors.fill: parent
            source: videoPlayer
        }
    }
}
