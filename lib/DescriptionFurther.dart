import 'package:flutter/material.dart';


class ProductDescriptionFurther extends StatefulWidget {

  @override
  _ProductDescriptionFurtherState createState() =>
      _ProductDescriptionFurtherState();
}

class _ProductDescriptionFurtherState extends State<ProductDescriptionFurther> {
  String productDescriptionPage = 'Description Title';
  String date = '2020-07-23 10:26:05';
  String customise = 'تخصيص سمة ';
  String customise1 = 'عنوان المدونة';
  String description =
      'المادة 1 يولد جميع الناس أحرارًا متساوين في\n الكرامة والحقوق. وقد وهبوا عقلاً وضميرًا وعليهم أن يعامل \nبعضهم بعضًا بروح الإخا الدين أو الرأي السياسي أو أي \nرأي آخر، أو الأصل الوطني أو الإجتماعي أو الثروة أو الميلاد\n أو أي وضع آخر، دون أية تفرقة بين الرجال والنساء. وفضلاً \nعما تقدم فلن يكون هناك أي تمييز أساسه الوضع السياسي أو\n القانوني أو الدولي لبلد أو البقعة التي ينتمي إليها الفر\nد سواء كان هذا البلد أو تلك البقعة\n مستقلاً أو تحت الوصاية أو غير متمتع بالحكم الذاتي أو كانت سيادته خاضعة لأي قيد من القيود.المادة\n يولد جميع الناس أحرارًا متساوين في الكرامة والحقوق. وقد وهبوا \nعقلاً وضميرًا وعليهم أن يعامل بعضهم بعضًا بروح الإخا الدين أو الرأي\n السياسي أو أي رأي آخر، أو الأصل الوطني أو الإجتماعي أو الثروة أو الميلاد \nأو أي وضع آخر، دون أية تفرقة بين الرجال والنساء.\n وفضلاً عما تقدم فلن يكون هناك أي تمييز أساسه الوضع\n السياسي أو القانوني أو الدولي لبلد أو البقعة\n التي ينتمي إليها الفرد سواء كان هذا البلد أو تلك البقعة مستقلا\nً أو تحت الوصاية أو غير متمتع بالحكم الذاتي\n أو كانت سيادته خاضعة لأي قيد من القيود.المادة 1\n يولد جميع الناس أحرارًا متساوين في الكرامة وا\nلحقوق. وقد وهبوا عقلاً وضميرًا وعليهم أن يعامل بعضهم بعضًا\n بروح الإخا الدين أو الرأي السياسي أو أي رأي\n آخر، أو الأصل الوطني أو الإجتماعي أو\n الثروة أو الميلاد أو أي وضع آخر، دون \nأية تفرقة بين الرجال والنساء. وفضلاً عما\n تقدم فلن يكون هناك أي تمييز أساسه الوضع\n السياسي أو القانوني أو الدولي لبلد أو البقعة\n التي ينتمي إليها الفرد سواء كان هذا البلد\n أو تلك البقعة مستقلاً أو تحت الوصاية أو غير\n متمتع بالحكم الذاتي \n و كانت سيادته خاضعة لأي قيد من القيود.';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Container(),
      //   centerTitle: true,
      //   title: Text(
      //     productDescriptionPage,
      //     style: TextStyle(
      //         fontWeight: FontWeight.w600, fontSize: 17, color: Colors.black),
      //   ),
      //   actions: [
      //     Icon(
      //       Icons.arrow_forward,
      //       size: 25,
      //     ),
      //     SizedBox(
      //       width: 10,
      //     )
      //   ],
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Card(
              child: Image.asset(
                'drawable/image_placeholder.png',
                height: MediaQuery.of(context).size.height*0.3,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                date,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                customise1,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    description,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.grey[400],fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
