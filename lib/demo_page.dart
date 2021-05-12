import 'package:arkit_plugin/widget/arkit_scene_view.dart';
import 'package:flutter/material.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:vector_math/vector_math_64.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: ARKitSceneView(onARKitViewCreated: (e) => onARKitViewCreated(e),),
    );
  }

}

void onARKitViewCreated(ARKitController c) {
  final node = ARKitNode(
    geometry: ARKitBox( width: 0.1, height: 0.1, length: 0.1,),
    position: Vector3(0, 0, -0.5),
  );
  c.add(node);
}