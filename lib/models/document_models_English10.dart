class DocumentEng1 {
  // ignore: non_constant_identifier_names
  final String? docEng1_title;
  // ignore: non_constant_identifier_names
  final String? docEng1_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? pageEng1_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  DocumentEng1(this.docEng1_title,this.docEng1_url, this.pageEng1_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<DocumentEng1> docEng1_list = [
    DocumentEng1(
        "Chapter 1 (A Letter To God)",
        "https://ncert.nic.in/textbook/pdf/jeff101.pdf",
        10
    ),
    DocumentEng1(
        "Chapter 2 (Nelson Mandela Long Walk To Freedom)",
        "https://ncert.nic.in/textbook/pdf/jeff102.pdf",
        10
    ),
    DocumentEng1(
        "Chapter 3 (Two Stories About Flying)",
        "https://ncert.nic.in/textbook/pdf/jeff103.pdf",
        10
    ),
    DocumentEng1(
        "Chapter 4 (From The Diary Of Anne Frank)",
        "https://ncert.nic.in/textbook/pdf/jeff104.pdf",
        10
    ),
    DocumentEng1(
        "Chapter 5 (Glimpses Of India)",
        "https://ncert.nic.in/textbook/pdf/jeff105.pdf",
        10
    ),
    DocumentEng1(
        "Chapter 6 (Mijbil The Otter)",
        "https://ncert.nic.in/textbook/pdf/jeff106.pdf",
        10
    ),
    DocumentEng1(
        "Chapter 7 (Madam Rides The Bus)",
        "https://ncert.nic.in/textbook/pdf/jeff107.pdf",
        10
    ),
    DocumentEng1(
        "Chapter 8 (The Sermon at Benares)",
        "https://ncert.nic.in/textbook/pdf/jeff108.pdf",
        10
    ),
    DocumentEng1(
        "Chapter 9 (The Proposal)",
        "https://ncert.nic.in/textbook/pdf/jeff109.pdf",
        10
    ),
  ];

}