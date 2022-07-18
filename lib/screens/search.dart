import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_hunt/custom/BorderBox.dart';
import 'package:house_hunt/utils/constants.dart';
import 'package:house_hunt/utils/widget_functions.dart';
import 'package:house_hunt/sample_data.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpace(padding),
            Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: COLOR_WHITE,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: COLOR_GREY.withAlpha(40), width: 2)),
                    child: Icon(
                      Icons.menu,
                      color: COLOR_BLACK,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: Text(
                      "HOUSE HUNTERS",
                      style: themeData.textTheme.headline1,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: COLOR_WHITE,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: COLOR_GREY.withAlpha(40), width: 2)),
                    child: Icon(
                      Icons.settings,
                      color: COLOR_BLACK,
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpace(padding),
            Padding(
              padding: sidePadding,
              child: Text(
                "City",
                style: themeData.textTheme.bodyText2,
              ),
            ),
            addVerticalSpace(10),
            Padding(
              padding: sidePadding,
              child: Text(
                "Lilongwe",
                style: themeData.textTheme.headline1,
              ),
            ),
            Padding(
              padding: sidePadding,
              child: Divider(
                height: padding,
                color: COLOR_GREY,
              ),
            ),
            addVerticalSpace(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  "<MK 200000",
                  "For Sale",
                  "3-4 Beds",
                  ">3 beds",
                  "bedsitter"
                ].map((filter) => ChoiceOption(text: filter)).toList(),
              ),
            ),
            addVerticalSpace(10),
            Expanded(
              child: Padding(
                padding: sidePadding,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: RE_DATA.length,
                    itemBuilder: (context, index) {
                      return RealEstateItem(itemData: RE_DATA[index]);
                    }),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;
  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: COLOR_GREY.withAlpha(25)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      margin: const EdgeInsets.only(left: 25),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({Key? key, @required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image(
                  image: NetworkImage(
                      'https://scontent.fblz1-1.fna.fbcdn.net/v/t39.30808-6/293213245_8635871219764031_373165267636359748_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8631f5&_nc_eui2=AeFHUsZ5pld0lAo12NDl-DvbMNULJ9NIg2gw1Qsn00iDaFIKOsMb2iK1hwWYsjDhOHW8zkVypHT4lUziilcbwWXO&_nc_ohc=GUzKyuHZTOYAX9tp36B&_nc_oc=AQkyh2yiqcVDdcXO4BFBFfySBoAmi8JudqRVBcwxmtKmsYO0e7dBSNcpUobZETY58po&_nc_pt=5&_nc_zt=23&_nc_ht=scontent.fblz1-1.fna&oh=00_AT9SyMHOz1YJuZXEyM_LKQmPGALFXjM5HPBz9Fu21XlqOA&oe=62DA15DB'),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: COLOR_WHITE,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: COLOR_GREY.withAlpha(40), width: 2)),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
