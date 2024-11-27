import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const Faq());
}

class Faq extends StatefulWidget {
  const Faq({super.key});
  @override
  _AppointmentPaymentScreen createState() => _AppointmentPaymentScreen();
}

class _AppointmentPaymentScreen extends State<Faq> {
  final List<bool> _isExpandedList = List.generate(50000, (index) => false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFE5E5E5),
              ),
              child: SvgPicture.asset(
                'assets/images/back.svg',
                width: 8.0,
                height: 15,
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              child: const Center(
                child: Text(
                  'FAQ’s',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, bottom: 35, top: 35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              faqWidget(
                  question: "This is another example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 0),
              faqWidget(
                  question: "This is a third example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 1),
              faqWidget(
                  question:
                      "This is a fourth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 2),
              faqWidget(
                  question: "This is a fifth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 3),
              faqWidget(
                  question: "This is a fifth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 3),
              faqWidget(
                  question: "This is a fifth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 3),
              faqWidget(
                  question: "This is a fifth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 3),
              faqWidget(
                  question: "This is a fifth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 3),
              faqWidget(
                  question: "This is a fifth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 3),
              faqWidget(
                  question: "This is a fifth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 3),
              faqWidget(
                  question: "This is a fifth example of a frequently asked ...",
                  ans:
                      "The answer to this question is decided by the physician. Or it's something we can easily include a link. The link takes us to one of the pages.",
                  index: 3),
            ],
          ),
        ),
      ),
    ));
  }

  // Pass the index of the FAQ so each has its own expand/collapse state
  Widget faqWidget({
    required String question,
    required String ans,
    required int index,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 266,
                  child: Expanded(
                    child: Text(
                      question,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      maxLines: _isExpandedList[index] ? null : 1,
                      overflow: _isExpandedList[index]
                          ? TextOverflow.visible
                          : TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpandedList[index] = !_isExpandedList[index];
                    });
                  },
                  child: Icon(
                    _isExpandedList[index]
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down_sharp,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            if (_isExpandedList[index]) ...[
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: 226,
                  child: Text(
                    ans,
                    style:
                        const TextStyle(fontSize: 12, color: Color(0xff2C2C2C)),
                  ),
                ),
              ),
            ],
            const SizedBox(height: 20),
            SvgPicture.asset("assets/images/line.svg")
          ],
        ),
      ),
    );
  }
}
