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
    name: 'Odoo salesman',
    description:
        'This app connected with Odoo to make sales order, register payment, create new customer, send invoice by whats app return products, request product from main inventory and print receipt with thermal printer connected with Bluetooth.',
    image: 'images/projects/salesman.png',
    url:
        'https://play.google.com/store/apps/details?id=app.elblasy.sales&hl=en&gl=US',
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
    description:
        'This app is e-commerce app for company in Saudi Arabia. connected with Odoo',
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
      'Payment gateway hyperpay',
      'Firebase Auth',
    ],
  ),
  Project(
    name: 'DreamsRose',
    description:
        'This app for company in saudi arabia connected with Odoo to make sales order, register payment, create new customer, send invoice by whats app return products, request product from main inventory and print receipt with thermal printer connected with Bluetooth.',
    image: 'images/projects/dreamsrose.png',
    url:
        'https://play.google.com/store/apps/details?id=app.elblasy.dreamsrose&hl=en&gl=US',
    skills: [
      'Kotlin',
      'MVVM Architecture pattern',
      'Retrofit',
      'Kotlin Coroutines',
      'JSONRPC 2',
      'Traccar',
    ],
  ),
  Project(
    name: 'Properties',
    description:
        'This app for pay rent of my properties, review invoices and request maintenance. connected with Odoo',
    image: 'images/projects/properties.png',
    url: '',
    skills: ['Flutter', 'Dart', 'Provider', 'Firebase Auth'],
  ),
  Project(
    name: 'Panda Electrical',
    description: 'Ecommerce app for factory in Egypt. connected with Odoo',
    image: 'images/projects/panda_screen.png',
    url: '',
    skills: ['Flutter', 'Dart', 'Provider', 'Firebase Auth'],
  ),
  Project(
    name: 'WELL HEALTHY',
    description:
        'This app is subscription of meals app for company in Kuwait. connected with Odoo',
    image: 'images/projects/wellhealthy.png',
    url: '',
    skills: ['Flutter', 'Dart', 'Provider', 'Firebase Auth'],
  ),
  Project(
    name: 'ARTIQUEKW',
    description:
        'This app is e-commerce app for company in Kuwait. connected with Odoo',
    image: 'images/projects/artique.png',
    url:
        'https://play.google.com/store/apps/details?id=app.elblasy.artique&hl=en_IE&gl=US',
    skills: [
      'Kotlin',
      'MVVM Architecture pattern',
      'Retrofit',
      'Kotlin Coroutines',
      'XMLRPC (to connect with odoo api)',
      'ROOM (local database)',
      'RxJava',
      'Payment gateway hesabe',
      'Firebase Auth'
    ],
  ),
  Project(
    name: 'Alhussini Furniture',
    description:
        'This app is e-commerce app for company in Saudi Arabia. connected with Odoo',
    image: 'images/projects/alhussini.png',
    url: 'https://play.google.com/store/apps/details?id=app.elblasy.furtinure',
    skills: [
      'JAVA',
      'MVVM Architecture pattern',
      'Retrofit',
      'XMLRPC (to connect with odoo api)',
      'ROOM (local database)',
      'RxJava',
      'Payment gateway hyperpay',
    ],
  ),
  Project(
    name: 'EClinic',
    description:
        'This app is for electronic clinic , you select doctor and get appointment then you can chat with him with text or video call with jitsi',
    image: 'images/projects/eclinic.png',
    url: 'https://github.com/Elblassy/EClinic',
    skills: [
      'JAVA',
      'Retrofit',
      'RxJava',
      'jitsi video call',
      'SocketIo',
      'Firebase Auth',
      'Firebase push notification'
    ],
  ),
  Project(
    name: 'Live Home Automation',
    description:
        'This app is used for control of IOT devices of live home automation and alexa and google home enabled this app has on off, scheduler and auto cut of timer options there.',
    image: 'images/projects/livehomeautomation.png',
    url:
        'https://play.google.com/store/apps/details?id=com.livehomeautomation.app',
    skills: [
      'JAVA',
      'Retrofit',
      'RxJava',
      'CRON',
      'Graph',
      'stream videos',
      'jitsi video call'
    ],
  ),
];
