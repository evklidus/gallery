import 'package:garo/models/painting_entity.dart';

class Data {
  final paintingList = [
    PaintingEntity(
        paintingUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/970px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
        author: 'Vincent van Gogh',
        date: '1889',
        name: 'Starry Night',
        description: ''
        // 'Vincent Van Gogh’s most popular painting, The Starry Night was created by Van Gogh at the asylum in Saint-Rémy, where he’d committed himself in 1889. Indeed, The Starry Night seems to reflect his turbulent state of mind at the time, as the night sky comes alive with swirls and orbs of frenetically applied brush marks springing from the yin and yang of his personal demons and awe of nature.',
        ),
    PaintingEntity(
        paintingUrl: 'https://media.timeout.com/images/103166731/1372/1029/image.jpg',
        author: 'Leonardo Da Vinci',
        date: '1503–1519',
        name: 'Mona Lisa',
        description: ''
        // "Painted between 1503 and 1517, Da Vinci’s alluring portrait has been dogged by two questions since the day it was made: Who’s the subject and why is she smiling? A number of theories for the former have been proffered over the years: That she’s the wife of the Florentine merchant Francesco di Bartolomeo del Giocondo (ergo, the work’s alternative title, La Gioconda); that she's Leonardo’s mother, Caterina, conjured from Leonardo's boyhood memories of her; and finally, that it's a self-portrait in drag. As for that famous smile, its enigmatic quality has driven people crazy for centuries. Whatever the reason, Mona Lisa’s look of preternatural calm comports with the idealized landscape behind her, which dissolves into the distance through Leonardo’s use of atmospheric perspective.",
        ),
    PaintingEntity(
        paintingUrl: 'https://media.timeout.com/images/103166750/1372/1029/image.jpg',
        author: 'Pablo Picasso',
        date: '1907',
        name: 'Les Demoiselles d’Avignon',
        description: ''
        // "The ur-canvas of 20th-century art, Les Demoiselles d’Avignon ushered in the modern era by decisively breaking with the representational tradition of Western painting, incorporating allusions to the African masks that Picasso had seen in Paris's ethnographic museum at the Palais du Trocadro. Its compositional DNA also includes El Greco’s The Vision of Saint John (1608–14), now hanging in the Metropolitan Museum of Art. The women being depicted are actually prostitutes in a brothel in the artist's native Barcelona.",
        ),
  ];
}
