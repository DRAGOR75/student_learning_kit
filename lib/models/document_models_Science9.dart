class DocumentSci {
  // ignore: non_constant_identifier_names
  final String? docSci_title;
  // ignore: non_constant_identifier_names
  final String? docSci_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? pageSci_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  DocumentSci(this.docSci_title,this.docSci_url,this.pageSci_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<DocumentSci> docSci_list = [
    DocumentSci(
        "Chapter 1 (Matter in our surrounding)",
        "assets/class9_science/chapter1_matter_in_our_surrounding.pdf",
        //https://ncert.nic.in/textbook/pdf/iesc101.pdf",
        10
    ),
    DocumentSci(
        "Chapter 2 (Is matter around us pure?)",
        "assets/class9_science/chapter2_is_matter_pure.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc102.pdf",
        10
    ),
    DocumentSci(
        "Chapter 3 (Atoms and Molecules)",
        "assets/class9_science/chapter3_atoms_and_molecules.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc103.pdf",
        10
    ),
    DocumentSci(
        "Chapter 4 (Structure of Atom)",
        "assets/class9_science/chapter4_structure_of_atom.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc104.pdf",
        10
    ),
    DocumentSci(
        "Chapter 5 (The fundamental unit of life)",
        "assets/class9_science/chapter5_fundamental_unit_cell.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc105.pdf",
        10
    ),
    DocumentSci(
        "Chapter 6 (Tissues)",
        "assets/class9_science/chapter6_tissues.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc106.pdf",
        10
    ),
    DocumentSci(
        "Chapter 7 (Motion)",
        "assets/class9_science/chapter7_motion.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc107.pdf",
        10
    ),
    DocumentSci(
        "Chapter 8 (Force and law of motion)",
        "assets/class9_science/chapter8_force.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc108.pdf",
        10
    ),
    DocumentSci(
        "Chapter 9 (Gravitation)",
        "assets/class9_science/chapter9_gravitation.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc109.pdf",
        10
    ),
    DocumentSci(
        "Chapter 10 (Work and Energy)",
        "assets/class9_science/chapter10_work_and_energy.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc110.pdf",
        10
    ),
    DocumentSci(
        "Chapter 11 (Sound)",
        "assets/class9_science/chapter11_sound.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc111.pdf",
        10
    ),
    DocumentSci(
        "Chapter 12 (Improvement in food resources)",
        "assets/class9_science/chapter12_food_resources.pdf",
        //"https://ncert.nic.in/textbook/pdf/iesc112.pdf",
        10
    ),
  ];

}