import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Component/navbutton.dart';
import 'package:vhackapp/Component/userinput.dart';

class RequesttransportScreen extends StatefulWidget {
  const RequesttransportScreen({super.key});

  @override
  State<RequesttransportScreen> createState() => _RequesttransportScreenState();
}

class _RequesttransportScreenState extends State<RequesttransportScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomLeading(title: "OKU transportation"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomTextField(
                      label: "Departure",
                      hintText: "Enter where to pick up..."),
                  SizedBox(height: 20),
                  CustomTextField(
                      label: "Destination",
                      hintText: "Enter where to drop off..."),
                  SizedBox(height: 20),
                  NavigationButton(
                    text: "Request",
                    destination: SuccessTransportScreen(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PendingtransportScreen extends StatefulWidget {
  const PendingtransportScreen({super.key});

  @override
  State<PendingtransportScreen> createState() => _PendingtransportScreenState();
}

class _PendingtransportScreenState extends State<PendingtransportScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomLeading(title: "OKU transportation"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Waiting for available transport...",
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    NavigationButton(
                      text: "Cancel",
                      destination: SuccessTransportScreen(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SuccessTransportScreen extends StatefulWidget {
  const SuccessTransportScreen({super.key});

  @override
  State<SuccessTransportScreen> createState() => _SuccessTransportScreenState();
}

class _SuccessTransportScreenState extends State<SuccessTransportScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomLeading(title: "OKU transportation"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Transport sent by Penang Hospital, please wait...",
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    NavigationButton(
                      text: "Cancel",
                      destination: RequesttransportScreen(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
