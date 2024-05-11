class DocumentSoc1{
  // ignore: non_constant_identifier_names
  final String? docSoc1_title;
  // ignore: non_constant_identifier_names
  final String? docSoc1_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  //final int? pageSci1_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  DocumentSoc1(this.docSoc1_title,this.docSoc1_url);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<DocumentSoc1> docSoc1_list = [
    DocumentSoc1(
        "Chapter 1 (Resource and Development)",
        "assets/class10_social/chapter1_resource_and_development.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc101.pdf",
    ),
    DocumentSoc1(
        "Chapter 2 (Forest and Wildlife)",
        "assets/class10_social/chapter2_forest_and_wildlife.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc102.pdf",
    ),
    DocumentSoc1(
        "Chapter 3 (Agriculture)",
        "assets/class10_social/chapter3_agriculture.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc103.pdf",
    ),
    DocumentSoc1(
        "Chapter 4 (Mineral and Resources)",
        "assets/class10_social/chapter4_mineral_and_resources.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc104.pdf",
    ),
    DocumentSoc1(
        "Chapter 5 (Manufacturing)",
        "assets/class10_social/chapter5_manufacturing.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc105.pdf",
    ),
    DocumentSoc1(
        "Chapter 6 (Lifelines of national economy)",
        "assets/class10_social/chapter6_lifelines_of_economy.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc106.pdf",
    ),
    DocumentSoc1(
        "Chapter 7 (Water resources)",
        "assets/class10_social/chapter7_water_resources.pdf",
        //"https://ncert.nic.in/textbook/pdf/jesc107.pdf",
    ),
  ];

}