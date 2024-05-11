class DocumentEng {
  // ignore: non_constant_identifier_names
  final String? docEng_title;
  // ignore: non_constant_identifier_names
  final String? docEng_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? pageEng_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  DocumentEng(this.docEng_title,this.docEng_url, this.pageEng_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<DocumentEng> docEng_list = [
    DocumentEng(
        "Chapter 1 (The Fun They Had)",
        "https://ncert.nic.in/textbook/pdf/iebe101.pdf",
        10
    ),
    DocumentEng(
        "Chapter 2 (The Sound Of Music)",
        "https://ncert.nic.in/textbook/pdf/iebe102.pdf",
        10
    ),
    DocumentEng(
        "Chapter 3 (The Little Girl)",
        "https://ncert.nic.in/textbook/pdf/iebe103.pdf",
        10
    ),
    DocumentEng(
        "Chapter 4 (A Truly Beautiful Mind)",
        "https://ncert.nic.in/textbook/pdf/iebe104.pdf",
        10
    ),
    DocumentEng(
        "Chapter 5 (The Snake And The Mirror)",
        "https://ncert.nic.in/textbook/pdf/iebe105.pdf",
        10
    ),
    DocumentEng(
        "Chapter 6 (My Childhood)",
        "https://ncert.nic.in/textbook/pdf/iebe106.pdf",
        10
    ),
    DocumentEng(
        "Chapter 7 (Reach For The Top)",
        "https://ncert.nic.in/textbook/pdf/iebe107.pdf",
        10
    ),
    DocumentEng(
        "Chapter 8 (Kathmandu)",
        "https://ncert.nic.in/textbook/pdf/iebe108.pdf",
        10
    ),
    DocumentEng(
        "Chapter 9 (If I Were You)",
        "https://ncert.nic.in/textbook/pdf/iebe109.pdf",
        10
    ),
  ];

}