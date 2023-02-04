import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'invoice_clipper.dart';


Color defaultColor = Color(0XFF835454);
class Invoice extends StatefulWidget {
  @override
  _InvoiceState createState()=> _InvoiceState();
}
 class _InvoiceState extends State<Invoice>{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         elevation: 0,
         backgroundColor: Colors.transparent,
         leading:  BackButton(
           onPressed: (){},
         ),
         title: const Text("Invoice Overview"),
         actions: [
           IconButton(onPressed: (){},
               icon: const Icon(Icons.settings),
           ),
         ],
       ),
       body: ClipPath(
         clipper: FolderClipper(),
         child: Container(
           color: const Color(0XFFEA7EA),
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           padding: const EdgeInsets.only(top:24),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              _buildActionButton(context),
              const Expanded(child: SizedBox.shrink()),
              PhysicalModel(
                color: Colors.transparent,
                  elevation: 32,
                  shadowColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: _buildContent(context),
                  )
              ),
            ],
          ) ,
    ),
    ),
    )
   );
  }

 Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Invoice For",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                "Sonal Yadav",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: defaultColor,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Amount",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                "\$ 2000",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: defaultColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: InvoiceHeaderClipper() ,
          child: Container(
            color: Color(0XFFDCA5B3),
            height: 100,
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                const Icon(Icons.monetization_on,
                  color: Colors.black54,),
                Text("Invoice",style: Theme.of(context).textTheme.headline4,)
              ],
            ),
          ),
        ),
        ClipPath(
          clipper:InvoiceContentClipper(),
          child: Container(
            height: 100,
            color: Colors.white,
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.file_copy, color: defaultColor,),
                    Text("Invoice Details",style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: defaultColor,
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                _buildContentInfo(context),
                Container(
                  width: double.infinity,
                  height: .5,
                  color:Colors.black38 ,
                  margin: EdgeInsets.symmetric(vertical: 12),
                ),
                _buildContentBody(context),
                Container(
                  width: double.infinity,
                  height: .5,
                  color:Colors.black38 ,
                  margin: EdgeInsets.symmetric(vertical: 12),
                ),
                _buildContentSummary(context),
              ],
            ),
          ),
        )
      ],
    );
  }
  Widget _buildContentInfo(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: [
              Text("Clients Email",
                style: Theme.of(context).textTheme.caption,
              ),
              SizedBox(height: 4,),
              Text("example@gmail.com",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: defaultColor,
              ),
              ),
            ],
          ),
        ),
        Container(
          width: .5,
          color:  Colors.black38,
          height: 32,

        ),

        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children: [
                Text("Invoice Date",
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 4,),
                Text("",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: defaultColor,
                ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContentBody(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Items",
              style: Theme.of(context).textTheme.caption,
            ),
            Container(
              width: 150,
              child: Text(
                "Price",
                style: Theme.of(context).textTheme.caption,
              ),
            )
          ],
        ),
        Row(
          children: [
            Text("heloo",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Container(
                width: 150,
                child: Text(
                  "1200",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: defaultColor,
                  ),
                )
            ),
          ],
        ),
        Row(
          children: [
            Text("hello",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black54),
            ),
            Container(
                width: 150,
                child: Text(
                  "1200",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: defaultColor,
                  ),
                )
            ),
          ],
        )
      ],
    );
  }
  Widget _buildContentSummary(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sub Total",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black54),
            ),
            Container(
                width: 100,
                child: Text(
                  "2200",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: defaultColor,
                  ),
                )
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(text: "Discount",children:[
    TextSpan(
      text: "25%",
      style: Theme.of(context).
      textTheme.bodyText1!.copyWith(color: Colors.blueAccent),
    ),
   ] ),

    style: Theme.of(context).
    textTheme.bodyText1!.
    copyWith(
    color: Colors.black54),


            ),
            Text("discount",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black54),
            ),
            Container(
                width: 100,
                child: Text(
                  "200",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: defaultColor,
                  ),
                )
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total amount",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black54),
            ),
            Container(
                width: 100,
                child: Text(
                  "2000",
                  style: Theme.of(context).
                  textTheme.bodyText1!.
    copyWith(color: Colors.blueAccent,fontSize: 18),
                  ),
                )
          ],
        )
      ],
    );
  }
  Widget _buildActionButton(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: TextButton.icon(onPressed: (){},
            icon:const Icon(Icons.edit,
              color: Colors.purple,
            ),
            label:  Text("Edit",style: TextStyle(color: defaultColor),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.orangeAccent,
            child: TextButton(onPressed: (){},
              child: Text(
                "Send Invoice",style:
              TextStyle(color: defaultColor
              ),

              ),

            ),
          ),
        ),

      ],
    );
  }

}

