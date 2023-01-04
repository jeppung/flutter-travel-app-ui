import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui/models/recommendation_places_model.dart';
import 'package:ionicons/ionicons.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          recommendedPlaces[index].image,
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            recommendedPlaces[index].location,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.star,
                            size: 14,
                            color: Colors.yellow.shade700,
                          ),
                          Text(recommendedPlaces[index].rating.toString(),
                              style: TextStyle(fontSize: 12))
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Ionicons.location,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          const Text(
                            "French Polynesia",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.only(right: 10));
        },
        itemCount: recommendedPlaces.length,
      ),
    );
  }
}
