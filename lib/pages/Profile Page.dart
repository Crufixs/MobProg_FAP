import 'package:fap/components/CustomNavBar.dart';
import 'package:fap/utilities/constants.dart';
import 'package:fap/components/User.dart';
import 'package:fap/components/User_Details.dart';
import 'package:fap/components/Profile_Modify.dart';
import 'package:fap/components/Button.dart';
import 'package:fap/components/Information.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserDetails.userRecord;
    return SafeArea(
      child: Column(
        // ListView
        // physics: BouncingScrollPhysics(),
        children: [
          ProfileModify(
            petimage: user.petimage,
            // onClicked: () async {},
          ),
          const SizedBox(height: 15),
          petName(user),
          const SizedBox(height: 20),
          Center(
            child: editButton(),
          ),
          // Button(
          //
          // ),
          const SizedBox(height: 10),
          Information(),
          const SizedBox(height: 15),
          petAbout(user),
        ],
      ),
      // bottomNavigationBar: CustomNavBar(currentIndex: 2, context: context),
    );
  }

  petName(User user) {
    return Column(
      children: [
        Text(
          user.petname,
          style: TextTitle,
        ),
        //const SizedBox(height: 1),
        Text(
          user.breed,
          style: TextStyle(
            color: firstColor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  editButton() => Button(
        text: 'Edit Profile',
        onClicked: () {},
  );

  petAbout(User user) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            user.about,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
