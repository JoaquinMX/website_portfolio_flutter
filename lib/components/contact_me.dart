import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/custom_text_form.dart';
import 'package:flutter_portfolio/components/sans.dart';

class ContactMeWeb extends StatelessWidget {
  final double heightDevice;
  final double widthDevice;

  const ContactMeWeb({
    super.key,
    required this.heightDevice,
    required this.widthDevice,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightDevice,
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
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextForm(
                    heading: "Email",
                    hintText: "Please enter your email",
                    containerWidth: 350,
                  ),
                ],
              ),
              Column(
                children: [
                  CustomTextForm(
                    heading: "Last Name",
                    hintText: "Please enter your last name",
                    containerWidth: 350,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextForm(
                    heading: "Phone Number",
                    hintText: "Please enter your phone number",
                    containerWidth: 350,
                  ),
                ],
              ),
            ],
          ),
          CustomTextForm(
            heading: "Message",
            hintText: "Please enter your message",
            containerWidth: widthDevice / 1.5,
            maxLines: 10,
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
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class ContactMeMobile extends StatelessWidget {
  const ContactMeMobile({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Sans(text: "Contact Me", size: 35, isBold: true),
        CustomTextForm(
          heading: "First name",
          hintText: "Enter your first name",
          containerWidth: width / 1.4,
        ),
        CustomTextForm(
          heading: "Last name",
          hintText: "Enter your last name",
          containerWidth: width / 1.4,
        ),
        CustomTextForm(
          heading: "Email",
          hintText: "Enter your email",
          containerWidth: width / 1.4,
        ),
        CustomTextForm(
          heading: "Phone Number",
          hintText: "Enter your phone number",
          containerWidth: width / 1.4,
        ),
        CustomTextForm(
          heading: "Message",
          hintText: "Message",
          containerWidth: width / 1.4,
          maxLines: 10,
        ),
        MaterialButton(
          onPressed: () {},
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          minWidth: width / 2.2,
          color: Colors.tealAccent,
          child: Sans(text: 'Submit', size: 20, isBold: true),
        )
      ],
    );
  }
}
