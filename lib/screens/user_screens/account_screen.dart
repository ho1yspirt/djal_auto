import 'package:djal_auto/screens/user_screens/create_user_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../auth.dart';
import '../../generated/l10n.dart';
import '../../utils/constans.dart';

class AccountScreen extends StatelessWidget {
  static String id = 'account_screen';

  const AccountScreen({
    super.key,
  });

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    bool isAdmin = true;
    bool isAutoInstructor = false;

    return FutureBuilder(
        future: Provider.of(context),
        builder: (context, snapshot) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text(
                S.of(context).account,
                style: kAppBarTS,
              ),
              actions: [
                PopupMenuButton(
                  itemBuilder: ((context) => [
                        PopupMenuItem(
                          onTap: () {
                            signOut();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.logout_rounded),
                              Text(
                                S.of(context).action_logout,
                                style: kAppBarTS,
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '',
                      children: [
                        TextSpan(
                          text: S.of(context).greetings,
                          style: kHeadline2TS,
                        ),
                        TextSpan(
                          text: 'Timur',
                          style: kHeadline2TS.copyWith(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 3, color: kOnPrimaryColor),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.person_outline_rounded,
                            size: 50,
                            color: kOnPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildTop(
                      title: Text(S.of(context).fullname,
                          style: kBody2TS.copyWith(color: kPrimaryColor))),
                  buildBottom(title: Text('dscsd', style: kBody1TS)),
                  kVerticalPadding,
                  isAdmin || isAutoInstructor
                      ? const SizedBox.shrink()
                      : Column(
                          children: [
                            buildTop(
                                title: Text(S.of(context).number_of_group,
                                    style: kBody2TS.copyWith(
                                        color: kPrimaryColor))),
                            buildBottom(
                                title: Text('Group 15', style: kBody1TS)),
                            kVerticalPadding,
                          ],
                        ),
                  buildTop(
                      title: Text(S.of(context).phone_number,
                          style: kBody2TS.copyWith(color: kPrimaryColor))),
                  buildBottom(title: Text('+996 700 999 666', style: kBody1TS)),
                ],
              ),
            ),
            floatingActionButton: isAdmin
                ? FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.pushNamed(context, CreateUserScreen.id);
                    },
                    icon: const Icon(Icons.person_add_outlined),
                    label: Text(S.of(context).action_create_user),
                  )
                : const SizedBox.shrink(),
          );
        });
  }

  Widget buildTop({required Text title}) => Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kSurfaceColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          child: title,
        ),
      );
  Widget buildBottom({required Text title}) => Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kSurfaceColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        child: title,
      );
}
