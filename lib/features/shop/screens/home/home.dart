import 'package:flutter/material.dart';
import 'package:utmstore/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

import '../../../../common/widgets/custom_shapes/container/circular_container.dart';

import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../utils/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Container()
            ),
          ],
        ),
      ),
    );
  }
}
