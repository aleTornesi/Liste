class MyList{
  String _id;
  String _comment;
  List<String> _userWithoutAccess;

  MyList(String id, String comment, List<String> userWithoutAccess) {
    this._id = id;
    this._comment = comment;
    this._userWithoutAccess = userWithoutAccess;
  }

}