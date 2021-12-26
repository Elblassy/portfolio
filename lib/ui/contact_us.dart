
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/ui/icon.dart';
import 'package:mailto/mailto.dart';
import 'package:portfolio/utils/constants.dart' as con;
import 'package:url_launcher/url_launcher.dart';
import 'responsive_widget.dart';
import '../config/styles.dart';
import '../config/colors.dart';
import '../utils/extensions.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController(),
      _emailController = TextEditingController(),
      _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('GET IN TOUCH', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildContactInfo(
                        'icons/email.png',
                        'Mail Us:',
                        con.mail,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        'icons/call.png',
                        'Call Us:',
                        con.phone,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        'icons/pin.png',
                        'Visit Us:',
                        con.location,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _buildContactForm(context),
                ),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text(
              'GET IN TOUCH',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContactInfo(
                      'icons/email.png',
                      'Mail Me:',
                      con.mail,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      'icons/call.png',
                      'Call Me:',
                      con.phone,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      'icons/pin.png',
                      'Visit Me:',
                      con.location,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                _buildContactForm(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(String imagePath, String title, String content) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcon(imagePath, color: AppColors.black.withOpacity(.7), size: 20),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content,
                style: TextStyle(color: AppColors.black.withOpacity(.7)),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Have Something To Write?',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (text) {
                        return (text!.isValidName())
                            ? null
                            : 'Please insert valid name!';
                      },
                      decoration: const InputDecoration(
                        hintText: 'Your Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormField(
                      validator: (text) {
                        return (text!.isValidEmail)
                            ? null
                            : 'Please insert valid email!';
                      },
                      decoration: const InputDecoration(
                        hintText: 'Your Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                minLines: 3,
                maxLines: 10,
                validator: (text) {
                  return (text!.isValidName(minLength: 10))
                      ? null
                      : 'Please insert valid message!, at least 10 characters';
                },
                decoration: const InputDecoration(
                  hintText: 'Your Message',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.yellow,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: _sendMail,
                child: const Text(
                  'Send',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _sendMail() async {
    bool isValidForm = _formKey.currentState!.validate();
    if (!isValidForm) return;


    final mailto = Mailto(
      to: [con.mail],
      subject: _nameController.text.trim(),
      body: _contentController.text.trim(),
    );

    await launch('$mailto');

  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
