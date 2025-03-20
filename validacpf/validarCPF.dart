import 'package:cpf_cnpj_validator/cpf_validator.dart';

Future validarCPF(String? cpf) async {
  return CPFValidator.isValid(cpf);
}
