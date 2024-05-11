class Document {
  // ignore: non_constant_identifier_names
  final String? doc_title;
  // ignore: non_constant_identifier_names
  final String? doc_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? page_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  Document(this.doc_title,this.doc_url,this.page_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<Document> doc_list = [
    Document(
        "Chapter 1 (Number System)",
        "assets/class9_maths/chapter1_number_system.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh101.pdf",
        10
    ),
    Document(
        "Chapter 2 (Polynomials)",
        "assets/class9_maths/chapter2_polynomials.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh102.pdf",
        10
    ),
    Document(
        "Chapter 3 (Coordinate Geometry)",
        "assets/class9_maths/chapter3_coordinate_geometry.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh103.pdf",
        10
    ),
    Document(
        "Chapter 4 (Linear Equations)",
        "assets/class9_maths/chapter4_linear_equations.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh104.pdf",
        10
    ),
    Document(
        "Chapter 5 (Euclid's Geometry)",
        "assets/class9_maths/chapter5_euclid_geometry.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh105.pdf",
        10
    ),
    Document(
        "Chapter 6 (Lines and angles)",
        "assets/class9_maths/chapter6_lines_and_angles.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh106.pdf",
        10
    ),
    Document(
        "Chapter 7 (Triangles)",
        "assets/class9_maths/chapter7_triangles.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh107.pdf",
        10
    ),
    Document(
        "Chapter 8 (Quadrilaterals)",
        "assets/class9_maths/chapter8_quadrilaterals.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh108.pdf",
        10
    ),
    Document(
        "Chapter 9 (Circles)",
        "assets/class9_maths/chapter9_circles.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh109.pdf",
        10
    ),
    Document(
        "Chapter 10 (Heron's Formula)",
        "assets/class9_maths/chapter10_heron_formula.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh110.pdf",
        10
    ),
    Document(
        "Chapter 11 (Surface area and volume)",
        "assets/class9_maths/chapter11_surface_area_and_volume.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh111.pdf",
        10
    ),
    Document(
        "Chapter 12 (Statistics)",
        "assets/class9_maths/chapter12_statistics.pdf",
        //"https://ncert.nic.in/textbook/pdf/iemh112.pdf",
        10
    ),
  ];
  
}