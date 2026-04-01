class DemoProduct {
  final String title;
  final String craft;
  final String origin;
  final String price;
  final String story;
  final String imageAsset;
  final bool verified;

  const DemoProduct({
    required this.title,
    required this.craft,
    required this.origin,
    required this.price,
    required this.story,
    required this.imageAsset,
    required this.verified,
  });
}

const demoProducts = <DemoProduct>[
  DemoProduct(
    title: "Madhubani Story Frame",
    craft: "Madhubani Art",
    origin: "Bihar, India",
    price: "₹1,499",
    story:
        "Hand-painted with traditional motifs that carry stories of nature, festivals, and heritage.",
    imageAsset: "assets/images/madhubani_frame.jpg",
    verified: true,
  ),
  DemoProduct(
    title: "Mumbai-made Kolhapuri Flats",
    craft: "Kolhapuri Footwear",
    origin: "Mumbai, Maharashtra",
    price: "₹1,299",
    story:
        "A handmade, everyday-wear reinterpretation of a classic craft, made for comfort and style.",
    imageAsset: "assets/images/kolhapuri_flats.jpg",
    verified: true,
  ),
  DemoProduct(
    title: "Warli Glow Lamp",
    craft: "Warli Art",
    origin: "Maharashtra, India",
    price: "₹899",
    story:
        "A modern décor piece with tribal-inspired patterns and warm handcrafted character.",
    imageAsset: "assets/images/warli_lamp.jpg",
    verified: true,
  ),
  DemoProduct(
    title: "Kalamkari Drape",
    craft: "Kalamkari Textile",
    origin: "Andhra Pradesh, India",
    price: "₹2,099",
    story:
        "A rich textile with natural tones and story-led patterns, perfect for gifting and styling.",
    imageAsset: "assets/images/kalamkari_scarf.jpg",
    verified: true,
  ),
];

const artisanTrends = [
  "Handmade festive décor demand is rising in metro cities.",
  "Minimal ethnic products are trending among young buyers.",
  "Custom gifting orders are growing for weddings and events.",
  "Earth-tone crafts perform better in premium categories.",
];

const storyCards = [
  "This is not just a product — it is a craft passed down through generations.",
  "Each piece carries regional identity, artisan skill, and cultural meaning.",
  "Story-first shopping increases trust and emotional value.",
];