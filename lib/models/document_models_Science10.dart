class DocumentSci1{
  // ignore: non_constant_identifier_names
  final String? docSci1_title;
  // ignore: non_constant_identifier_names
  final String? docSci1_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? pageSci1_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  DocumentSci1(this.docSci1_title,this.docSci1_url,this.pageSci1_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<DocumentSci1> docSci1_list = [
    DocumentSci1(
        "Chapter 1 (Chemical Reactions And Equations)",
        "assets/class10_science/chapter1_chemical_reactions.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc101.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 2 (Acids,bases and salts)",
        "assets/class10_science/chapter2_acid_bases_salts.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc102.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 3 (Metals and Non-metals)",
        "assets/class10_sciencechapter3_metal_nonmetal.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc103.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 4 (Carbon and its compounds)",
        "assets/class10_science/chapter4_carbon.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc104.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 5 (Life Processes)",
        "assets/class10_science/chapter5_life_processes.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc105.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 6 (Control and coordination)",
        "assets/class10_science/chapter6_control.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc106.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 7 (How do organisms reproduce?)",
        "assets/class10_science/chapter7_reproduction.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc107.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 8 (Heredity)",
        "assets/class10_science/chapter8_heredity.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc108.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 9 (Light- Reflections and Refractions)",
        "assets/class10_science/chapter9_light.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc109.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 10 (Human Eye)",
        "assets/class10_science/chapter10_eye.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc110.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 11 (Electricity)",
        "assets/class10_science/chapter11_electricity.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc111.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 12 (Magnetic effects and electric currents)",
        "assets/class10_science/chapter12_magnet.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc112.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 13 (Our Environment)",
        "assets/class10_science/chapter13_environment.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc113.pdf",
        10
    ),
  ];

}