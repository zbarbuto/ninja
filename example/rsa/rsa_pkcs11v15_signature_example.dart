import 'package:ninja/asymmetric/rsa/rsa.dart';
import 'package:ninja/asymmetric/rsa/signer/emsa_pss.dart';

void main() {
  final privateKeyPem = '''
-----BEGIN RSA PRIVATE KEY-----
MIIBOwIBAAJBAMv7Reawnxr0DfYN3IZbb5ih/XJGeLWDv7WuhTlie//c2TDXw/mW
914VFyoBfxQxAezSj8YpuADiTwqDZl13wKMCAwEAAQJAYaTrFT8/KpvhgwOnqPlk
NmB0/psVdW6X+tSMGag3S4cFid3nLkN384N6tZ+na1VWNkLy32Ndpxo6pQq4NSAb
YQIhAPNlJsV+Snpg+JftgviV5+jOKY03bx29GsZF+umN6hD/AiEA1ouXAO2mVGRk
BuoGXe3o/d5AOXj41vTB8D6IUGu8bF0CIQC6zah7LRmGYYSKPk0l8w+hmxFDBAex
IGE7SZxwwm2iCwIhAInnDbe2CbyjDrx2/oKvopxTmDqY7HHWvzX6K8pthZ6tAiAw
w+DJoSx81QQpD8gY/BXjovadVtVROALaFFvdmN64sw==
-----END RSA PRIVATE KEY-----''';

  final privateKey = RSAPrivateKey.fromPEM(privateKeyPem);
  final publicKey = privateKey.toPublicKey;

  final message = 'abcdefghijklmnopqrstuvwxyz\n';

  final signature = privateKey.signSsaPkcs1v15ToBase64(message);
  print(signature);

  print(publicKey.verifySsaPkcs1v15(signature, message));
}
