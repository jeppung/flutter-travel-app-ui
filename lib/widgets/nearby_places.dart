import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui/widgets/distance.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.infinity,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/places/place6.jpg",
                          width: 130,
                          height: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Sea of Peace",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const Text("Portic Team"),
                            const SizedBox(height: 10),
                            //Distance
                            const Distance(),
                            const Spacer(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 14,
                                  color: Colors.yellow.shade700,
                                ),
                                const Text(
                                  "4.4",
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Spacer(),
                                RichText(
                                  text: TextSpan(
                                    text: "\$22",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context).primaryColor),
                                    children: const [
                                      TextSpan(
                                        text: "/person",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
