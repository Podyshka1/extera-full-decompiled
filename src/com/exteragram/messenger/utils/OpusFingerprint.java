package com.exteragram.messenger.utils;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import kotlin.UByte;

/* JADX INFO: loaded from: classes4.dex */
public class OpusFingerprint {
    public final String vendor;

    private OpusFingerprint(String str) {
        this.vendor = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00cd, code lost:
    
        if (r15 < 16) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00dd, code lost:
    
        if (new java.lang.String(r3, 0, 8, java.nio.charset.StandardCharsets.US_ASCII).equals("OpusTags") != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00e1, code lost:
    
        r0 = java.nio.ByteBuffer.wrap(r3, 8, r15 - 8).order(java.nio.ByteOrder.LITTLE_ENDIAN);
        r1 = r0.getInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f0, code lost:
    
        if (r1 < 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00f8, code lost:
    
        if (r1 <= (r0.remaining() - 4)) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00fc, code lost:
    
        r4 = new java.lang.String(r3, r0.position(), r1, java.nio.charset.StandardCharsets.UTF_8);
        r0.position(r0.position() + r1);
        r1 = r0.getInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0113, code lost:
    
        if (r1 < 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x011a, code lost:
    
        if (r1 <= (r0.remaining() / 4)) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x011e, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011f, code lost:
    
        if (r6 >= r1) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0125, code lost:
    
        if (r0.remaining() >= 4) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0129, code lost:
    
        r3 = r0.getInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x012d, code lost:
    
        if (r3 < 0) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0133, code lost:
    
        if (r3 <= r0.remaining()) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0137, code lost:
    
        r0.position(r0.position() + r3);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0142, code lost:
    
        r0 = new com.exteragram.messenger.utils.OpusFingerprint(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0147, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x014a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x014b, code lost:
    
        r14 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x014e, code lost:
    
        if ((r13 & 4) == 0) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0152, code lost:
    
        r6 = r14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static OpusFingerprint parse(String str) throws Throwable {
        OpusFingerprint opusFingerprint;
        try {
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(str)));
            try {
                byte[] bArr = new byte[65536];
                byte[] bArr2 = new byte[255];
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                boolean z = false;
                loop0: while (i2 + 27 <= 262144) {
                    if (dataInputStream.readInt() == 1332176723 && dataInputStream.readUnsignedByte() == 0) {
                        int unsignedByte = dataInputStream.readUnsignedByte();
                        dataInputStream.readLong();
                        int i7 = dataInputStream.readInt();
                        opusFingerprint = null;
                        try {
                            int iReverseBytes = Integer.reverseBytes(dataInputStream.readInt());
                            dataInputStream.readInt();
                            int unsignedByte2 = dataInputStream.readUnsignedByte();
                            if (i2 == 0) {
                                if (unsignedByte == 2 && iReverseBytes == 0) {
                                    i3 = i7;
                                    if ((unsignedByte & 1) != i5 && (unsignedByte & (-8)) == 0) {
                                        i4 = iReverseBytes + 1;
                                        i2 += unsignedByte2 + 27;
                                        if (i2 <= 262144) {
                                            dataInputStream.readFully(bArr2, i, unsignedByte2);
                                            int i8 = i;
                                            while (true) {
                                                if (i8 < unsignedByte2) {
                                                    int i9 = bArr2[i8] & UByte.MAX_VALUE;
                                                    int i10 = i6 + i9;
                                                    if (i10 > 65536 || (i2 = i2 + i9) > 262144) {
                                                        break loop0;
                                                    }
                                                    dataInputStream.readFully(bArr, i6, i9);
                                                    i5 = i9 == 255 ? 1 : 0;
                                                    if (i5 == 0) {
                                                        if (!z) {
                                                            if (i10 < 19 || !new String(bArr, 0, 8, StandardCharsets.US_ASCII).equals("OpusHead") || (bArr[8] & UByte.MAX_VALUE) > 15 || bArr[9] == 0) {
                                                                break loop0;
                                                            }
                                                            i6 = 0;
                                                            z = true;
                                                        } else {
                                                            break loop0;
                                                        }
                                                    } else {
                                                        i6 = i10;
                                                    }
                                                    i8++;
                                                    i = 0;
                                                } else {
                                                    try {
                                                        break;
                                                    } catch (IOException unused) {
                                                        return opusFingerprint;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (i7 == i3 && iReverseBytes == i4 && (unsignedByte & 2) == 0) {
                                if ((unsignedByte & 1) != i5) {
                                }
                            }
                            dataInputStream.close();
                            return opusFingerprint;
                        } catch (Throwable th) {
                            th = th;
                            Throwable th2 = th;
                            try {
                                dataInputStream.close();
                                throw th2;
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                                throw th2;
                            }
                        }
                    }
                    opusFingerprint = null;
                    dataInputStream.close();
                    return opusFingerprint;
                }
                dataInputStream.close();
                return null;
            } catch (Throwable th4) {
                th = th4;
                opusFingerprint = null;
            }
        } catch (IOException unused2) {
            return null;
        }
    }
}
