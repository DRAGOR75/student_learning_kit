class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}


List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Maths Notes',
    content:


    'Quadratic Equation: ax2+bx+c=0\n',
    modifiedTime: DateTime(2022,1,1,34,5),
  ),
  Note(
    id: 1,
    title: 'physics Notes',
    content:
    'Gauss’s Law states that the total electric flux out of a closed surface is directly proportional to the enclosed electric charge',
    modifiedTime: DateTime(2022,1,1,34,5),
  ),
  Note(
    id: 2,
    title: 'Books to Read',
    content:
    '1. To Kill a Mockingbird\n2. 1984\n3. The Great Gatsby\n4. The Catcher in the Rye',
    modifiedTime: DateTime(2023,3,1,19,5),
  ),
  Note(
    id: 3,
    title: 'social science notes',
    content: 'The Indian Mutiny, also known as the Indian Rebellion of 1857 or the First War of Independence, was a significant, but ultimately unsuccessful, uprising against British rule in India.',
    modifiedTime: DateTime(2023,1,4,16,53),
  ),

];