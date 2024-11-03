import 'package:astro_app_assesment/models/astrologer_modal.dart';

class AstrologerService {
  List<Astrologer> getAstrologers() {
    return [
      Astrologer(
          name: "Astro A",
          specialization: "Astrology",
          rating: 4.0,
          imagePath: 'lib/assests/yogi1.jpg',
          category: 'Finance'),
      Astrologer(
          name: "Astro B",
          specialization: "Vastu",
          rating: 4.5,
          imagePath: 'lib/assests/yogi2.jpg',
          category: 'Education'),
      Astrologer(
          name: "Astro C",
          specialization: "Numerology",
          rating: 5.0,
          imagePath: 'lib/assests/yogi3.jpg',
          category: 'Marriage'),
      Astrologer(
          name: "Astro D",
          specialization: "Card Reader",
          rating: 4.0,
          imagePath: 'lib/assests/yogi1.jpg',
          category: 'Job'),
      Astrologer(
          name: "Astro E",
          specialization: "Palmlogy",
          rating: 4.5,
          imagePath: 'lib/assests/yogi3.jpg',
          category: 'Health'),
    ];
  }
}
