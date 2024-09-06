import 'package:oho_hero/utils/services/rest_api_service.dart';

const prod = 'https://techcaresolution-ssl.com/oho-hero-api/';
const prodImage = 'https://lobster-app-bgjxe.ondigitalocean.app/image/v1/';
var opttion = Options(headers: {
  'authorization':
      'Bearer sK!wLWgVHta4%vteQoiBD9QZFPVZbW4aQ8HkLKm7x2a@7sJJH74P2MX!qH95&xfMP75cpoZHH25wi5%tZXNv5*QgjPj2q',
  'Content-Type': 'application/json'
});
//Login
const login = '${prod}security/login/login';
//Register
const checkEmail = '${prod}security/login/CheckEmailUser';
const insdustryGroup = '${prod}security/login/Getmaster_industry_group';
const register = '${prod}security/login/Register';
