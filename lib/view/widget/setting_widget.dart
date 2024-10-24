import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/view/widget/followMy.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/logo/Logo.svg",
                height: MediaQuery.of(context).size.width - 180,
              ),
              ListTile(
                leading: Icon(
                  Iconsax.global,
                  color: SubTextColor,
                ),
                title: Text(
                  S.of(context).setting_1,
                  style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 20,
                    color: TextColor,
                  ),
                ),
                subtitle: Text(
                  S.of(context).setting_1,
                  style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 16,
                    color: SubTextColor,
                  ),
                ),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                  Iconsax.moon,
                  color: SubTextColor,
                ),
                title: Text(
                  S.of(context).setting_2,
                  style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 20,
                    color: TextColor,
                  ),
                ),
                subtitle: Text(
                  S.of(context).setting_2,
                  style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 16,
                    color: SubTextColor,
                  ),
                ),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                  Iconsax.share,
                  color: SubTextColor,
                ),
                title: Text(
                  S.of(context).setting_3,
                  style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 20,
                    color: TextColor,
                  ),
                ),
                subtitle: Text(
                  S.of(context).setting_5,
                  style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 16,
                    color: SubTextColor,
                  ),
                ),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                  Iconsax.message_question,
                  color: SubTextColor,
                ),
                title: Text(
                  S.of(context).setting_4,
                  style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 20,
                    color: TextColor,
                  ),
                ),
                subtitle: Text(
                  S.of(context).setting_6,
                  style: TextStyle(
                    fontFamily: SubFont,
                    fontSize: 16,
                    color: SubTextColor,
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(height: 25),
              Text(
                S.of(context).setting_9,
                style: TextStyle(
                  color: TextColor,
                  fontFamily: SubFont,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 25),
              const FollowMyWidget()
            ],
          ),
        ),
      ),
    );
  }
}




//  Align(
//               alignment:
//                   IsArabic() ? Alignment.centerRight : Alignment.centerLeft,
//               child: Text(
//                 S.of(context).intro_4,
//                 style: TextStyle(
//                   color: SubTextColor,
//                   fontFamily: SubFont,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: 70,
//               child: DropdownButtonFormField<String>(
//                 decoration: const InputDecoration(
//                   contentPadding:
//                       EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                   border: InputBorder.none,
//                 ),
//                 value: 'العربية',
//                 iconSize: 30,
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: TextColor,
//                   fontFamily: SubFont,
//                 ),
//                 onChanged: (String? newValue) {},
//                 items: <String>['العربية', 'English']
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//             ),
//             Divider(
//               color: SubbackColor,
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: 70,
//               child: DropdownButtonFormField<String>(
//                 decoration: const InputDecoration(
//                   contentPadding:
//                       EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                   border: InputBorder.none,
//                 ),
//                 value: 'العربية',
//                 iconSize: 30,
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: TextColor,
//                   fontFamily: SubFont,
//                 ),
//                 onChanged: (String? newValue) {},
//                 items: <String>['العربية', 'English']
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//             ),
//             Divider(
//               color: SubbackColor,
//             )