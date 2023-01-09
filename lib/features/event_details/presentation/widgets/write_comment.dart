import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../core/components/bottom_sheet/dragger.dart';
import '../../../comment_section/presentation/screens/comment_section_screen.dart';
import '../../../comment_section/presentation/widgets/comment_field.dart';

class EventDetailsWriteCommentField extends StatelessWidget {
  final String eventId;
  const EventDetailsWriteCommentField(this.eventId, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showBarModalBottomSheet(
          context: context,
          builder: (context) => CommentSectionScreen(eventId: eventId),
          barrierColor: Colors.black.withOpacity(0.5),
        );
      },
      child: IgnorePointer(
        child: SafeArea(
          child: Column(
            children: const [
              SizedBox(height: 15.0),
              BottomSheetDragger(),
              SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: CommentField(),
              ),
              SizedBox(height: 15.0)
            ],
          ),
        ),
      ),
    );
  }
}
