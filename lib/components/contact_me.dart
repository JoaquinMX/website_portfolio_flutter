import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/add_data_firestore.dart';
import 'package:flutter_portfolio/components/custom_text_form.dart';
import 'package:flutter_portfolio/components/dialog_error.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:logger/logger.dart';

class ContactMeWeb extends StatefulWidget {
  final double heightDevice;
  final double widthDevice;

  const ContactMeWeb({
    super.key,
    required this.heightDevice,
    required this.widthDevice,
  });

  @override
  State<ContactMeWeb> createState() => _ContactMeWebState();
}

class _ContactMeWebState extends State<ContactMeWeb> {
  var logger = Logger();
  final TextEditingController _firstNameController =
      TextEditingController(); // for first name
  final TextEditingController _lastNameController =
      TextEditingController(); // for last name
  final TextEditingController _emailController =
      TextEditingController(); // for email
  final TextEditingController _phoneNumberController =
      TextEditingController(); // for phone number
  final TextEditingController _messageController =
      TextEditingController(); // for message
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightDevice,
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Sans(
              text: "Contact Me",
              size: 40,
              isBold: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CustomTextForm(
                      heading: "First Name",
                      hintText: "Please enter your first name",
                      containerWidth: 350,
                      controller: _firstNameController,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter your first name";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextForm(
                      heading: "Email",
                      hintText: "Please enter your email",
                      containerWidth: 350,
                      controller: _emailController,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter your first email";
                        }
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomTextForm(
                      heading: "Last Name",
                      hintText: "Please enter your last name",
                      containerWidth: 350,
                      controller: _lastNameController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextForm(
                      heading: "Phone Number",
                      hintText: "Please enter your phone number",
                      containerWidth: 350,
                      controller: _phoneNumberController,
                    ),
                  ],
                ),
              ],
            ),
            CustomTextForm(
              heading: "Message",
              hintText: "Please enter your message",
              containerWidth: widget.widthDevice / 1.5,
              maxLines: 10,
              controller: _messageController,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "Please enter your message";
                }
              },
            ),
            MaterialButton(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 60,
              minWidth: 200,
              color: Colors.tealAccent,
              child: Sans(text: "Submit", size: 20, isBold: true),
              onPressed: () async {
                final addData = new AddDataFirestore();
                if (formKey.currentState!.validate()) {
                  if (await addData.addResponse(
                      _firstNameController.text,
                      _lastNameController.text,
                      _emailController.text,
                      _phoneNumberController.text,
                      _messageController.text)) {
                    formKey.currentState!.reset();
                    CustomDialog(context, "Message sent successfully");
                  } else {
                    CustomDialog(context, "Message failed to send");
                  }
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class ContactMeMobile extends StatefulWidget {
  const ContactMeMobile({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<ContactMeMobile> createState() => _ContactMeMobileState();
}

class _ContactMeMobileState extends State<ContactMeMobile> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _firstNameController =
        TextEditingController(); // for first name
    final TextEditingController _lastNameController =
        TextEditingController(); // for last name
    final TextEditingController _emailController =
        TextEditingController(); // for email
    final TextEditingController _phoneNumberController =
        TextEditingController(); // for phone number
    final TextEditingController _messageController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Wrap(
        spacing: 20.0,
        runSpacing: 20.0,
        alignment: WrapAlignment.center,
        children: [
          Sans(text: "Contact Me", size: 35, isBold: true),
          CustomTextForm(
            heading: "First name",
            hintText: "Enter your first name",
            containerWidth: widget.width / 1.4,
            controller: _firstNameController,
          ),
          CustomTextForm(
            heading: "Last name",
            hintText: "Enter your last name",
            containerWidth: widget.width / 1.4,
            controller: _lastNameController,
          ),
          CustomTextForm(
            heading: "Email",
            hintText: "Enter your email",
            containerWidth: widget.width / 1.4,
            controller: _emailController,
          ),
          CustomTextForm(
            heading: "Phone Number",
            hintText: "Enter your phone number",
            containerWidth: widget.width / 1.4,
            controller: _phoneNumberController,
          ),
          CustomTextForm(
            heading: "Message",
            hintText: "Message",
            containerWidth: widget.width / 1.4,
            maxLines: 10,
            controller: _messageController,
          ),
          MaterialButton(
            onPressed: () async {
              final addData = new AddDataFirestore();
              if (formKey.currentState!.validate()) {
                if (await addData.addResponse(
                    _firstNameController.text,
                    _lastNameController.text,
                    _emailController.text,
                    _phoneNumberController.text,
                    _messageController.text)) {
                  formKey.currentState!.reset();
                  CustomDialog(context, "Message sent successfully");
                } else {
                  CustomDialog(context, "Message failed to send");
                }
              }
            },
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            height: 60,
            minWidth: widget.width / 2.2,
            color: Colors.tealAccent,
            child: Sans(text: 'Submit', size: 20, isBold: true),
          )
        ],
      ),
    );
  }
}
