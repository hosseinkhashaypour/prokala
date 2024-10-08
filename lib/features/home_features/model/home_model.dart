class HomeModel {
  TopBanner? topBanner;
  List<Sliders>? sliders;
  List<Brands>? brands;
  List<Amazing>? amazing;
  List<Random>? random;
  List<CategoryBanner>? categoryBanner;
  List<ColOne>? colOne;
  List<ColTwo>? colTwo;
  List<ColThree>? colThree;
  List<ColFour>? colFour;
  List<ColFive>? colFive;
  List<TwoBannners>? twoBanner;

  String? colOneName;
  String? colOneId;

  String? colTwoName;
  String? colTwoId;

  String? colThreeName;
  String? colThreeId;

  String? colFourName;
  String? colFourId;

  String? colFiveName;
  String? colFiveId;

  HomeModel.fromJson(dynamic json) {
    topBanner = TopBanner.fromJson(json['top_banner']);
    sliders = [];
    json['sliders'].forEach(
      (value) {
        sliders?.add(Sliders.fromJson(value));
      },
    );
    if (json['brands'] != null) {
      brands = [];
      json['brands'].forEach(
        (value) {
          brands?.add(Brands.fromJson(value));
        },
      );
    }
    if (json['amazings'] != null) {
      amazing = [];
      json['amazings'].forEach((value) {
        amazing?.add(Amazing.fromJson(value));
      });
    }
    if(json['random'] != null){
      random = [];
      json['random'].forEach((value){
        random?.add(Random.fromJson(value));
      });
    }
    if(json['category_banner'] != null){
      categoryBanner = [];
      json['category_banner'].forEach((value){
        categoryBanner?.add(CategoryBanner.fromJson(value));
      });
    }
    if(json['col_one'] != null){
      colOne = [];
      json['col_one'].forEach((value){
        colOne?.add(ColOne.fromJson(value));
      });
    }
    if(json['col_two'] != null){
      colTwo = [];
      json['col_two'].forEach((value){
        colTwo?.add(ColTwo.fromJson(value));
      });
    }
    if(json['col_three'] != null){
      colThree = [];
      json['col_three'].forEach((value){
        colThree?.add(ColThree.fromJson(value));
      });
    }
    if(json['col_four'] != null){
      colFour = [];
      json['col_four'].forEach((value){
        colFour?.add(ColFour.fromJson(value));
      });
    }
    if(json['col_five'] != null){
      colFive = [];
      json['col_five'].forEach((value){
        colFive?.add(ColFive.fromJson(value));
      });
    }
    if(json['banner_two_column'] != null){
      twoBanner = [];
      json['banner_two_column'].forEach((value){
        twoBanner?.add(TwoBannners.fromJson(value));
      });
    }

    colOneId = json['col_one_id'].toString() ?? '0';
    colTwoId = json['col_two_id'].toString() ?? '0';
    colThreeId = json['col_three_id'].toString() ?? '0';
    colFourId = json['col_four_id'].toString() ?? '0';
    colFiveId = json['col_five_id'].toString() ?? '0';
    colOneName = json['col_one_name'];
    colTwoName = json['col_two_name'];
    colThreeName = json['col_three_name'];
    colFourName = json['col_four_name'];
    colFiveName = json['col_five_name'];
  }
}


class TwoBannners extends CategoryBanner{
  TwoBannners.fromJson(super.json) : super.fromJson();
  
}



class Amazing {
  int? id;
  String? title;
  String? image;
  String? defaultPrice;
  int? percent;
  int? percentPrice;
  String? endTime;

  Amazing({
    required this.id,
    required this.title,
    required this.image,
    required this.defaultPrice,
    required this.percent,
    required this.percentPrice,
    required this.endTime,
  });

  Amazing.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    defaultPrice = json['default_price'];
    percent = json['percent'];
    percentPrice = json['percent_price'];
    endTime = json['end_time'];
  }
}

class ColOne extends Random{
  ColOne.fromJson(super.json) : super.fromJson();
}

class ColTwo extends Random{
  ColTwo.fromJson(super.json) : super.fromJson();
}

class ColThree extends Random{
  ColThree.fromJson(super.json) : super.fromJson();
}

class ColFour extends Random{
  ColFour.fromJson(super.json) : super.fromJson();
}

class ColFive extends Random{
  ColFive.fromJson(super.json) : super.fromJson();
}

class CategoryBanner{
   String? link;
   String? image;

  CategoryBanner({required this.link, required this.image});

  CategoryBanner.fromJson(dynamic json){
    link = json['link'];
    image = json['image'];
  }
}


class Random {
  int? id;
  String? title;
  String? defaultPrice;
  String? image;

  Random({
    required this.id,
    required this.title,
    required this.defaultPrice,
    required this.image,
  });

  Random.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    defaultPrice = json['default_price'];
    image = json['image'];
  }
}

class Brands {
  String? image;
  String? link;

  Brands({required this.image, required this.link});

  Brands.fromJson(dynamic json) {
    image = json['image'];
    link = json['link'];
  }
}

class Sliders {
  String? image;
  String? link;
  int? id;

  Sliders({required this.image, required this.link, required this.id});

  Sliders.fromJson(dynamic json) {
    image = json['image'];
    link = json['link'];
    id = json['id'];
  }
}

class TopBanner {
  String? link;
  String? image;
  String? type;

  TopBanner({required this.link, required this.image, required this.type});

  TopBanner.fromJson(dynamic json) {
    link = json['link'];
    image = json['image'];
    type = json['type'];
  }
}
