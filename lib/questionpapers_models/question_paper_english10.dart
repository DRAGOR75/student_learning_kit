class EnglishQp{
  // ignore: non_constant_identifier_names
  final String? englishQp_title;
  // ignore: non_constant_identifier_names
  final String? englishQp_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  //final int? pagemathQp_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  EnglishQp(this.englishQp_title,this.englishQp_url);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<EnglishQp> englishQp_list = [
    EnglishQp(
      "Question Paper 2019",
      "assets/english/english_qp_2019.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc101.pdf",

    ),
    EnglishQp(
      "Question Paper 2020",
      "assets/english/english_qp_2020.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc102.pdf",

    ),
    EnglishQp(
      "Question Paper 2021",
      "assets/english/english_qp_2021.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc103.pdf",

    ),
    EnglishQp(
      "Question Paper 2022",
      "assets/english/english_qp_2022.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc104.pdf",

    ),
    EnglishQp(
      "Question Paper 2023",
      "assets/english/english_qp_2023.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc105.pdf",

    ),
  ];

}