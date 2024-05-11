class DocumentOne {
  // ignore: non_constant_identifier_names
  final String? docone_title;
  // ignore: non_constant_identifier_names
  final String? docone_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? pageone_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  DocumentOne(this.docone_title,this.docone_url, this.pageone_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<DocumentOne> docone_list = [
    DocumentOne(
        "Chapter 1 (Real Numbers)",
        "assets/class10_maths/chapter1_real_numbers.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh101.pdf",
        10
    ),
    DocumentOne(
        "Chapter 2 (Polynomials)",
        "assets/class10_maths/chapter2_polynomials.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh102.pdf",
        10
    ),
    DocumentOne(
        "Chapter 3 (Pair of linear equation in two variables)",
        "assets/class10_maths/chapter3_linear_eq_two.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh103.pdf",
        10
    ),
    DocumentOne(
        "Chapter 4 (Quadratic Equations)",
        "assets/class10_maths/chapter4_quadratic_equations.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh104.pdf",
        10
    ),
    DocumentOne(
        "Chapter 5 (Arithmetic Progression)",
        "assets/class10_maths/chapter5_arithmetic_progression.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh105.pdf",
        10
    ),
    DocumentOne(
        "Chapter 6 (Triangles)",
        "assets/class10_maths/chapter6_triangles.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh106.pdf",
        10
    ),
    DocumentOne(
        "Chapter 7 (Coordinate Geometry)",
        "assets/class10_maths/chapter7_coordinate_geometry.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh107.pdf",
        10
    ),
    DocumentOne(
        "Chapter 8 (Trigonometry)",
        "assets/class10_maths/chapter8_trigonometry.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh108.pdf",
        10
    ),
    DocumentOne(
        "Chapter 9 (Applications of Trigonometry)",
        "assets/class10_maths/chapter9_applications_trigo.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh109.pdf",
        10
    ),
    DocumentOne(
        "Chapter 10 (Circles)",
        "assets/class10_maths/chapter10_circles.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh110.pdf",
        10
    ),
    DocumentOne(
        "Chapter 11 (Area related to circles)",
        "assets/class10_maths/chapter11_area_related_circle.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh111.pdf",
        10
    ),
    DocumentOne(
        "Chapter 12 (Surface Area and volume)",
        "assets/class10_maths/chapter12_surface_area.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh112.pdf",
        10
    ),
    DocumentOne(
        "Chapter 13 (Statistics)",
        "assets/class10_maths/chapter13_statistics.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh113.pdf",
        10
    ),
    DocumentOne(
        "Chapter 14 (Probability)",
        "assets/class10_maths/chapter14_probability.pdf",
        //"https://ncert.nic.in/textbook/pdf/jemh114.pdf",
        10
    ),
  ];

}