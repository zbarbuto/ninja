import 'package:ninja/ninja.dart';

void main() {
  final pubKey = RSAPublicKey(
      BigInt.parse(
          "20620915813302906913761247666337410938401372343750709187749515126790853245302593205328533062154315527282056175455193812046134139935830222032257750866653461677566720508752544506266533943725970345491747964654489405936145559121373664620352701801574863309087932865304205561439525871868738640172656811470047745445089832193075388387376667722031640892525639171016297098395245887609359882693921643396724693523583076582208970794545581164952427577506035951122669158313095779596666008591745562008787129160302313244329988240795948461701615228062848622019620094307696506764461083870202605984497833670577046553861732258592935325691"),
      BigInt.parse("65537"));

  final privKey = RSAPrivateKey(
      BigInt.parse(
          "20620915813302906913761247666337410938401372343750709187749515126790853245302593205328533062154315527282056175455193812046134139935830222032257750866653461677566720508752544506266533943725970345491747964654489405936145559121373664620352701801574863309087932865304205561439525871868738640172656811470047745445089832193075388387376667722031640892525639171016297098395245887609359882693921643396724693523583076582208970794545581164952427577506035951122669158313095779596666008591745562008787129160302313244329988240795948461701615228062848622019620094307696506764461083870202605984497833670577046553861732258592935325691"),
      BigInt.parse("65537"),
      BigInt.parse(
          "11998058528661160053642124235359844880039079149364512302169225182946866898849176558365314596732660324493329967536772364327680348872134489319530228055102152992797567579226269544119435926913937183793755182388650533700918602627770886358900914370472445911502526145837923104029967812779021649252540542517598618021899291933220000807916271555680217608559770825469218984818060775562259820009637370696396889812317991880425127772801187664191059506258517954313903362361211485802288635947903604738301101038823790599295749578655834195416886345569976295245464597506584866355976650830539380175531900288933412328525689718517239330305"),
      BigInt.parse(
          "144173682842817587002196172066264549138375068078359231382946906898412792452632726597279520229873489736777248181678202636100459215718497240474064366927544074501134727745837254834206456400508719134610847814227274992298238973375146473350157304285346424982280927848339601514720098577525635486320547905945936448443"),
      BigInt.parse(
          "143028293421514654659358549214971921584534096938352096320458818956414890934365483375293202045679474764569937266017713262196941957149321696805368542065644090886347646782188634885321277533175667840285448510687854061424867903968633218073060468434469761149335255007464091258725753837522484082998329871306803923137"));

  String encrypted = pubKey
      .encryptOaep('Lorem ipsum dolor sit amet, consectetur adipiscing elit...');
  print(encrypted);
  String decrypted = privKey.decryptOaep(encrypted);
  print(decrypted);
  print(decrypted.codeUnits);
}