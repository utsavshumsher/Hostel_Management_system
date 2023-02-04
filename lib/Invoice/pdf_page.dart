import 'package:flutter/material.dart';
import 'package:sleepholic/Invoice/widget/button_widget.dart';
import 'package:sleepholic/Invoice/widget/title_widget.dart';
import 'Model/customer.dart';
import 'Model/invoice.dart';
import 'Model/supplier.dart';
import 'api/pdf_api.dart';
import 'api/pdf_invoice_api.dart';



class PdfPage extends StatefulWidget {
  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      title: Text("Invoice"),
      centerTitle: true,
    ),
    body: Container(
      padding: EdgeInsets.all(32),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleWidget(
              icon: Icons.picture_as_pdf,
              text: 'Generate Invoice',
            ),
            const SizedBox(height: 48),
            ButtonWidget(
              text: 'Invoice PDF',
              onClicked: () async {
                final date = DateTime.now();
                final dueDate = date.add(Duration(days: 7));

                final invoice = Invoice(
                  supplier: Supplier(
                    name: '',
                    address: '',
                    paymentInfo: '',
                  ),
                  customer: Customer(
                    name: '',
                    address: '',
                  ),
                  info: InvoiceInfo(
                    date: date,
                    dueDate: dueDate,
                    description: '',
                    number: '${DateTime.now().year}-9999',
                  ),
                  items: [
                    InvoiceItem(
                      description: 'Rent',
                      date: DateTime.now(),
                      quantity: 0,
                      vat: 0,
                      unitPrice: 9000,
                    ),
                    InvoiceItem(
                      description: 'Food',
                      date: DateTime.now(),
                      quantity: 0,
                      vat: 0.9,
                      unitPrice: 1000,
                    ),
                    InvoiceItem(
                      description: '',
                      date: DateTime.now(),
                      quantity: 0,
                      vat: 0,
                      unitPrice: 0,
                    ),
                    InvoiceItem(
                      description: '',
                      date: DateTime.now(),
                      quantity: 0,
                      vat: 0,
                      unitPrice: 0,
                    ),
                   
                  ],
                );

                final pdfFile = await PdfInvoiceApi.generate(invoice);

                PdfApi.openFile(pdfFile);
              },
            ),
          ],
        ),
      ),
    ),
  );


}