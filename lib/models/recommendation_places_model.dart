class RecommendationPlacesModel {
  final String image;
  final double rating;
  final String location;

  RecommendationPlacesModel(
      {required this.image, required this.rating, required this.location});
}

List<RecommendationPlacesModel> recommendedPlaces = [
  RecommendationPlacesModel(
      image: "assets/places/place1.jpg",
      rating: 4.4,
      location: "St. Regis Bora Bora"),
  RecommendationPlacesModel(
      image: "assets/places/place2.jpg",
      rating: 4.4,
      location: "St. Regis Bora Bora"),
  RecommendationPlacesModel(
      image: "assets/places/place3.jpg",
      rating: 4.4,
      location: "St. Regis Bora Bora"),
  RecommendationPlacesModel(
      image: "assets/places/place4.jpg",
      rating: 4.4,
      location: "St. Regis Bora Bora"),
  RecommendationPlacesModel(
      image: "assets/places/place5.jpg",
      rating: 4.4,
      location: "St. Regis Bora Bora"),
  RecommendationPlacesModel(
      image: "assets/places/place6.jpg",
      rating: 4.4,
      location: "St. Regis Bora Bora"),
  RecommendationPlacesModel(
      image: "assets/places/place7.jpg",
      rating: 4.4,
      location: "St. Regis Bora Bora"),
];
