import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  AppBarHome({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(30);

  final List<String> Brand = [
    'Samsung',
    'Apple',
    'Xiaomi',
    'Honor',
  ];

  final List<String> Price = [
    '\$0 - \$300',
    '\$300 - \$500',
    '\$500 - \$800',
    '\$800 - \$1000',
  ];

  final List<String> SizeProduct = [
    '4.5 to 5.5 inches',
    '5.5 to 6.5 inches',
  ];

  String? selectedValueBrand;
  String? selectedValuePrice;
  String? selectedValueSize;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: new EdgeInsets.only(left: 45, right: 17, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              Container(),
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/map.svg"),
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        "Zihuatanejo, Gro",
                        style: TextStyle(
                          color: Color.fromRGBO(1, 0, 53, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Material(
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset("assets/arrow.svg"),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Material(
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset("assets/filter.svg"),
                        ),
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            builder: (BuildContext context) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  color: Colors.white,
                                ),
                                height: 340,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(
                                        margin: new EdgeInsets.only(left: 42, right: 35, top: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 37,
                                                    width: 37,
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: Material(
                                                        color: Color.fromRGBO(1, 0, 53, 1),
                                                        child: InkWell(
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(11),
                                                            child: SvgPicture.asset("assets/close.svg"),
                                                          ),
                                                          onTap: () {
                                                            Navigator.pop(context);
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("Filter options", style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 37,
                                                  width: 86,
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),
                                                    child: Material(
                                                      color: Color.fromRGBO(255, 110, 78, 1),
                                                      child: InkWell(
                                                        key: _formKey,
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(2),
                                                          child: Center(
                                                            child: Text(
                                                              "Done",
                                                              style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 18,
                                                                fontWeight: FontWeight.w700,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          selectedValueSize = null;
                                                          selectedValuePrice = null;
                                                          selectedValueBrand = null;
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Form(
                                        key: _formKey,
                                        child: Padding(
                                          padding: new EdgeInsets.only(left: 42, right: 35),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Brand", style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                              )),
                                              const SizedBox(height: 4),
                                              DropdownButtonFormField2(
                                                decoration: InputDecoration(
                                                  //Add isDense true and zero Padding.
                                                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                                  isDense: true,
                                                  contentPadding: EdgeInsets.zero,
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  //Add more decoration as you want here
                                                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                                                ),
                                                isExpanded: true,
                                                hint: const Text(
                                                  'Select brand',
                                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                                                ),
                                                icon: SvgPicture.asset("assets/openitem.svg"),
                                                iconSize: 30,
                                                buttonHeight: 37,
                                                buttonPadding: const EdgeInsets.only(left: 15, right: 15),
                                                dropdownDecoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                items: Brand
                                                    .map((item) =>
                                                    DropdownMenuItem<String>(
                                                      value: item,
                                                      child: Text(
                                                        item,
                                                        style: const TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ))
                                                    .toList(),
                                                validator: (value) {
                                                  if (value == null) {
                                                    return 'Please select brand';
                                                  }
                                                },
                                                onChanged: (value) {
                                                  //Do something when changing the item if you want.
                                                },
                                                onSaved: (value) {
                                                  selectedValueBrand = value.toString();
                                                },
                                              ),
                                              SizedBox(
                                                height: 14,
                                              ),
                                              Text("Price", style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                              )),
                                              const SizedBox(height: 4),
                                              DropdownButtonFormField2(
                                                decoration: InputDecoration(
                                                  //Add isDense true and zero Padding.
                                                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                                  isDense: true,
                                                  contentPadding: EdgeInsets.zero,
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  //Add more decoration as you want here
                                                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                                                ),
                                                isExpanded: true,
                                                hint: const Text(
                                                  'Select price',
                                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                                                ),
                                                icon: SvgPicture.asset("assets/openitem.svg"),
                                                iconSize: 30,
                                                buttonHeight: 37,
                                                buttonPadding: const EdgeInsets.only(left: 15, right: 15),
                                                dropdownDecoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                items: Price
                                                    .map((item) =>
                                                    DropdownMenuItem<String>(
                                                      value: item,
                                                      child: Text(
                                                        item,
                                                        style: const TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ))
                                                    .toList(),
                                                validator: (value) {
                                                  if (value == null) {
                                                    return 'Please select price';
                                                  }
                                                },
                                                onChanged: (value) {
                                                  //Do something when changing the item if you want.
                                                },
                                                onSaved: (value) {
                                                  selectedValuePrice = value.toString();
                                                },
                                              ),
                                              SizedBox(
                                                height: 14,
                                              ),
                                              Text("Size", style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                              )),
                                              const SizedBox(height: 4),
                                              DropdownButtonFormField2(
                                                decoration: InputDecoration(
                                                  //Add isDense true and zero Padding.
                                                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                                  isDense: true,
                                                  contentPadding: EdgeInsets.zero,
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                  //Add more decoration as you want here
                                                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                                                ),
                                                isExpanded: true,
                                                hint: const Text(
                                                  'Select size',
                                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                                                ),
                                                icon: SvgPicture.asset("assets/openitem.svg"),
                                                iconSize: 30,
                                                buttonHeight: 37,
                                                buttonPadding: const EdgeInsets.only(left: 15, right: 15),
                                                dropdownDecoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                items: SizeProduct
                                                    .map((item) =>
                                                    DropdownMenuItem<String>(
                                                      value: item,
                                                      child: Text(
                                                        item,
                                                        style: const TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ))
                                                    .toList(),
                                                validator: (value) {
                                                  if (value == null) {
                                                    return 'Please select brand';
                                                  }
                                                },
                                                onChanged: (value) {
                                                  //Do something when changing the item if you want.
                                                },
                                                onSaved: (value) {
                                                  selectedValueSize = value.toString();
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
