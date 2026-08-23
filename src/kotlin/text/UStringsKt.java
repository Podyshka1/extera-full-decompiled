package kotlin.text;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByte$$ExternalSyntheticBackport0;
import kotlin.UByte$$ExternalSyntheticBackport3;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\b\b\u0010\t\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\b\u000b\u0010\f\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0013\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0011\u001a\u001b\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0012\u001a\u0013\u0010\u0013\u001a\u00020\u0007*\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0014\u001a\u001b\u0010\u0013\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0015\u001a\u0013\u0010\u0016\u001a\u00020\n*\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0017\u001a\u001b\u0010\u0016\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0018\u001a\u0013\u0010\u0019\u001a\u00020\r*\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0002\u0010\u001a\u001a\u001b\u0010\u0019\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u001b\u001a\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0087\u0080\u0004\u001a\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004\u001a\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0087\u0080\u0004\u001a\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004\u001a\u0010\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0087\u0080\u0004\u001a\u0018\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004\u001a\u0010\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0087\u0080\u0004\u001a\u0018\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¨\u0006 "}, d2 = {"toString", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/UByte;", "radix", _UrlKt.FRAGMENT_ENCODE_SET, "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toUByteOrNull", "toUShortOrNull", "toUIntOrNull", "toULongOrNull", "kotlin-stdlib"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
@JvmName(name = "UStringsKt")
public final class UStringsKt {
    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-LxnNnR4, reason: not valid java name */
    public static final String m4633toStringLxnNnR4(byte b2, int i) {
        return Integer.toString(b2 & UByte.MAX_VALUE, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-olVBNx4, reason: not valid java name */
    public static final String m4635toStringolVBNx4(short s, int i) {
        return Integer.toString(s & UShort.MAX_VALUE, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-V7xB4Y4, reason: not valid java name */
    public static final String m4634toStringV7xB4Y4(int i, int i2) {
        return UnsignedKt.ulongToString(((long) i) & 4294967295L, CharsKt__CharJVMKt.checkRadix(i2));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: toString-JSWoG40, reason: not valid java name */
    public static final String m4632toStringJSWoG40(long j, int i) {
        return UnsignedKt.ulongToString(j, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.5")
    public static final byte toUByte(String str) {
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return (byte) 0;
    }

    @SinceKotlin(version = "1.5")
    public static final byte toUByte(String str, int i) {
        UByte uByteOrNull = toUByteOrNull(str, i);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return (byte) 0;
    }

    @SinceKotlin(version = "1.5")
    public static final short toUShort(String str) {
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return (short) 0;
    }

    @SinceKotlin(version = "1.5")
    public static final short toUShort(String str, int i) {
        UShort uShortOrNull = toUShortOrNull(str, i);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return (short) 0;
    }

    @SinceKotlin(version = "1.5")
    public static final int toUInt(String str) {
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return 0;
    }

    @SinceKotlin(version = "1.5")
    public static final int toUInt(String str, int i) {
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return 0;
    }

    @SinceKotlin(version = "1.5")
    public static final long toULong(String str) {
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return 0L;
    }

    @SinceKotlin(version = "1.5")
    public static final long toULong(String str, int i) {
        ULong uLongOrNull = toULongOrNull(str, i);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return 0L;
    }

    @SinceKotlin(version = "1.5")
    public static final UByte toUByteOrNull(String str) {
        return toUByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final UByte toUByteOrNull(String str, int i) {
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.m3386constructorimpl(255) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UByte.m3303boximpl(UByte.m3309constructorimpl((byte) data));
    }

    @SinceKotlin(version = "1.5")
    public static final UShort toUShortOrNull(String str) {
        return toUShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final UShort toUShortOrNull(String str, int i) {
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ Integer.MIN_VALUE, UInt.m3386constructorimpl(65535) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UShort.m3566boximpl(UShort.m3572constructorimpl((short) data));
    }

    @SinceKotlin(version = "1.5")
    public static final UInt toUIntOrNull(String str) {
        return toUIntOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final UInt toUIntOrNull(String str, int i) {
        int i2;
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int iM3386constructorimpl = UInt.m3386constructorimpl(i);
        int iM755m = 119304647;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return null;
            }
            if (Integer.compare(i3 ^ Integer.MIN_VALUE, iM755m ^ Integer.MIN_VALUE) > 0) {
                if (iM755m == 119304647) {
                    iM755m = UByte$$ExternalSyntheticBackport0.m755m(-1, iM3386constructorimpl);
                    if (Integer.compare(i3 ^ Integer.MIN_VALUE, iM755m ^ Integer.MIN_VALUE) > 0) {
                    }
                }
                return null;
            }
            int iM3386constructorimpl2 = UInt.m3386constructorimpl(i3 * iM3386constructorimpl);
            int iM3386constructorimpl3 = UInt.m3386constructorimpl(UInt.m3386constructorimpl(iDigitOf) + iM3386constructorimpl2);
            if (Integer.compare(iM3386constructorimpl3 ^ Integer.MIN_VALUE, iM3386constructorimpl2 ^ Integer.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            i3 = iM3386constructorimpl3;
        }
        return UInt.m3380boximpl(i3);
    }

    @SinceKotlin(version = "1.5")
    public static final ULong toULongOrNull(String str) {
        return toULongOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final ULong toULongOrNull(String str, int i) {
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long jM3465constructorimpl = ULong.m3465constructorimpl(i);
        long j = 0;
        long jM758m = 512409557603043100L;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return null;
            }
            if (Long.compare(j ^ Long.MIN_VALUE, jM758m ^ Long.MIN_VALUE) > 0) {
                if (jM758m == 512409557603043100L) {
                    jM758m = UByte$$ExternalSyntheticBackport3.m758m(-1L, jM3465constructorimpl);
                    if (Long.compare(j ^ Long.MIN_VALUE, jM758m ^ Long.MIN_VALUE) > 0) {
                    }
                }
                return null;
            }
            long jM3465constructorimpl2 = ULong.m3465constructorimpl(j * jM3465constructorimpl);
            long jM3465constructorimpl3 = ULong.m3465constructorimpl(ULong.m3465constructorimpl(((long) UInt.m3386constructorimpl(iDigitOf)) & 4294967295L) + jM3465constructorimpl2);
            if (Long.compare(jM3465constructorimpl3 ^ Long.MIN_VALUE, jM3465constructorimpl2 ^ Long.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            j = jM3465constructorimpl3;
        }
        return ULong.m3459boximpl(j);
    }
}
