import 'package:garo/models/painting_entity.dart';

class Data {
  final paintingList = [
    PaintingEntity(
      paintingUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/970px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
      author: 'Vincent van Gogh',
      date: '1889',
      name: 'Starry Night',
      description: 'Painting',
    ),
    PaintingEntity(
      paintingUrl: 'https://media.timeout.com/images/103166731/1372/1029/image.jpg',
      author: 'Leonardo Da Vinci',
      date: '1503–1519',
      name: 'Mona Lisa',
      description: 'Painting',
    ),
    PaintingEntity(
      paintingUrl: 'https://media.timeout.com/images/103166750/1372/1029/image.jpg',
      author: 'Pablo Picasso',
      date: '1907',
      name: 'Les Demoiselles d’Avignon',
      description: 'Painting',
    ),
  ];
}
