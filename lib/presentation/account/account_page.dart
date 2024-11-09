import 'package:flutter/material.dart';

import 'package:client_app/utils/extensions/to_capitalize_initials.dart';
import '../../application/user/auth/auth_service.dart';
import '../../di/di_container.dart';
import '../../domain/user_profile.dart';
import '../../startup/startup.dart';
import '../../utils/helpers/constants.dart';
import '../../utils/helpers/styles.dart';
import 'widgets/account_tile.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  static const String routeName = '/account';

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final authService = diContainer<AuthService>();

  Future<void> _logOut(BuildContext context) async {
    await authService.signOut();
    await runAppKhajuraho();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyles.semiBold4,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UserProfileWidget(),
            const AccountTile(
              title: 'My Account',
              children: [
                AccountItem(title: 'Favorites'),
                AccountItem(title: 'Saved Places'),
              ],
            ),
            AccountTile(
              title: 'General',
              children: [
                const AccountItem(title: 'Settings'),
                AccountItem(
                  onTap: () async {
                    await _logOut(context);
                  },
                  title: 'LogOut',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserProfile>(
      future: diContainer<AuthService>().getUserProfile(),
      builder: (context, snapshot) {
        final String? firstName = snapshot.data?.firstName;
        final String? lastName = snapshot.data?.lastName;
        String? fullName;
        if (firstName != null && firstName.isNotEmpty) {
          fullName = lastName != null ? '$firstName $lastName' : firstName;
        }

        if (fullName == null || fullName.isEmpty) {
          return emptyWidget;
        }
        return Padding(
          padding: horizontalPadding12 + bottomPadding2,
          child: Container(
            padding: horizontalPadding12 + verticalPadding16,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xFFe7f5ff),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          fullName[0].toUpperCase(),
                          style: TextStyles.semiBold8!.copyWith(
                            color: const Color(0xFF1971c2),
                          ),
                        ),
                      ),
                    ),
                    horizontalMargin12,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            fullName.toCapitalizeInitials(),
                            style: TextStyles.regular5,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        verticalMargin4,
                        Text(
                          'Khushal@gmail.com',
                          style: TextStyles.regular1,
                        ),
                        verticalMargin4,
                        Text(
                          '+919311685282',
                          style: TextStyles.regular1,
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: rightPadding16,
                  child: Icon(Icons.edit),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
