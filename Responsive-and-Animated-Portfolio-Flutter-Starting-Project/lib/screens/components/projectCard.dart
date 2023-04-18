import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../constants.dart';
import '../../models/Project.dart';



class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        children: [
          Text(
            project.title.toString(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description.toString(),
            maxLines: ResponsiveSize.isMobileLarge(context)?3:4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                "Read More>>",
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}
