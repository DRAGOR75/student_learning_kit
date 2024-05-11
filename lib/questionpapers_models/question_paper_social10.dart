class SocialQp{
  // ignore: non_constant_identifier_names
  final String? socialQp_title;
  // ignore: non_constant_identifier_names
  final String? socialQp_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  //final int? pagemathQp_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  SocialQp(this.socialQp_title,this.socialQp_url);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<SocialQp> socialQp_list = [
    SocialQp(
      "Question Paper 2019",
      "assets/social_science/social_qp_2019.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc101.pdf",

    ),
    SocialQp(
      "Question Paper 2020",
      "assets/social_science/social_qp_2020.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc102.pdf",

    ),
    SocialQp(
      "Question Paper 2021",
      "assets/social_science/social_qp_2021.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc103.pdf",

    ),
    SocialQp(
      "Question Paper 2022",
      "assets/social_science/social_qp_2022.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc104.pdf",

    ),
    SocialQp(
      "Question Paper 2023",
      "assets/social_science/social_qp_2023.pdf",
      //"https://ncert.nic.in/textbook/pdf/jesc105.pdf",

    ),
  ];

}