import 'package:client_app/utils/helpers/constants.dart';
import 'package:client_app/utils/helpers/styles.dart';
import 'package:client_app/utils/widgets/tile.dart';
import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<AccountItem> children;

  @override
  Widget build(BuildContext context) {
    return AppTile(
      title: title,
      cardColor: Colors.white,
      titleSpacing: verticalMargin4,
      horizontalPadding: horizontalPadding12,
      // child: ListView.builder(
      //   itemCount: items.length,
      //   shrinkWrap: true,
      //   physics: const NeverScrollableScrollPhysics(),
      //   // padding: rightPadding8,
      //   // scrollDirection: Axis.,
      //   itemBuilder: ((context, index) {
      //     return AccountItem(
      //       title: items[index],
      //     );
      //   }),
      // ),
      child: Column(
        children: children,
      ),
    );
  }
}

class AccountItem extends StatelessWidget {
  const AccountItem({super.key, required this.title, this.onTap});

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
      title: Text(
        title,
        style: TextStyles.regular2,
      ),
    );
  }
}
