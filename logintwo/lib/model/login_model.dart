class LoginResponseModel{
  final String token;
  final String error;

  LoginResponseModel({this.token,this.error});

  factory LoginResponseModel.fromJason(Map<String , dynamic> jason) {
    return LoginResponseModel(token: jason["token"] != null? jason["token"]:"",error: jason["error"] !=null?jason["error"]:"");
  }

}

class LoginRequestModel{

  String username;
  String password;

  LoginRequestModel({
    this.username,
    this.password,
});

  Map<String , dynamic>toJason(){
    Map<String , dynamic>map = { 'username' : username.trim() , 'password' : password.trim()

    };
    return map;
  }
}