import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tast_intern/pages/home_page.dart';
import 'package:tast_intern/pages/methods/save_amount.dart';
import 'package:tast_intern/widgets/custom_textfield.dart';
import 'package:tast_intern/widgets/paymentMode.dart';

class TransactionPage extends StatefulWidget {
  static const String namedRoute = '/transaction';
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  // late Map arguments;
  TextEditingController _amountController = TextEditingController();
  TextEditingController _dateControler = TextEditingController();
  int amount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_backspace_sharp,
            color: Color(0xFF2F2F30),
            size: 25,
          ),
        ),
        title: Text(
          'Adding Transaction',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFF2F2F30)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Spend amount',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF2F2F30)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Enter the amount that you have spend without \nusing zero balance. ',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF525251)),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  CustomTextField(
                    hintText: '',
                    borderColor: Color(0xFF303F9F),
                    controller: _amountController,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Container(
                        // padding: const EdgeInsets.only(bottom: 20),
                        color: Colors.white,
                        height: 20,
                        width: 48,
                        child: Text(
                          'Amount',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF303F9F)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Enter Date',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF2F2F30),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                hintText: '',
                controller: _dateControler,
                borderColor: Color(0xFFFFFFFF).withOpacity(0.2),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Mode of payment',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF2F2F30)),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: PaymentMode(
                        text: 'UPI',
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(onTap: () {}, child: PaymentMode(text: 'Card')),
                    const SizedBox(
                      width: 4,
                    ),
                    PaymentMode(text: 'Cash'),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Quick note',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF2F2F30)),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                hintText: "Quick Note",
                controller: _dateControler,
                borderColor: Color(0xFFFFFFFF).withOpacity(0.2),
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          amount = Saves().savedAmount(_amountController.text);
                        });
                        Navigator.pushReplacementNamed(
                            context, HomePage.namedRoute,
                            arguments: {
                              'isCompleted': true,
                              'amount': amount,
                            });
                      },
                      child: Container(
                        width: 332,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFF303F9F),
                        ),
                        child: Center(
                          child: Text(
                            'Save',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
