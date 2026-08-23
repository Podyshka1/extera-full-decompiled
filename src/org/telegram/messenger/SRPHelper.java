package org.telegram.messenger;

import java.math.BigInteger;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes5.dex */
public class SRPHelper {
    public static byte[] getBigIntegerBytes(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length > 256) {
            byte[] bArr = new byte[256];
            System.arraycopy(byteArray, 1, bArr, 0, 256);
            return bArr;
        }
        if (byteArray.length >= 256) {
            return byteArray;
        }
        byte[] bArr2 = new byte[256];
        System.arraycopy(byteArray, 0, bArr2, 256 - byteArray.length, byteArray.length);
        for (int i = 0; i < 256 - byteArray.length; i++) {
            bArr2[i] = 0;
        }
        return bArr2;
    }

    public static byte[] getX(byte[] bArr, TLRPC.C2967xb6caa888 c2967xb6caa888) {
        byte[] bArr2 = c2967xb6caa888.salt1;
        byte[] bArrComputeSHA256 = Utilities.computeSHA256(bArr2, bArr, bArr2);
        byte[] bArr3 = c2967xb6caa888.salt2;
        byte[] bArrComputePBKDF2 = Utilities.computePBKDF2(Utilities.computeSHA256(bArr3, bArrComputeSHA256, bArr3), c2967xb6caa888.salt1);
        byte[] bArr4 = c2967xb6caa888.salt2;
        return Utilities.computeSHA256(bArr4, bArrComputePBKDF2, bArr4);
    }

    public static BigInteger getV(byte[] bArr, TLRPC.C2967xb6caa888 c2967xb6caa888) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(c2967xb6caa888.f1796g);
        getBigIntegerBytes(bigIntegerValueOf);
        return bigIntegerValueOf.modPow(new BigInteger(1, getX(bArr, c2967xb6caa888)), new BigInteger(1, c2967xb6caa888.f1797p));
    }

    public static byte[] getVBytes(byte[] bArr, TLRPC.C2967xb6caa888 c2967xb6caa888) {
        if (Utilities.isGoodPrime(c2967xb6caa888.f1797p, c2967xb6caa888.f1796g)) {
            return getBigIntegerBytes(getV(bArr, c2967xb6caa888));
        }
        return null;
    }

    public static TLRPC.TL_inputCheckPasswordSRP startCheck(byte[] bArr, long j, byte[] bArr2, TLRPC.C2967xb6caa888 c2967xb6caa888) {
        if (bArr == null || bArr2 == null || bArr2.length == 0 || !Utilities.isGoodPrime(c2967xb6caa888.f1797p, c2967xb6caa888.f1796g)) {
            return null;
        }
        BigInteger bigIntegerValueOf = BigInteger.valueOf(c2967xb6caa888.f1796g);
        byte[] bigIntegerBytes = getBigIntegerBytes(bigIntegerValueOf);
        BigInteger bigInteger = new BigInteger(1, c2967xb6caa888.f1797p);
        BigInteger bigInteger2 = new BigInteger(1, Utilities.computeSHA256(c2967xb6caa888.f1797p, bigIntegerBytes));
        BigInteger bigInteger3 = new BigInteger(1, bArr);
        byte[] bArr3 = new byte[256];
        Utilities.random.nextBytes(bArr3);
        BigInteger bigInteger4 = new BigInteger(1, bArr3);
        byte[] bigIntegerBytes2 = getBigIntegerBytes(bigIntegerValueOf.modPow(bigInteger4, bigInteger));
        BigInteger bigInteger5 = new BigInteger(1, bArr2);
        BigInteger bigInteger6 = BigInteger.ZERO;
        if (bigInteger5.compareTo(bigInteger6) <= 0 || bigInteger5.compareTo(bigInteger) >= 0) {
            return null;
        }
        byte[] bigIntegerBytes3 = getBigIntegerBytes(bigInteger5);
        BigInteger bigInteger7 = new BigInteger(1, Utilities.computeSHA256(bigIntegerBytes2, bigIntegerBytes3));
        if (bigInteger7.compareTo(bigInteger6) == 0) {
            return null;
        }
        BigInteger bigIntegerSubtract = bigInteger5.subtract(bigInteger2.multiply(bigIntegerValueOf.modPow(bigInteger3, bigInteger)).mod(bigInteger));
        if (bigIntegerSubtract.compareTo(bigInteger6) < 0) {
            bigIntegerSubtract = bigIntegerSubtract.add(bigInteger);
        }
        if (!Utilities.isGoodGaAndGb(bigIntegerSubtract, bigInteger)) {
            return null;
        }
        byte[] bArrComputeSHA256 = Utilities.computeSHA256(getBigIntegerBytes(bigIntegerSubtract.modPow(bigInteger4.add(bigInteger7.multiply(bigInteger3)), bigInteger)));
        byte[] bArrComputeSHA2562 = Utilities.computeSHA256(c2967xb6caa888.f1797p);
        byte[] bArrComputeSHA2563 = Utilities.computeSHA256(bigIntegerBytes);
        for (int i = 0; i < bArrComputeSHA2562.length; i++) {
            bArrComputeSHA2562[i] = (byte) (bArrComputeSHA2563[i] ^ bArrComputeSHA2562[i]);
        }
        TLRPC.TL_inputCheckPasswordSRP tL_inputCheckPasswordSRP = new TLRPC.TL_inputCheckPasswordSRP();
        tL_inputCheckPasswordSRP.f1730M1 = Utilities.computeSHA256(bArrComputeSHA2562, Utilities.computeSHA256(c2967xb6caa888.salt1), Utilities.computeSHA256(c2967xb6caa888.salt2), bigIntegerBytes2, bigIntegerBytes3, bArrComputeSHA256);
        tL_inputCheckPasswordSRP.f1729A = bigIntegerBytes2;
        tL_inputCheckPasswordSRP.srp_id = j;
        return tL_inputCheckPasswordSRP;
    }
}
