import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidgetWidget extends StatefulWidget {
  const CategoryWidgetWidget({
    Key key,
    this.categoryIcon,
    this.categoryName,
  }) : super(key: key);

  final String categoryIcon;
  final String categoryName;

  @override
  _CategoryWidgetWidgetState createState() => _CategoryWidgetWidgetState();
}

class _CategoryWidgetWidgetState extends State<CategoryWidgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
      child: Container(
        width: 130,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0x338A86E2), Color(0x1A8A86E2)],
            stops: [0, 1],
            begin: AlignmentDirectional(0, -1),
            end: AlignmentDirectional(0, 1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: CachedNetworkImage(
                imageUrl: widget.categoryIcon,
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              widget.categoryName,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
