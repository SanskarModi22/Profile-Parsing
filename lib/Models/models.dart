class Profile {
  Basic? basic;
  List<ClientPostings>? clientPostings;
  List<Events>? events;
  bool? isLoggedIn;
  List<Locations>? locations;
  List<Portfolio>? portfolio;
  List<Professions>? professions;
  List<Questions>? questions;

  Profile({
    this.basic,
    this.clientPostings,
    this.events,
    this.isLoggedIn,
    this.locations,
    this.portfolio,
    this.professions,
    this.questions,
  });

  Profile.fromJson(Map<String, dynamic> json) {
    basic = json['basic'] != null ? Basic.fromJson(json['basic']) : null;

    if (json['client_postings'] != null) {
      clientPostings = <ClientPostings>[];
      json['client_postings'].forEach((v) {
        clientPostings!.add(ClientPostings.fromJson(v));
      });
    }

    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events!.add(Events.fromJson(v));
      });
    }
    isLoggedIn = json['is_logged_in'];
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) {
        locations!.add(Locations.fromJson(v));
      });
    }
    if (json['portfolio'] != null) {
      portfolio = <Portfolio>[];
      json['portfolio'].forEach((v) {
        portfolio!.add(Portfolio.fromJson(v));
      });
    }
    if (json['professions'] != null) {
      professions = <Professions>[];
      json['professions'].forEach((v) {
        professions!.add(Professions.fromJson(v));
      });
    }
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (basic != null) {
      data['basic'] = basic!.toJson();
    }

    if (clientPostings != null) {
      data['client_postings'] =
          clientPostings!.map((v) => v.toJson()).toList();
    }

    if (events != null) {
      data['events'] = events!.map((v) => v.toJson()).toList();
    }
    data['is_logged_in'] = isLoggedIn;
    if (locations != null) {
      data['locations'] = locations!.map((v) => v.toJson()).toList();
    }
    if (portfolio != null) {
      data['portfolio'] = portfolio!.map((v) => v.toJson()).toList();
    }
    if (professions != null) {
      data['professions'] = professions!.map((v) => v.toJson()).toList();
    }
    if (questions != null) {
      data['questions'] = questions!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Basic {
  String? bio;
  String? cover;
  String? createdAt;
  String? dob;
  String? facebook;
  int? followings;
  String? fullname;
  String? image;
  String? imageHd;
  String? instagram;
  bool? isFollowing;
  bool? isVerified;
  bool? isWorking;
  String? linkedin;
  String? name;
  int? quickBookings;
  bool? quickbookVerified;
  int? strength;
  String? twitter;

  int? userId;
  String? username;
  int? visits;
  String? website;

  Basic(
      {this.bio,
      this.cover,
      this.createdAt,
      this.dob,
      this.facebook,
      this.followings,
      this.fullname,
      this.image,
      this.imageHd,
      this.instagram,
      this.isFollowing,
      this.isVerified,
      this.isWorking,
      this.linkedin,
      this.name,
      this.quickBookings,
      this.quickbookVerified,
      this.strength,
      this.twitter,

      this.userId,
      this.username,
      this.visits,
      this.website});

  Basic.fromJson(Map<String, dynamic> json) {
    bio = json['bio'];
    cover = json['cover'];
    createdAt = json['created_at'];
    dob = json['dob'];
    facebook = json['facebook'];
    followings = json['followings'];
    fullname = json['fullname'];
    image = json['image'];
    imageHd = json['image_hd'];
    instagram = json['instagram'];
    isFollowing = json['is_following'];
    isVerified = json['is_verified'];
    isWorking = json['is_working'];
    linkedin = json['linkedin'];
    name = json['name'];
    quickBookings = json['quick_bookings'];
    quickbookVerified = json['quickbook_verified'];
    strength = json['strength'];
    twitter = json['twitter'];

    userId = json['user_id'];
    username = json['username'];
    visits = json['visits'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bio'] = bio;
    data['cover'] = cover;
    data['created_at'] = createdAt;
    data['dob'] = dob;
    data['facebook'] = facebook;
    data['followings'] = followings;
    data['fullname'] = fullname;
    data['image'] = image;
    data['image_hd'] = imageHd;
    data['instagram'] = instagram;
    data['is_following'] = isFollowing;
    data['is_verified'] = isVerified;
    data['is_working'] = isWorking;
    data['linkedin'] = linkedin;
    data['name'] = name;
    data['quick_bookings'] = quickBookings;
    data['quickbook_verified'] = quickbookVerified;
    data['strength'] = strength;
    data['twitter'] = twitter;

    data['user_id'] = userId;
    data['username'] = username;
    data['visits'] = visits;
    data['website'] = website;
    return data;
  }
}

class ClientPostings {
  int? budget;
  String? budgetCc;
  String? createdAt;
  String? description;
  int? experience;
  int? id;
  bool? isActive;
  String? jobType;
  String? location;
  int? openings;
  String? profession;
  String? skills;
  String? timePeriod;
  String? timeStart;
  String? type;

  ClientPostings(
      {this.budget,
      this.budgetCc,
      this.createdAt,
      this.description,
      this.experience,
      this.id,
      this.isActive,
      this.jobType,
      this.location,
      this.openings,
      this.profession,
      this.skills,
      this.timePeriod,
      this.timeStart,
      this.type});

  ClientPostings.fromJson(Map<String, dynamic> json) {
    budget = json['budget'];
    budgetCc = json['budget_cc'];
    createdAt = json['created_at'];
    description = json['description'];
    experience = json['experience'];
    id = json['id'];
    isActive = json['is_active'];
    jobType = json['job_type'];
    location = json['location'];
    openings = json['openings'];
    profession = json['profession'];
    skills = json['skills'];
    timePeriod = json['time_period'];
    timeStart = json['time_start'];
    type = json['type_'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['budget'] = budget;
    data['budget_cc'] = budgetCc;
    data['created_at'] = createdAt;
    data['description'] = description;
    data['experience'] = experience;
    data['id'] = id;
    data['is_active'] = isActive;
    data['job_type'] = jobType;
    data['location'] = location;
    data['openings'] = openings;
    data['profession'] = profession;
    data['skills'] = skills;
    data['time_period'] = timePeriod;
    data['time_start'] = timeStart;
    data['type_'] = type;
    return data;
  }
}

class Events {
  String? sku;
  String? theme;
  String? thumbnail;

  Events({this.sku, this.theme, this.thumbnail});

  Events.fromJson(Map<String, dynamic> json) {
    sku = json['sku'];
    theme = json['theme'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sku'] = sku;
    data['theme'] = theme;
    data['thumbnail'] = thumbnail;
    return data;
  }
}

class Locations {
  String? city;
  String? country;
  String? createdAt;
  int? id;
  bool? isPrimary;
  String? state;
  String? zipCode;

  Locations(
      {this.city,
      this.country,
      this.createdAt,
      this.id,
      this.isPrimary,
      this.state,
      this.zipCode});

  Locations.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    country = json['country'];
    createdAt = json['created_at'];
    id = json['id'];
    isPrimary = json['is_primary'];
    state = json['state'];
    zipCode = json['zip_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['country'] = country;
    data['created_at'] = createdAt;
    data['id'] = id;
    data['is_primary'] = isPrimary;
    data['state'] = state;
    data['zip_code'] = zipCode;
    return data;
  }
}

class Portfolio {
  String? createdAt;
  String? description;
  String? endedTime;
  int? id;
  List<Images>? images;
  String? link;
  String? position;
  String? projectName;
  String? startedTime;

  Portfolio(
      {this.createdAt,
      this.description,
      this.endedTime,
      this.id,
      this.images,
      this.link,
      this.position,
      this.projectName,
      this.startedTime});

  Portfolio.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    endedTime = json['ended_time'];
    id = json['id'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    link = json['link'];
    position = json['position'];
    projectName = json['project_name'];
    startedTime = json['started_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['ended_time'] = endedTime;
    data['id'] = id;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['link'] = link;
    data['position'] = position;
    data['project_name'] = projectName;
    data['started_time'] = startedTime;
    return data;
  }
}

class Images {
  int? id;
  String? image;

  Images({this.id, this.image});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    return data;
  }
}

class Professions {
  String? createdAt;
  int? experience;
  bool? forQuickbook;
  int? id;
  bool? isPrimary;
  QuickbookDetails? quickbookDetails;
  String? title;
  int? userId;

  Professions(
      {this.createdAt,
      this.experience,
      this.forQuickbook,
      this.id,
      this.isPrimary,
      this.quickbookDetails,
      this.title,
      this.userId});

  Professions.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    experience = json['experience'];
    forQuickbook = json['for_quickbook'];
    id = json['id'];
    isPrimary = json['is_primary'];
    quickbookDetails = json['quickbook_details'] != null
        ? QuickbookDetails.fromJson(json['quickbook_details'])
        : null;
    title = json['title'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['experience'] = experience;
    data['for_quickbook'] = forQuickbook;
    data['id'] = id;
    data['is_primary'] = isPrimary;
    if (quickbookDetails != null) {
      data['quickbook_details'] = quickbookDetails!.toJson();
    }
    data['title'] = title;
    data['user_id'] = userId;
    return data;
  }
}

class QuickbookDetails {
  bool? isActive;
  bool? isFlexible;
  List<String>? portfoliosIds;
  double? rateAmount;
  String? rateCurrency;
  String? rateDuration;

  QuickbookDetails(
      {this.isActive,
      this.isFlexible,
      this.portfoliosIds,
      this.rateAmount,
      this.rateCurrency,
      this.rateDuration});

  QuickbookDetails.fromJson(Map<String, dynamic> json) {
    isActive = json['is_active'];
    isFlexible = json['is_flexible'];
    portfoliosIds = json['portfolios_ids'].cast<String>();
    rateAmount = json['rate_amount'];
    rateCurrency = json['rate_currency'];
    rateDuration = json['rate_duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_active'] = isActive;
    data['is_flexible'] = isFlexible;
    data['portfolios_ids'] = portfoliosIds;
    data['rate_amount'] = rateAmount;
    data['rate_currency'] = rateCurrency;
    data['rate_duration'] = rateDuration;
    return data;
  }
}

class Questions {
  Answer? answer;
  String? createdAt;
  String? description;
  int? id;
  bool? me;
  String? title;

  Questions(
      {this.answer,
      this.createdAt,
      this.description,
      this.id,
      this.me,
      this.title});

  Questions.fromJson(Map<String, dynamic> json) {
    answer =
        json['answer'] != null ? Answer.fromJson(json['answer']) : null;
    createdAt = json['created_at'];
    description = json['description'];
    id = json['id'];
    me = json['me'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (answer != null) {
      data['answer'] = answer!.toJson();
    }
    data['created_at'] = createdAt;
    data['description'] = description;
    data['id'] = id;
    data['me'] = me;
    data['title'] = title;
    return data;
  }
}

class Answer {
  String? createdAt;
  String? description;
  int? id;

  Answer({this.createdAt, this.description, this.id});

  Answer.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = description;
    data['id'] = id;
    return data;
  }
}
