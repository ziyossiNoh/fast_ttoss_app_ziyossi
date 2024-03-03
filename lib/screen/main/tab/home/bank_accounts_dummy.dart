import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(bankShinhan, 5059200, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bankShinhan, 1706314580, accountTypeName: "저축예금");
final bankAccountShinhan4 = BankAccount(bankShinhan, 3500000, accountTypeName: "저축예금");
final bankAccountShinhan5 = BankAccount(bankShinhan, 1270000, accountTypeName: "저축예금");
final bankAccountToss1 = BankAccount(bankTtoss, 6000000);
final bankAccountToss2 = BankAccount(bankTtoss, 75865240);
final bankAccountToss3 = BankAccount(bankTtoss, 6543000);
final bankAccountKakao1 = BankAccount(bankKakao, 36000000, accountTypeName: "입출금통장");
final bankAccountKakao2 = BankAccount(bankKakao, 94380000, accountTypeName: "저축예금");

// 연습 확인
// main(){
//   print(bankAccounts[0].accountTypeName);
// }

//List
final bankAccounts = [
  bankAccountToss1,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao1,
  bankAccountToss2,
  bankAccountToss3,
  bankAccountKakao2,
  bankAccountShinhan4,
  bankAccountShinhan5,
];

// //Map 연습
// final bankMap = {
//   "shinhan1": bankAccountShinhan1,
//   "shinhan2": bankAccountShinhan2,
// };

//Set 연습 : 데이터가 존재하는지 체크하는 형태로 많이 사용
// final bankSet = {
//   bankAccountShinhan1,
//   bankAccountShinhan2,
//   bankAccountShinhan3,
//   bankAccountToss,
//   bankAccountKakao,
// };