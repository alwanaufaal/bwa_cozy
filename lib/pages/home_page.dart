import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              // Note: Title/Header
              Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text('Explore Now',
                      style: blackTextStyle.copyWith(fontSize: 24))),
              SizedBox(height: 2),
              Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text('Mencari kosan yang cozy',
                      style: greyTextStyle.copyWith(fontSize: 16))),
              SizedBox(height: 30),
              // Note: Popular Cities
              Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text('Popular Cities',
                      style: regularTextStyle.copyWith(fontSize: 16))),
              SizedBox(height: 16),
              Container(
                  height: 150,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    SizedBox(width: 24),
                    CityCard(City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                        isPopular: false)),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true)),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png',
                        isPopular: false)),
                    SizedBox(width: 24)
                  ])),
              // Note: Recommended Space
              SizedBox(height: 30),
              Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text('Recommended Space',
                      style: regularTextStyle.copyWith(fontSize: 16))),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    SpaceCard(Space(
                        id: 1,
                        name: 'Kuretakeso Hott',
                        imageUrl: 'assets/space1.png',
                        price: 52,
                        city: 'Bandung',
                        country: 'Indonesia',
                        rating: 4)),
                    SizedBox(height: 30),
                    SpaceCard(Space(
                        id: 2,
                        name: 'Roemah Nenek',
                        imageUrl: 'assets/space2.png',
                        price: 11,
                        city: 'Bogor',
                        country: 'Indonesia',
                        rating: 5)),
                    SizedBox(height: 30),
                    SpaceCard(Space(
                        id: 3,
                        name: 'Darrling How',
                        imageUrl: 'assets/space3.png',
                        price: 20,
                        city: 'Padang',
                        country: 'Indonesia',
                        rating: 3)),
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
