import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/models/user_model.dart';
import 'package:musang_syncronizehub_odyssey/features/core/controllers/profile_controller.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/profile/widget/appbar.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: ProfileAppBar(
        title: 'Edit Profile',
        isDark: isDark,
        onPress: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {

                  // show single user
                  UserModel user = snapshot.data as UserModel;

                  //controllers
                  final email = TextEditingController(text: user.email);
                  final password = TextEditingController(text: user.password);
                  final fullName = TextEditingController(text: user.fullName);
                  final phoneNumber = TextEditingController(text: user.phoneNo);

                  return Column(
                    children: [
                      // -- IMAGE with ICON
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(
                                image: AssetImage('assets/woman.png'),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xFFFEE400),
                                ),
                                child: const Icon(
                                  LineAwesomeIcons.camera,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      // -- Form Fields
                      Form(
                          child: Column(
                        children: [
                          TextFormField(
                            controller: fullName,
                            // initialValue: user.fullName,
                            decoration: const InputDecoration(
                              label: Text('Full Name'),
                              prefixIcon: Icon(
                                Icons.person_outline_rounded,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: email,
                            // initialValue: user.email,
                            decoration: const InputDecoration(
                              label: Text('Email'),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: phoneNumber,
                            // initialValue: user.phoneNo,
                            decoration: const InputDecoration(
                              label: Text('Phone Number'),
                              prefixIcon: Icon(
                                LineAwesomeIcons.phone,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: password,
                            // initialValue: user.password,
                            decoration: InputDecoration(
                              label: const Text('Password'),
                              prefixIcon: const Icon(
                                LineAwesomeIcons.lock,
                              ),
                              suffixIcon: IconButton(
                                icon: const Icon(LineAwesomeIcons.eye_slash),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          // -- Form Submit Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                final userData = UserModel(
                                  fullName: fullName.text.trim(),
                                  email: email.text.trim(),
                                  password: password.text.trim(),
                                  phoneNo: phoneNumber.text.trim(),
                                );

                                await controller.updateRecord(userData);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFEE400),
                                side: BorderSide.none,
                                shape: const StadiumBorder(),
                              ),
                              child: const Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          // -- Created Date and Delete Button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: 'Joined  ',
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: DateFormat("dd MMMM yyy")
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.redAccent.withOpacity(0.1),
                                    elevation: 0,
                                    foregroundColor: Colors.red,
                                    shape: const StadiumBorder(),
                                    side: BorderSide.none,
                                  ),
                                  child: const Text('Delete')),
                            ],
                          ),
                        ],
                      )),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return const Center(
                    child: Text('Something went wrong'),
                  );
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
