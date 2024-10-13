import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/add_user_details_bloc.dart';
import '../../application/user/auth/auth_service.dart';
import '../../di/di_container.dart';
import '../../utils/helpers/alerts.dart';
import '../../utils/helpers/colors.dart';
import '../../utils/helpers/constants.dart';
import '../../utils/helpers/styles.dart';
import '../../utils/widgets/atoms/input_text.dart';
import '../../utils/widgets/tile.dart';
import '../home_screen/home_screen.dart';
import '../sign_in_page/sign_in_page.dart';

class AddUserDetailsPage extends StatelessWidget {
  AddUserDetailsPage({super.key});

  static const String routeName = '/add-user-details';

  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider<AddUserDetailsBloc>(
      create: (_) => diContainer<AddUserDetailsBloc>(),
      child: BlocConsumer<AddUserDetailsBloc, AddUserDetailsState>(
        listener: _onListen,
        builder: (context, state) {
          final bool isLoading = state.isSubmitting;
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Add details',
                style: TextStyles.semiBold4,
              ),
            ),
            body: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AppTile(
                        title: 'Enter first name',
                        child: InputText(
                          hasBox: false,
                          controller: _firstNameController,
                          onChanged: (value) => _firstNameController.text = value,
                          validator: (value) {
                            final String? text = value?.trim();
                            if (text == null || text.isEmpty) {
                              return 'Please enter first name';
                            }
                            if (text.length < 3) {
                              return 'Please enter atleast 3 digits';
                            }

                            return null;
                          },
                        ),
                      ),
                      verticalMargin24,
                      AppTile(
                        title: 'Enter last name',
                        child: InputText(
                          hasBox: false,
                          controller: _lastNameController,
                          onChanged: (value) => _lastNameController.text = value,
                          validator: (value) {
                            final String? text = value?.trim();
                            if (text == null || text.isEmpty) {
                              return 'Please enter last name';
                            }

                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: verticalPadding24 + horizontalPadding24,
                    child: SizedBox(
                      height: 44,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.primaryColor,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<AddUserDetailsBloc>().add(
                                  AddUserDetailsEvent.submit(
                                    firstName: _firstNameController.text,
                                    lastName: _lastNameController.text,
                                  ),
                                );
                          }
                        },
                        child: Center(
                          child: isLoading
                              ? const CircularProgressIndicator(color: whiteColor)
                              : Text(
                                  'Submit',
                                  style: TextStyles.semiBold2!.copyWith(
                                    color: whiteColor,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onListen(BuildContext context, AddUserDetailsState state) async {
    if (state.isSuccess) {
      if (context.mounted) {
        context.replace(HomeScreen.routeName);
      }
    } else if (state.hasError && state.navigateBackToSignIn) {
      await diContainer<AuthService>().signOut();

      if (context.mounted) {
        context.replace(SignInPage.routeName);
      }

      unawaited(
        Alerts.showErrorToast!(
          content: state.errorMessage ?? 'Something went wrong',
        ),
      );
    }
  }
}
