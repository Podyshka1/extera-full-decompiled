package okio.internal;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;

/* JADX INFO: renamed from: okio.internal.-ByteString, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public abstract class ByteString {
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static final void commonWrite(okio.ByteString byteString, Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        buffer.write(byteString.getData$okio(), i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x010f, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x01af, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005d, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0065, code lost:
    
        r6 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00a0, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int codePointIndexToCharIndex(byte[] bArr, int i) {
        byte b;
        int i2;
        int length = bArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        loop0: while (true) {
            if (i3 >= length) {
                break;
            }
            byte b2 = bArr[i3];
            if (b2 >= 0) {
                int i6 = i5 + 1;
                if (i5 != i) {
                    if ((b2 != 10 && b2 != 13 && ((b2 >= 0 && b2 < 32) || (127 <= b2 && b2 < 160))) || b2 == 65533) {
                        break;
                    }
                    i4 += b2 < 65536 ? 1 : 2;
                    i3++;
                    while (true) {
                        i5 = i6;
                        if (i3 < length && (b = bArr[i3]) >= 0) {
                            i3++;
                            i6 = i5 + 1;
                            if (i5 != i) {
                                if ((b != 10 && b != 13 && ((b >= 0 && b < 32) || (127 <= b && b < 160))) || b == 65533) {
                                    break loop0;
                                }
                                i4 += b < 65536 ? 1 : 2;
                            } else {
                                return i4;
                            }
                        } else {
                            break;
                        }
                    }
                } else {
                    break;
                }
            } else if ((b2 >> 5) == -2) {
                int i7 = i3 + 1;
                if (length <= i7) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                byte b3 = bArr[i7];
                if ((b3 & 192) != 128) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                int i8 = (b2 << 6) ^ (b3 ^ 3968);
                if (i8 >= 128) {
                    int i9 = i5 + 1;
                    if (i5 != i) {
                        if ((i8 != 10 && i8 != 13 && ((i8 >= 0 && i8 < 32) || (127 <= i8 && i8 < 160))) || i8 == 65533) {
                            break;
                        }
                        i4 += i8 < 65536 ? 1 : 2;
                        Unit unit = Unit.INSTANCE;
                        i3 += 2;
                        i5 = i9;
                    } else {
                        break;
                    }
                } else {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
            } else if ((b2 >> 4) == -2) {
                int i10 = i3 + 2;
                if (length <= i10) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                byte b4 = bArr[i3 + 1];
                if ((b4 & 192) != 128) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                byte b5 = bArr[i10];
                if ((b5 & 192) != 128) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                int i11 = (b2 << 12) ^ ((b5 ^ (-123008)) ^ (b4 << 6));
                if (i11 < 2048) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                if (55296 <= i11 && i11 < 57344) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                i2 = i5 + 1;
                if (i5 != i) {
                    if ((i11 != 10 && i11 != 13 && ((i11 >= 0 && i11 < 32) || (127 <= i11 && i11 < 160))) || i11 == 65533) {
                        break;
                    }
                    i4 += i11 < 65536 ? 1 : 2;
                    Unit unit2 = Unit.INSTANCE;
                    i3 += 3;
                    i5 = i2;
                } else {
                    break;
                }
            } else {
                if ((b2 >> 3) != -2) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                int i12 = i3 + 3;
                if (length <= i12) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                byte b6 = bArr[i3 + 1];
                if ((b6 & 192) != 128) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                byte b7 = bArr[i3 + 2];
                if ((b7 & 192) != 128) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                byte b8 = bArr[i12];
                if ((b8 & 192) != 128) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                int i13 = (b2 << 18) ^ (((b8 ^ 3678080) ^ (b7 << 6)) ^ (b6 << 12));
                if (i13 > 1114111) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                if (55296 <= i13 && i13 < 57344) {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
                if (i13 >= 65536) {
                    i2 = i5 + 1;
                    if (i5 != i) {
                        if ((i13 != 10 && i13 != 13 && ((i13 >= 0 && i13 < 32) || (127 <= i13 && i13 < 160))) || i13 == 65533) {
                            break;
                        }
                        i4 += i13 < 65536 ? 1 : 2;
                        Unit unit3 = Unit.INSTANCE;
                        i3 += 4;
                        i5 = i2;
                    } else {
                        break;
                    }
                } else {
                    if (i5 == i) {
                        break;
                    }
                    return -1;
                }
            }
        }
        return -1;
    }
}
