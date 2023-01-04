import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui/widgets/custom_icon_button.dart';
import 'package:flutter_travel_app_ui/widgets/location_card.dart';
import 'package:flutter_travel_app_ui/widgets/nearby_places.dart';
import 'package:flutter_travel_app_ui/widgets/recommended_places.dart';
import 'package:flutter_travel_app_ui/widgets/tourist_places.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning"),
            Text(
              "Joshua Pulung",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: const [
          CustomIconButton(icon: Icon(Ionicons.notifications_outline)),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 12),
            child: CustomIconButton(icon: Icon(Ionicons.search_outline)),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(14),
        children: [
          // Location card
          const LocationCard(),
          const SizedBox(height: 15),

          const TouristPlaces(),
          const SizedBox(height: 10),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommendation",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: const Text("View All"))
            ],
          ),

          const SizedBox(height: 10),
          const RecommendedPlaces(),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby From You",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: const Text("View All"))
            ],
          ),

          const SizedBox(height: 10),
          const NearbyPlaces()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.bookmark_outline), label: "Bookmark"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.ticket_outline), label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
