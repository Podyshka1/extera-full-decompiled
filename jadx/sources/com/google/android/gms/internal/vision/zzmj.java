package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes4.dex */
final class zzmj extends zzme {
    zzmj() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x006e, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a5, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.vision.zzme
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final int zza(int i, byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        byte b;
        long j;
        int i6 = 2;
        byte b2 = 0;
        if ((i2 | i3 | (bArr.length - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        long j2 = i2;
        int i7 = (int) (((long) i3) - j2);
        long j3 = 1;
        if (i7 >= 16) {
            i4 = 0;
            long j4 = j2;
            while (true) {
                if (i4 >= i7) {
                    i4 = i7;
                    break;
                }
                long j5 = j4 + 1;
                if (zzma.zza(bArr, j4) < 0) {
                    break;
                }
                i4++;
                j4 = j5;
            }
        } else {
            i4 = 0;
        }
        int i8 = i7 - i4;
        long j6 = j2 + ((long) i4);
        while (true) {
            byte b3 = b2;
            while (true) {
                if (i8 <= 0) {
                    break;
                }
                long j7 = j6 + j3;
                byte bZza = zzma.zza(bArr, j6);
                if (bZza < 0) {
                    b3 = bZza;
                    j6 = j7;
                    break;
                }
                i8--;
                b3 = bZza;
                j6 = j7;
            }
            if (i8 == 0) {
                return b2;
            }
            int i9 = i8 - 1;
            if (b3 >= -32) {
                if (b3 >= -16) {
                    i5 = i6;
                    b = b2;
                    j = j3;
                    if (i9 >= 3) {
                        i8 -= 4;
                        long j8 = j6 + j;
                        byte bZza2 = zzma.zza(bArr, j6);
                        if (bZza2 <= -65 && (((b3 << 28) + (bZza2 + 112)) >> 30) == 0) {
                            long j9 = j6 + 2;
                            if (zzma.zza(bArr, j8) > -65) {
                                break;
                            }
                            j6 += 3;
                            if (zzma.zza(bArr, j9) > -65) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        return zza(bArr, b3, j6, i9);
                    }
                } else if (i9 >= i6) {
                    i8 -= 3;
                    i5 = i6;
                    b = b2;
                    long j10 = j6 + j3;
                    byte bZza3 = zzma.zza(bArr, j6);
                    if (bZza3 > -65) {
                        break;
                    }
                    j = j3;
                    if ((b3 == -32 && bZza3 < -96) || (b3 == -19 && bZza3 >= -96)) {
                        break;
                    }
                    j6 += 2;
                    if (zzma.zza(bArr, j10) > -65) {
                        break;
                    }
                } else {
                    return zza(bArr, b3, j6, i9);
                }
            } else if (i9 != 0) {
                i8 -= 2;
                if (b3 < -62) {
                    break;
                }
                long j11 = j6 + j3;
                if (zzma.zza(bArr, j6) > -65) {
                    break;
                }
                j6 = j11;
                i5 = i6;
                b = b2;
                j = j3;
            } else {
                return b3;
            }
            i6 = i5;
            j3 = j;
            b2 = b;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.vision.zzme
    final String zzb(byte[] bArr, int i, int i2) throws zzjk {
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte bZza = zzma.zza(bArr, i);
            if (!zzmf.zzd(bZza)) {
                break;
            }
            i++;
            zzmf.zzb(bZza, cArr, i4);
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte bZza2 = zzma.zza(bArr, i);
            if (zzmf.zzd(bZza2)) {
                int i7 = i5 + 1;
                zzmf.zzb(bZza2, cArr, i5);
                while (i6 < i3) {
                    byte bZza3 = zzma.zza(bArr, i6);
                    if (!zzmf.zzd(bZza3)) {
                        break;
                    }
                    i6++;
                    zzmf.zzb(bZza3, cArr, i7);
                    i7++;
                }
                i5 = i7;
                i = i6;
            } else if (zzmf.zze(bZza2)) {
                if (i6 < i3) {
                    i += 2;
                    zzmf.zzb(bZza2, zzma.zza(bArr, i6), cArr, i5);
                    i5++;
                } else {
                    throw zzjk.zzh();
                }
            } else if (zzmf.zzf(bZza2)) {
                if (i6 < i3 - 1) {
                    int i8 = i + 2;
                    i += 3;
                    zzmf.zzb(bZza2, zzma.zza(bArr, i6), zzma.zza(bArr, i8), cArr, i5);
                    i5++;
                } else {
                    throw zzjk.zzh();
                }
            } else {
                if (i6 >= i3 - 2) {
                    throw zzjk.zzh();
                }
                byte bZza4 = zzma.zza(bArr, i6);
                int i9 = i + 3;
                byte bZza5 = zzma.zza(bArr, i + 2);
                i += 4;
                zzmf.zzb(bZza2, bZza4, bZza5, zzma.zza(bArr, i9), cArr, i5);
                i5 += 2;
            }
        }
        return new String(cArr, 0, i5);
    }

    @Override // com.google.android.gms.internal.vision.zzme
    final int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        long j;
        long j2;
        long j3;
        int i3;
        char cCharAt;
        long j4 = i;
        long j5 = ((long) i2) + j4;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            j = 1;
            if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            zzma.zza(bArr, j4, (byte) cCharAt);
            i4++;
            j4 = 1 + j4;
        }
        if (i4 == length) {
            return (int) j4;
        }
        while (i4 < length) {
            char cCharAt3 = charSequence.charAt(i4);
            if (cCharAt3 < 128 && j4 < j5) {
                zzma.zza(bArr, j4, (byte) cCharAt3);
                j3 = j5;
                j2 = j;
                j4 += j;
            } else if (cCharAt3 >= 2048 || j4 > j5 - 2) {
                j2 = j;
                if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j4 > j5 - 3) {
                    j3 = j5;
                    if (j4 <= j3 - 4) {
                        int i5 = i4 + 1;
                        if (i5 != length) {
                            char cCharAt4 = charSequence.charAt(i5);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                zzma.zza(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                zzma.zza(bArr, j4 + j2, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j6 = j4 + 3;
                                zzma.zza(bArr, j4 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                j4 += 4;
                                zzma.zza(bArr, j6, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new zzmg(i4 - 1, length);
                    }
                    if (55296 > cCharAt3 || cCharAt3 > 57343 || ((i3 = i4 + 1) != length && Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                        StringBuilder sb2 = new StringBuilder(46);
                        sb2.append("Failed writing ");
                        sb2.append(cCharAt3);
                        sb2.append(" at index ");
                        sb2.append(j4);
                        throw new ArrayIndexOutOfBoundsException(sb2.toString());
                    }
                    throw new zzmg(i4, length);
                }
                zzma.zza(bArr, j4, (byte) ((cCharAt3 >>> '\f') | 480));
                j3 = j5;
                long j7 = j4 + 2;
                zzma.zza(bArr, j4 + j2, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                j4 += 3;
                zzma.zza(bArr, j7, (byte) ((cCharAt3 & '?') | 128));
            } else {
                j2 = j;
                long j8 = j4 + j2;
                zzma.zza(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                j4 += 2;
                zzma.zza(bArr, j8, (byte) ((cCharAt3 & '?') | 128));
                j3 = j5;
            }
            i4++;
            j = j2;
            j5 = j3;
        }
        return (int) j4;
    }

    private static int zza(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return zzmd.zzb(i);
        }
        if (i2 == 1) {
            return zzmd.zzb(i, zzma.zza(bArr, j));
        }
        if (i2 == 2) {
            return zzmd.zzb(i, zzma.zza(bArr, j), zzma.zza(bArr, j + 1));
        }
        throw new AssertionError();
    }
}
