package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zztp {
    private static final zztk zzb = new zztk(new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new long[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
    private static final zztm zzc = new zztm(new zztn(new long[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0}), new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0});
    static final byte[] zza = {-19, -45, -11, 92, 26, 99, 18, 88, -42, -100, -9, -94, -34, -7, -34, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16};

    public static byte[] zza(byte[] bArr) {
        int i;
        byte[] bArr2 = new byte[64];
        int i2 = 0;
        while (true) {
            if (i2 >= 32) {
                break;
            }
            int i3 = i2 + i2;
            bArr2[i3] = (byte) (bArr[i2] & 15);
            bArr2[i3 + 1] = (byte) ((bArr[i2] & UByte.MAX_VALUE) >> 4);
            i2++;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < 63) {
            byte b2 = (byte) (bArr2[i4] + i5);
            bArr2[i4] = b2;
            int i6 = (b2 + 8) >> 4;
            bArr2[i4] = (byte) (b2 - (i6 << 4));
            i4++;
            i5 = i6;
        }
        bArr2[63] = (byte) (bArr2[63] + i5);
        zztm zztmVar = new zztm(zzc);
        zzto zztoVar = new zzto();
        for (i = 1; i < 64; i += 2) {
            zztk zztkVar = new zztk(zzb);
            zzk(zztkVar, i / 2, bArr2[i]);
            zzto.zza(zztoVar, zztmVar);
            zzg(zztmVar, zztoVar, zztkVar);
        }
        zztn zztnVar = new zztn();
        zztn.zza(zztnVar, zztmVar);
        zzi(zztmVar, zztnVar);
        zztn.zza(zztnVar, zztmVar);
        zzi(zztmVar, zztnVar);
        zztn.zza(zztnVar, zztmVar);
        zzi(zztmVar, zztnVar);
        zztn.zza(zztnVar, zztmVar);
        zzi(zztmVar, zztnVar);
        for (int i7 = 0; i7 < 64; i7 += 2) {
            zztk zztkVar2 = new zztk(zzb);
            zzk(zztkVar2, i7 / 2, bArr2[i7]);
            zzto.zza(zztoVar, zztmVar);
            zzg(zztmVar, zztoVar, zztkVar2);
        }
        zztn zztnVar2 = new zztn(zztmVar);
        long[] jArr = new long[10];
        zztw.zzf(jArr, zztnVar2.zza);
        long[] jArr2 = new long[10];
        zztw.zzf(jArr2, zztnVar2.zzb);
        long[] jArr3 = new long[10];
        zztw.zzf(jArr3, zztnVar2.zzc);
        long[] jArr4 = new long[10];
        zztw.zzf(jArr4, jArr3);
        long[] jArr5 = new long[10];
        zztw.zzb(jArr5, jArr2, jArr);
        zztw.zze(jArr5, jArr5, jArr3);
        long[] jArr6 = new long[10];
        zztw.zze(jArr6, jArr, jArr2);
        zztw.zze(jArr6, jArr6, zztr.zza);
        zztw.zza(jArr6, jArr6, jArr4);
        zztw.zzc(jArr6, jArr6);
        if (MessageDigest.isEqual(zztw.zzh(jArr5), zztw.zzh(jArr6))) {
            return zztnVar2.zzb();
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("arithmetic error in scalar multiplication");
        return null;
    }

    public static byte[] zzb(byte[] bArr) {
        MessageDigest messageDigest = (MessageDigest) zzadf.zzb.zzb("SHA-512");
        messageDigest.update(bArr, 0, 32);
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest[0] = (byte) (bArrDigest[0] & 248);
        int i = bArrDigest[31] & ByteCompanionObject.MAX_VALUE;
        bArrDigest[31] = (byte) i;
        bArrDigest[31] = (byte) (i | 64);
        return bArrDigest;
    }

    public static boolean zzc(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        byte b2;
        byte[] bArr4 = bArr2;
        if (bArr4.length != 64) {
            return false;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr4, 32, 64);
        int i = 31;
        while (true) {
            if (i < 0) {
                break;
            }
            int i2 = bArrCopyOfRange[i] & UByte.MAX_VALUE;
            int i3 = zza[i] & UByte.MAX_VALUE;
            if (i2 == i3) {
                i--;
                bArr4 = bArr2;
            } else if (i2 < i3) {
                MessageDigest messageDigest = (MessageDigest) zzadf.zzb.zzb("SHA-512");
                messageDigest.update(bArr4, 0, 32);
                messageDigest.update(bArr3);
                messageDigest.update(bArr);
                byte[] bArrDigest = messageDigest.digest();
                long jZzn = zzn(bArrDigest, 0) & 2097151;
                long jZzo = zzo(bArrDigest, 2) >> 5;
                long jZzn2 = zzn(bArrDigest, 5) >> 2;
                long jZzo2 = zzo(bArrDigest, 7) >> 7;
                long jZzo3 = zzo(bArrDigest, 10) >> 4;
                long jZzn3 = zzn(bArrDigest, 13) >> 1;
                long jZzo4 = zzo(bArrDigest, 15) >> 6;
                long jZzn4 = zzn(bArrDigest, 18) >> 3;
                long jZzn5 = zzn(bArrDigest, 21) & 2097151;
                long jZzo5 = zzo(bArrDigest, 23) >> 5;
                long jZzn6 = zzn(bArrDigest, 26) >> 2;
                long jZzo6 = zzo(bArrDigest, 28) >> 7;
                long jZzo7 = zzo(bArrDigest, 31) >> 4;
                long jZzn7 = zzn(bArrDigest, 34) >> 1;
                long jZzo8 = zzo(bArrDigest, 36) >> 6;
                long jZzn8 = zzn(bArrDigest, 39) >> 3;
                long jZzn9 = zzn(bArrDigest, 42) & 2097151;
                long jZzo9 = zzo(bArrDigest, 44) >> 5;
                long jZzn10 = (zzn(bArrDigest, 47) >> 2) & 2097151;
                long jZzo10 = (zzo(bArrDigest, 49) >> 7) & 2097151;
                long jZzo11 = (zzo(bArrDigest, 52) >> 4) & 2097151;
                long jZzn11 = (zzn(bArrDigest, 55) >> 1) & 2097151;
                long jZzo12 = (zzo(bArrDigest, 57) >> 6) & 2097151;
                long jZzo13 = zzo(bArrDigest, 60) >> 3;
                long j = (jZzo4 & 2097151) + (jZzn10 * 666643);
                long j2 = (j + 1048576) >> 21;
                long j3 = j2 << 21;
                long j4 = jZzn5 + (jZzo11 * 666643) + (jZzo10 * 470296) + (jZzn10 * 654183);
                long j5 = (j4 + 1048576) >> 21;
                long j6 = j5 << 21;
                long j7 = (((((jZzn6 & 2097151) + (jZzo12 * 666643)) + (jZzn11 * 470296)) + (jZzo11 * 654183)) - (jZzo10 * 997805)) + (jZzn10 * 136657);
                long j8 = (j7 + 1048576) >> 21;
                long j9 = j8 << 21;
                long j10 = (((((jZzo7 & 2097151) + (jZzo13 * 470296)) + (jZzo12 * 654183)) - (jZzn11 * 997805)) + (jZzo11 * 136657)) - (jZzo10 * 683901);
                long j11 = (j10 + 1048576) >> 21;
                long j12 = (((jZzo8 & 2097151) - (jZzo13 * 997805)) + (jZzo12 * 136657)) - (jZzn11 * 683901);
                long j13 = (j12 + 1048576) >> 21;
                long j14 = jZzn9 - (jZzo13 * 683901);
                long j15 = (j14 + 1048576) >> 21;
                long j16 = jZzn4 + (jZzo10 * 666643) + (jZzn10 * 470296) + j2;
                long j17 = (j16 + 1048576) >> 21;
                long j18 = j17 << 21;
                long j19 = (((((jZzo5 & 2097151) + (jZzn11 * 666643)) + (jZzo11 * 470296)) + (jZzo10 * 654183)) - (jZzn10 * 997805)) + j5;
                long j20 = (j19 + 1048576) >> 21;
                long j21 = j20 << 21;
                long j22 = (((((((jZzo6 & 2097151) + (jZzo13 * 666643)) + (jZzo12 * 470296)) + (jZzn11 * 654183)) - (jZzo11 * 997805)) + (jZzo10 * 136657)) - (jZzn10 * 683901)) + j8;
                long j23 = (j22 + 1048576) >> 21;
                long j24 = j23 << 21;
                long j25 = (((((jZzn7 & 2097151) + (jZzo13 * 654183)) - (jZzo12 * 997805)) + (jZzn11 * 136657)) - (jZzo11 * 683901)) + j11;
                long j26 = (j25 + 1048576) >> 21;
                long j27 = ((jZzn8 + (jZzo13 * 136657)) - (jZzo12 * 683901)) + j13;
                long j28 = (j27 + 1048576) >> 21;
                long j29 = (j10 - (j11 << 21)) + j23;
                long j30 = jZzn + (j29 * 666643);
                long j31 = (j30 + 1048576) >> 21;
                long j32 = j31 << 21;
                long j33 = (j12 - (j13 << 21)) + j26;
                long j34 = j25 - (j26 << 21);
                long j35 = (jZzn2 & 2097151) + (j33 * 666643) + (j34 * 470296) + (j29 * 654183);
                long j36 = (j35 + 1048576) >> 21;
                long j37 = j36 << 21;
                long j38 = (j14 - (j15 << 21)) + j28;
                long j39 = j27 - (j28 << 21);
                long j40 = (((((jZzo3 & 2097151) + (j38 * 666643)) + (j39 * 470296)) + (j33 * 654183)) - (j34 * 997805)) + (j29 * 136657);
                long j41 = (j40 + 1048576) >> 21;
                long j42 = j41 << 21;
                long j43 = (jZzo9 & 2097151) + j15;
                long j44 = (((((j - j3) + (j43 * 470296)) + (j38 * 654183)) - (j39 * 997805)) + (j33 * 136657)) - (j34 * 683901);
                long j45 = (j44 + 1048576) >> 21;
                long j46 = j45 << 21;
                long j47 = ((((j4 - j6) + j17) - (j43 * 997805)) + (j38 * 136657)) - (j39 * 683901);
                long j48 = (j47 + 1048576) >> 21;
                long j49 = j48 << 21;
                long j50 = ((j7 - j9) + j20) - (j43 * 683901);
                long j51 = (j50 + 1048576) >> 21;
                long j52 = (jZzo & 2097151) + (j34 * 666643) + (j29 * 470296) + j31;
                long j53 = (j52 + 1048576) >> 21;
                long j54 = (((((jZzo2 & 2097151) + (j39 * 666643)) + (j33 * 470296)) + (j34 * 654183)) - (j29 * 997805)) + j36;
                long j55 = (j54 + 1048576) >> 21;
                long j56 = (((((((jZzn3 & 2097151) + (j43 * 666643)) + (j38 * 470296)) + (j39 * 654183)) - (j33 * 997805)) + (j34 * 136657)) - (j29 * 683901)) + j41;
                long j57 = (j56 + 1048576) >> 21;
                long j58 = (((((j16 - j18) + (j43 * 654183)) - (j38 * 997805)) + (j39 * 136657)) - (j33 * 683901)) + j45;
                long j59 = (j58 + 1048576) >> 21;
                long j60 = (((j19 - j21) + (j43 * 136657)) - (j38 * 683901)) + j48;
                long j61 = (j60 + 1048576) >> 21;
                long j62 = (j22 - j24) + j51;
                long j63 = (j62 + 1048576) >> 21;
                long j64 = j63 << 21;
                long j65 = (j30 - j32) + (j63 * 666643);
                long j66 = j65 >> 21;
                long j67 = j66 << 21;
                long j68 = (j52 - (j53 << 21)) + (j63 * 470296) + j66;
                long j69 = j68 >> 21;
                long j70 = j69 << 21;
                long j71 = (j35 - j37) + j53 + (j63 * 654183) + j69;
                long j72 = j71 >> 21;
                long j73 = j72 << 21;
                long j74 = ((j54 - (j55 << 21)) - (j63 * 997805)) + j72;
                long j75 = j74 >> 21;
                long j76 = j75 << 21;
                long j77 = (j40 - j42) + j55 + (j63 * 136657) + j75;
                long j78 = j77 >> 21;
                long j79 = j78 << 21;
                long j80 = ((j56 - (j57 << 21)) - (j63 * 683901)) + j78;
                long j81 = j80 >> 21;
                long j82 = j81 << 21;
                long j83 = (j44 - j46) + j57 + j81;
                long j84 = j83 >> 21;
                long j85 = j84 << 21;
                long j86 = (j58 - (j59 << 21)) + j84;
                long j87 = j86 >> 21;
                long j88 = j87 << 21;
                long j89 = (j47 - j49) + j59 + j87;
                long j90 = j89 >> 21;
                long j91 = j90 << 21;
                long j92 = (j60 - (j61 << 21)) + j90;
                long j93 = j92 >> 21;
                long j94 = j93 << 21;
                long j95 = (j50 - (j51 << 21)) + j61 + j93;
                long j96 = j95 >> 21;
                long j97 = j96 << 21;
                long j98 = (j62 - j64) + j96;
                long j99 = j98 >> 21;
                long j100 = j99 << 21;
                long j101 = (j65 - j67) + (666643 * j99);
                long j102 = j101 >> 21;
                long j103 = j102 << 21;
                long j104 = (j68 - j70) + (470296 * j99) + j102;
                long j105 = j104 >> 21;
                long j106 = j105 << 21;
                long j107 = (j71 - j73) + (654183 * j99) + j105;
                long j108 = j107 >> 21;
                long j109 = j108 << 21;
                long j110 = ((j74 - j76) - (997805 * j99)) + j108;
                long j111 = j110 >> 21;
                long j112 = j111 << 21;
                long j113 = (j77 - j79) + (136657 * j99) + j111;
                long j114 = j113 >> 21;
                long j115 = ((j80 - j82) - (j99 * 683901)) + j114;
                long j116 = j115 >> 21;
                long j117 = j116 << 21;
                long j118 = (j83 - j85) + j116;
                long j119 = j118 >> 21;
                long j120 = j119 << 21;
                long j121 = (j86 - j88) + j119;
                long j122 = j121 >> 21;
                long j123 = j122 << 21;
                long j124 = (j89 - j91) + j122;
                long j125 = j124 >> 21;
                long j126 = j125 << 21;
                long j127 = (j92 - j94) + j125;
                long j128 = j127 >> 21;
                long j129 = j128 << 21;
                long j130 = (j95 - j97) + j128;
                long j131 = j130 >> 21;
                bArrDigest[0] = (byte) (j101 - j103);
                long j132 = j121 - j123;
                long j133 = j118 - j120;
                long j134 = j115 - j117;
                long j135 = j113 - (j114 << 21);
                long j136 = j110 - j112;
                long j137 = j107 - j109;
                long j138 = j104 - j106;
                bArrDigest[1] = (byte) (r9 >> 8);
                bArrDigest[2] = (byte) ((r9 >> 16) | (j138 << 5));
                bArrDigest[3] = (byte) (j138 >> 3);
                bArrDigest[4] = (byte) (j138 >> 11);
                bArrDigest[5] = (byte) ((j138 >> 19) | (j137 << 2));
                bArrDigest[6] = (byte) (j137 >> 6);
                bArrDigest[7] = (byte) ((j137 >> 14) | (j136 << 7));
                bArrDigest[8] = (byte) (j136 >> 1);
                bArrDigest[9] = (byte) (j136 >> 9);
                bArrDigest[10] = (byte) ((j136 >> 17) | (j135 << 4));
                bArrDigest[11] = (byte) (j135 >> 4);
                bArrDigest[12] = (byte) (j135 >> 12);
                bArrDigest[13] = (byte) ((j135 >> 20) | (j134 + j134));
                bArrDigest[14] = (byte) (j134 >> 7);
                bArrDigest[15] = (byte) ((j134 >> 15) | (j133 << 6));
                bArrDigest[16] = (byte) (j133 >> 2);
                bArrDigest[17] = (byte) (j133 >> 10);
                bArrDigest[18] = (byte) ((j133 >> 18) | (j132 << 3));
                long j139 = j130 - (j131 << 21);
                long j140 = (j98 - j100) + j131;
                long j141 = j127 - j129;
                bArrDigest[19] = (byte) (j132 >> 5);
                bArrDigest[20] = (byte) (j132 >> 13);
                bArrDigest[21] = (byte) (j124 - j126);
                bArrDigest[22] = (byte) (r9 >> 8);
                bArrDigest[23] = (byte) ((r9 >> 16) | (j141 << 5));
                bArrDigest[24] = (byte) (j141 >> 3);
                bArrDigest[25] = (byte) (j141 >> 11);
                bArrDigest[26] = (byte) ((j141 >> 19) | (j139 << 2));
                bArrDigest[27] = (byte) (j139 >> 6);
                bArrDigest[28] = (byte) ((j139 >> 14) | (j140 << 7));
                bArrDigest[29] = (byte) (j140 >> 1);
                bArrDigest[30] = (byte) (j140 >> 9);
                bArrDigest[31] = (byte) (j140 >> 17);
                long[] jArr = new long[10];
                long[] jArrZzg = zztw.zzg(bArr3);
                long[] jArr2 = new long[10];
                jArr2[0] = 1;
                long[] jArr3 = new long[10];
                long[] jArr4 = new long[10];
                long[] jArr5 = new long[10];
                long[] jArr6 = new long[10];
                long[] jArr7 = new long[10];
                zztw.zzf(jArr4, jArrZzg);
                zztw.zze(jArr5, jArr4, zztr.zza);
                zztw.zzb(jArr4, jArr4, jArr2);
                zztw.zza(jArr5, jArr5, jArr2);
                long[] jArr8 = new long[10];
                zztw.zzf(jArr8, jArr5);
                zztw.zze(jArr8, jArr8, jArr5);
                zztw.zzf(jArr, jArr8);
                zztw.zze(jArr, jArr, jArr5);
                zztw.zze(jArr, jArr, jArr4);
                long[] jArr9 = new long[10];
                long[] jArr10 = new long[10];
                long[] jArr11 = new long[10];
                zztw.zzf(jArr9, jArr);
                zztw.zzf(jArr10, jArr9);
                zztw.zzf(jArr10, jArr10);
                zztw.zze(jArr10, jArr, jArr10);
                zztw.zze(jArr9, jArr9, jArr10);
                zztw.zzf(jArr9, jArr9);
                zztw.zze(jArr9, jArr10, jArr9);
                zztw.zzf(jArr10, jArr9);
                for (int i4 = 1; i4 < 5; i4++) {
                    zztw.zzf(jArr10, jArr10);
                }
                zztw.zze(jArr9, jArr10, jArr9);
                zztw.zzf(jArr10, jArr9);
                for (int i5 = 1; i5 < 10; i5++) {
                    zztw.zzf(jArr10, jArr10);
                }
                zztw.zze(jArr10, jArr10, jArr9);
                zztw.zzf(jArr11, jArr10);
                for (int i6 = 1; i6 < 20; i6++) {
                    zztw.zzf(jArr11, jArr11);
                }
                zztw.zze(jArr10, jArr11, jArr10);
                zztw.zzf(jArr10, jArr10);
                for (int i7 = 1; i7 < 10; i7++) {
                    zztw.zzf(jArr10, jArr10);
                }
                zztw.zze(jArr9, jArr10, jArr9);
                zztw.zzf(jArr10, jArr9);
                for (int i8 = 1; i8 < 50; i8++) {
                    zztw.zzf(jArr10, jArr10);
                }
                zztw.zze(jArr10, jArr10, jArr9);
                zztw.zzf(jArr11, jArr10);
                for (int i9 = 1; i9 < 100; i9++) {
                    zztw.zzf(jArr11, jArr11);
                }
                zztw.zze(jArr10, jArr11, jArr10);
                zztw.zzf(jArr10, jArr10);
                for (int i10 = 1; i10 < 50; i10++) {
                    zztw.zzf(jArr10, jArr10);
                }
                zztw.zze(jArr9, jArr10, jArr9);
                zztw.zzf(jArr9, jArr9);
                zztw.zzf(jArr9, jArr9);
                zztw.zze(jArr, jArr9, jArr);
                zztw.zze(jArr, jArr, jArr8);
                zztw.zze(jArr, jArr, jArr4);
                zztw.zzf(jArr6, jArr);
                zztw.zze(jArr6, jArr6, jArr5);
                zztw.zzb(jArr7, jArr6, jArr4);
                if (zze(jArr7)) {
                    zztw.zza(jArr7, jArr6, jArr4);
                    if (zze(jArr7)) {
                        zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot convert given bytes to extended projective coordinates. No square root exists for modulo 2^255-19");
                        return false;
                    }
                    zztw.zze(jArr, jArr, zztr.zzc);
                }
                if (zze(jArr)) {
                    b2 = UByte.MAX_VALUE;
                } else {
                    byte b3 = bArr3[31];
                    b2 = UByte.MAX_VALUE;
                    if (((b3 & UByte.MAX_VALUE) >> 7) != 0) {
                        zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot convert given bytes to extended projective coordinates. Computed x is zero and encoded x's least significant bit is not zero");
                        return false;
                    }
                }
                if (zzf(jArr) == ((bArr3[31] & b2) >> 7)) {
                    zzm(jArr, jArr);
                }
                zztw.zze(jArr3, jArr, jArrZzg);
                zzto zztoVar = new zzto(new zztn(jArr, jArrZzg, jArr2), jArr3);
                zztl[] zztlVarArr = new zztl[8];
                zztlVarArr[0] = new zztl(zztoVar);
                zztm zztmVar = new zztm(new zztn(), new long[10]);
                zzi(zztmVar, zztoVar.zza);
                zzto zztoVar2 = new zzto(zztmVar);
                for (int i11 = 1; i11 < 8; i11++) {
                    zzg(zztmVar, zztoVar2, zztlVarArr[i11 - 1]);
                    zztlVarArr[i11] = new zztl(new zzto(zztmVar));
                }
                byte[] bArrZzl = zzl(bArrDigest);
                byte[] bArrZzl2 = zzl(bArrCopyOfRange);
                zztm zztmVar2 = new zztm(zzc);
                zzto zztoVar3 = new zzto();
                int i12 = b2;
                while (i12 >= 0 && bArrZzl[i12] == 0 && bArrZzl2[i12] == 0) {
                    i12--;
                }
                while (i12 >= 0) {
                    zzi(zztmVar2, new zztn(zztmVar2));
                    byte b4 = bArrZzl[i12];
                    if (b4 > 0) {
                        zzto.zza(zztoVar3, zztmVar2);
                        zzg(zztmVar2, zztoVar3, zztlVarArr[bArrZzl[i12] / 2]);
                    } else if (b4 < 0) {
                        zzto.zza(zztoVar3, zztmVar2);
                        zzh(zztmVar2, zztoVar3, zztlVarArr[(-bArrZzl[i12]) / 2]);
                    }
                    byte b5 = bArrZzl2[i12];
                    if (b5 > 0) {
                        zzto.zza(zztoVar3, zztmVar2);
                        zzg(zztmVar2, zztoVar3, zztr.zze[bArrZzl2[i12] / 2]);
                    } else if (b5 < 0) {
                        zzto.zza(zztoVar3, zztmVar2);
                        zzh(zztmVar2, zztoVar3, zztr.zze[(-bArrZzl2[i12]) / 2]);
                    }
                    i12--;
                }
                byte[] bArrZzb = new zztn(zztmVar2).zzb();
                for (int i13 = 0; i13 < 32; i13++) {
                    if (bArrZzb[i13] != bArr2[i13]) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static void zzd() {
        if (zztr.zza != null) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Could not initialize Ed25519.");
    }

    public static /* synthetic */ boolean zze(long[] jArr) {
        long[] jArr2 = new long[11];
        System.arraycopy(jArr, 0, jArr2, 0, 10);
        zztw.zzd(jArr2);
        byte[] bArrZzh = zztw.zzh(jArr2);
        for (int i = 0; i < 32; i++) {
            if (bArrZzh[i] != 0) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ int zzf(long[] jArr) {
        return zztw.zzh(jArr)[0] & 1;
    }

    private static void zzg(zztm zztmVar, zzto zztoVar, zztk zztkVar) {
        zztn zztnVar = zztoVar.zza;
        zztn zztnVar2 = zztmVar.zza;
        long[] jArr = new long[10];
        long[] jArr2 = zztnVar2.zza;
        long[] jArr3 = zztnVar.zzb;
        long[] jArr4 = zztnVar.zza;
        zztw.zza(jArr2, jArr3, jArr4);
        long[] jArr5 = zztnVar2.zzb;
        zztw.zzb(jArr5, jArr3, jArr4);
        zztw.zze(jArr5, jArr5, zztkVar.zzb);
        long[] jArr6 = zztkVar.zza;
        long[] jArr7 = zztnVar2.zzc;
        zztw.zze(jArr7, jArr2, jArr6);
        long[] jArr8 = zztmVar.zzb;
        zztw.zze(jArr8, zztoVar.zzb, zztkVar.zzc);
        zztkVar.zza(jArr2, zztnVar.zzc);
        zztw.zza(jArr, jArr2, jArr2);
        zztw.zzb(jArr2, jArr7, jArr5);
        zztw.zza(jArr5, jArr7, jArr5);
        zztw.zza(jArr7, jArr, jArr8);
        zztw.zzb(jArr8, jArr, jArr8);
    }

    private static void zzh(zztm zztmVar, zzto zztoVar, zztk zztkVar) {
        zztn zztnVar = zztoVar.zza;
        zztn zztnVar2 = zztmVar.zza;
        long[] jArr = new long[10];
        long[] jArr2 = zztnVar2.zza;
        long[] jArr3 = zztnVar.zzb;
        long[] jArr4 = zztnVar.zza;
        zztw.zza(jArr2, jArr3, jArr4);
        long[] jArr5 = zztnVar2.zzb;
        zztw.zzb(jArr5, jArr3, jArr4);
        zztw.zze(jArr5, jArr5, zztkVar.zza);
        long[] jArr6 = zztkVar.zzb;
        long[] jArr7 = zztnVar2.zzc;
        zztw.zze(jArr7, jArr2, jArr6);
        long[] jArr8 = zztmVar.zzb;
        zztw.zze(jArr8, zztoVar.zzb, zztkVar.zzc);
        zztkVar.zza(jArr2, zztnVar.zzc);
        zztw.zza(jArr, jArr2, jArr2);
        zztw.zzb(jArr2, jArr7, jArr5);
        zztw.zza(jArr5, jArr7, jArr5);
        zztw.zzb(jArr7, jArr, jArr8);
        zztw.zza(jArr8, jArr, jArr8);
    }

    private static void zzi(zztm zztmVar, zztn zztnVar) {
        zztn zztnVar2 = zztmVar.zza;
        long[] jArr = zztnVar2.zza;
        long[] jArr2 = zztnVar.zza;
        long[] jArr3 = new long[10];
        zztw.zzf(jArr, jArr2);
        long[] jArr4 = zztnVar2.zzc;
        long[] jArr5 = zztnVar.zzb;
        zztw.zzf(jArr4, jArr5);
        long[] jArr6 = zztmVar.zzb;
        zztw.zzf(jArr6, zztnVar.zzc);
        zztw.zza(jArr6, jArr6, jArr6);
        long[] jArr7 = zztnVar2.zzb;
        zztw.zza(jArr7, jArr2, jArr5);
        zztw.zzf(jArr3, jArr7);
        zztw.zza(jArr7, jArr4, jArr);
        zztw.zzb(jArr4, jArr4, jArr);
        zztw.zzb(jArr, jArr3, jArr7);
        zztw.zzb(jArr6, jArr6, jArr4);
    }

    private static int zzj(int i, int i2) {
        int i3 = (~(i ^ i2)) & 255;
        int i4 = i3 & (i3 << 4);
        int i5 = i4 & (i4 << 2);
        return (i5 & (i5 + i5)) >> 7;
    }

    private static void zzk(zztk zztkVar, int i, byte b2) {
        zztk[][] zztkVarArr = zztr.zzd;
        zztk zztkVar2 = zztkVarArr[i][0];
        int i2 = (b2 & UByte.MAX_VALUE) >> 7;
        int i3 = (-i2) & b2;
        int i4 = b2 - (i3 + i3);
        zztkVar.zzb(zztkVar2, zzj(i4, 1));
        zztkVar.zzb(zztkVarArr[i][1], zzj(i4, 2));
        zztkVar.zzb(zztkVarArr[i][2], zzj(i4, 3));
        zztkVar.zzb(zztkVarArr[i][3], zzj(i4, 4));
        zztkVar.zzb(zztkVarArr[i][4], zzj(i4, 5));
        zztkVar.zzb(zztkVarArr[i][5], zzj(i4, 6));
        zztkVar.zzb(zztkVarArr[i][6], zzj(i4, 7));
        zztkVar.zzb(zztkVarArr[i][7], zzj(i4, 8));
        long[] jArr = zztkVar.zzc;
        long[] jArr2 = zztkVar.zza;
        long[] jArrCopyOf = Arrays.copyOf(zztkVar.zzb, 10);
        long[] jArrCopyOf2 = Arrays.copyOf(jArr2, 10);
        long[] jArrCopyOf3 = Arrays.copyOf(jArr, 10);
        zzm(jArrCopyOf3, jArrCopyOf3);
        zztkVar.zzb(new zztk(jArrCopyOf, jArrCopyOf2, jArrCopyOf3), i2);
    }

    private static byte[] zzl(byte[] bArr) {
        int i;
        byte[] bArr2 = new byte[256];
        for (int i2 = 0; i2 < 256; i2++) {
            bArr2[i2] = (byte) (1 & ((bArr[i2 >> 3] & UByte.MAX_VALUE) >> (i2 & 7)));
        }
        for (int i3 = 0; i3 < 256; i3++) {
            if (bArr2[i3] != 0) {
                for (int i4 = 1; i4 <= 6 && (i = i3 + i4) < 256; i4++) {
                    byte b2 = bArr2[i];
                    if (b2 != 0) {
                        byte b3 = bArr2[i3];
                        int i5 = b2 << i4;
                        int i6 = b3 + i5;
                        if (i6 <= 15) {
                            bArr2[i3] = (byte) i6;
                            bArr2[i] = 0;
                        } else {
                            int i7 = b3 - i5;
                            if (i7 >= -15) {
                                bArr2[i3] = (byte) i7;
                                while (true) {
                                    if (i >= 256) {
                                        break;
                                    }
                                    if (bArr2[i] == 0) {
                                        bArr2[i] = 1;
                                        break;
                                    }
                                    bArr2[i] = 0;
                                    i++;
                                }
                            }
                        }
                    }
                }
            }
        }
        return bArr2;
    }

    private static void zzm(long[] jArr, long[] jArr2) {
        for (int i = 0; i < jArr2.length; i++) {
            jArr[i] = -jArr2[i];
        }
    }

    private static long zzn(byte[] bArr, int i) {
        return (((long) (bArr[i + 2] & UByte.MAX_VALUE)) << 16) | (bArr[i] & 255) | (((long) (bArr[i + 1] & UByte.MAX_VALUE)) << 8);
    }

    private static long zzo(byte[] bArr, int i) {
        return (((long) (bArr[i + 3] & UByte.MAX_VALUE)) << 24) | zzn(bArr, i);
    }
}
