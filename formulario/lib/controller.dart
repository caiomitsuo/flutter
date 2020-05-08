import 'package:mobx/mobx.dart';
import 'models/client.dart';

part 'controller.g.dart';


class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();
  
  @computed
  bool get isValid{
    return validateName() == null && validateEmail() == null && validateCpf() == null;
  }
  String validateName(){
    if(client.name == null || client.name.isEmpty){
      return "este campo é obrigatório";
    }else if (client.name.length <3){
      return  "Seu nome precisa ter mais que 3 caracteres";
    }
    
    return null;
  }

  String validateEmail(){
    if(client.email == null || client.email.isEmpty){
      return "este campo é obrigatório";
    }else if (!client.email.contains("@")){
      return  "esse email não é valido";
    }
    
    return null;
  }

  String validateCpf(){
    if(client.cpf == null || client.cpf.isEmpty){
      return "Esse campo é obrigatorio";
    }else if (client.cpf.length < 11){
      return "Seu cpf está invalido";
    }
    return  null;
  }
  
} 