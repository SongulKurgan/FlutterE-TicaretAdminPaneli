class MyValidators{

  static String? displayNameValidator(String? displayName){
    if(displayName== null || displayName.isEmpty){
      return 'İsim alanı boş olamaz';
    }
    if(displayName.length<3 || displayName.length>20)
    {
      return 'En az 3 en fazla 20 karakter olabilir';
    }
    return null;
  }
  static String? EmailValidator(String? value){
    if(value!.isEmpty)
    {
      return 'Lütfen geçerli eposta adresini giriniz';
    }
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(value)) {
      return 'Lütfen geçerli eposta adresini giriniz';
    }
    return null;
  }

  static String? PasswordValidator(String? value){
    if(value!.isEmpty)
    {
      return 'plaese enter an password';
    }
    if(value.length<6){
      return 'password must be least 6 characters';

    }

    return null;
  }

  static String? repeatPasswordValidator(String? value, String? password){
    if(value!=password)
    {
      return 'Password do not match';
    }

    return null;
  }

  static String? uploadProdText({String? value, String? toBeReturnedString})
  {
    if(value!.isEmpty){
      return toBeReturnedString;

    }
    return null;
  }







}