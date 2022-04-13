import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportzride/presentation/themes/app_color.dart';

class FeedCardWidget extends StatefulWidget {
  String teamURL;
  String name;
  String time;
  String imageURL;
  String description;

  FeedCardWidget(
      {Key? key,
      required this.teamURL,
      required this.name,
      required this.time,
      required this.imageURL,
      required this.description})
      : super(key: key);

  @override
  _FeedCardWidgetState createState() => _FeedCardWidgetState();
}

class _FeedCardWidgetState extends State<FeedCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: AppColor.label600,
        child: Column(
          children: [
            ListTile(
              leading: SizedBox(
                height: 40.h,
                width: 40.w,
                child: CircleAvatar(
                  child: Image.asset(
                    widget.teamURL,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(bottom: 5.h, top: 6.h),
                child: Text(
                  widget.name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.time,
                    style: TextStyle(
                        color: AppColor.powder,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp),
                  ),
                  Text(
                    'Powered By Sportzride',
                    style: TextStyle(
                        color: AppColor.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Image.asset(widget.imageURL),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.description,
                style: const TextStyle(
                    color: AppColor.powder, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
