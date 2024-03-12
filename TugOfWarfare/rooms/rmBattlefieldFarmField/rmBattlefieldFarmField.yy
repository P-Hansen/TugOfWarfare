{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rmBattlefieldFarmField",
  "creationCodeFile": "rooms/rmBattlefieldFarmField/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_128891F1_1_1_1","path":"rooms/rmBattlefieldFarmField/rmBattlefieldFarmField.yy",},
    {"name":"inst_23895F8F_1_1_1","path":"rooms/rmBattlefieldFarmField/rmBattlefieldFarmField.yy",},
    {"name":"inst_498D9BF1","path":"rooms/rmBattlefieldFarmField/rmBattlefieldFarmField.yy",},
    {"name":"inst_1C12EB64","path":"rooms/rmBattlefieldFarmField/rmBattlefieldFarmField.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"weaponLayer","depth":-1000,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1C12EB64","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"settingsIcon","path":"objects/settingsIcon/settingsIcon.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":24.0,"y":24.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":true,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_128891F1_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"battleUI","path":"objects/battleUI/battleUI.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":16.0,"y":16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_23895F8F_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"enemyAI","path":"objects/enemyAI/enemyAI.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":48.0,"y":16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_498D9BF1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"plantPlacerFarmField","path":"objects/plantPlacerFarmField/plantPlacerFarmField.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":80.0,"y":16.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":true,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"ground","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":22,"TileCompressedData":[
1,67,-6,17,-3,68,-12,17,4,88,17,88,88,-5,17,-2,90,7,68,17,68,17,
89,89,17,-3,89,-5,17,2,88,67,-8,17,-4,88,1,89,-7,17,-2,88,-3,17,
5,88,68,17,89,88,-4,17,23,88,17,89,17,90,88,17,89,90,17,90,68,88,
89,17,17,89,88,17,90,68,88,88,-3,17,2,68,90,-3,17,16,68,17,68,17,
17,89,17,88,17,17,90,17,17,89,67,68,-5,17,3,88,90,67,-3,17,-2,89,
14,17,89,67,17,17,88,67,67,17,17,68,90,17,90,-6,17,3,89,17,89,-3,
17,1,89,-5,17,21,67,90,17,17,88,17,17,88,17,17,88,17,89,17,17,67,
67,17,17,68,68,-3,17,3,90,17,90,-7,17,1,89,-9,17,1,90,-5,17,1,
90,-3,17,1,90,-3,17,-2,90,-2,17,6,88,90,17,17,68,68,-3,17,-2,88,
-6,17,-2,67,-4,17,3,88,68,17,],"TileDataFormat":1,},"tilesetId":{"name":"TileSetFarm","path":"tilesets/TileSetFarm/TileSetFarm.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4284918476,"depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":true,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 768,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1366,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}