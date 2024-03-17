import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.x,
  });
  final String x;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
          decoration: ShapeDecoration(
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesMaskgroup)),
              color: const Color(0xff4eb7f2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42, top: 16),
                title: Text("Name card",
                    style: AppStyles.styleRegular16(context).copyWith(
                      color: Colors.white,
                    )),
                subtitle:
                    Text("Syah Bandi", style: AppStyles.styleMedium20(context)),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '0918 8124 0042 8129',
                        style: AppStyles.styleSemiBold24(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        '12/20 - 1${x}0',
                        style: AppStyles.styleRegular16(context)
                            .copyWith(color: Colors.white),
                      ),
                    ]),
              ),
              const Flexible(
                child: SizedBox(
                  height: 24,
                ),
              )
            ],
          )),
    );
  }
}
