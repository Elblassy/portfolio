class Project {
  final String? name;
  final String? description;
  final String? image;
  final String? url;
  final List<String>? skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'DREAMSROSE',
    description:
        'This app for company in Saudi Arabia is connected with Odoo to make sales order, register payment, create new customer, send invoice by whats app return products, request product from main inventory and print receipt with thermal printer connected with Bluetooth.',
    image: 'images/projects/dreamsrose.png',
    url: 'https://play.google.com/store/apps/details?id=app.elblasy.dreamsrose&hl=en_IE&gl=US',
    skills: [
      'Kotlin',
      'MVVM Architecture pattern',
      'Retrofit',
      'Kotlin Coroutines',
      'JSONRPC 2',
      'Traccar'
    ],
  ),
  Project(
    name: 'Animals Voice',
    description: 'This app is e-commerce app for company in Saudi Arabia. connected with Odoo',
    image: 'images/projects/animalsvoice.png',
    url:
        'https://play.google.com/store/apps/details?id=app.elblasy.animalvoice&hl=en_IE&gl=US',
    skills: [
      'Kotlin'
      'MVVM Architecture pattern',
      'Retrofit',
      'Kotlin Coroutines',
      'ROOM (local database)',
      'RxJava',
      'Payment gateway hyperpay'
    ],

  ),
  Project(
    name: 'WELL HEALTHY',
    description:
        'This app is subscription of meals app for company in Kuwait. connected with Odoo',
    image: 'images/projects/wellhealthy.png',
    url: '',
    skills: [
      'Flutter',
      'Dart',
    ],
  ),
  Project(
    name: 'ARTIQUEKW',
    description:
        'This app is e-commerce app for company in Kuwait. connected with Odoo',
    image: 'images/projects/artique.png',
    url: 'https://play.google.com/store/apps/details?id=app.elblasy.artique&hl=en_IE&gl=US',
    skills: [
      'Kotlin',
      'MVVM Architecture pattern',
      'Retrofit',
      'Kotlin Coroutines',
      'XMLRPC (to connect with odoo api)',
      'ROOM (local database)',
      'RxJava',
      'Payment gateway hesabe',
    ],
  ),
];
