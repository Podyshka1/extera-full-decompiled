package kotlin.text;

import kotlin.ExperimentalStdlibApi;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\n\u0010\u000b\u001a\u001d\u0010\f\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0002\u0010\r\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u000e2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001d\u0010\u0011\u001a\u00020\u000e*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0012\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00132\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001d\u0010\u0016\u001a\u00020\u0013*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0017\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00182\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001d\u0010\u001b\u001a\u00020\u0018*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0002\u0010\u001c\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u001d2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001d\u0010 \u001a\u00020\u001d*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0002\u0010!¨\u0006\""}, d2 = {"toHexString", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/UByteArray;", "format", "Lkotlin/text/HexFormat;", "toHexString-zHuV2wU", "([BLkotlin/text/HexFormat;)Ljava/lang/String;", "startIndex", _UrlKt.FRAGMENT_ENCODE_SET, "endIndex", "toHexString-lZCiFrA", "([BIILkotlin/text/HexFormat;)Ljava/lang/String;", "hexToUByteArray", "(Ljava/lang/String;Lkotlin/text/HexFormat;)[B", "Lkotlin/UByte;", "toHexString-ZQbaR00", "(BLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToUByte", "(Ljava/lang/String;Lkotlin/text/HexFormat;)B", "Lkotlin/UShort;", "toHexString-r3ox_E0", "(SLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToUShort", "(Ljava/lang/String;Lkotlin/text/HexFormat;)S", "Lkotlin/UInt;", "toHexString-8M7LxHw", "(ILkotlin/text/HexFormat;)Ljava/lang/String;", "hexToUInt", "(Ljava/lang/String;Lkotlin/text/HexFormat;)I", "Lkotlin/ULong;", "toHexString-8UJCm-I", "(JLkotlin/text/HexFormat;)Ljava/lang/String;", "hexToULong", "(Ljava/lang/String;Lkotlin/text/HexFormat;)J", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class UHexExtensionsKt {
    @SinceKotlin(version = "2.2")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    /* JADX INFO: renamed from: toHexString-zHuV2wU, reason: not valid java name */
    private static final String m4426toHexStringzHuV2wU(byte[] bArr, HexFormat hexFormat) {
        return HexExtensionsKt.toHexString(bArr, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-zHuV2wU$default, reason: not valid java name */
    public static /* synthetic */ String m4427toHexStringzHuV2wU$default(byte[] bArr, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return HexExtensionsKt.toHexString(bArr, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-lZCiFrA$default, reason: not valid java name */
    public static /* synthetic */ String m4423toHexStringlZCiFrA$default(byte[] bArr, int i, int i2, HexFormat hexFormat, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = UByteArray.m3164getSizeimpl(bArr);
        }
        if ((i3 & 4) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return HexExtensionsKt.toHexString(bArr, i, i2, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    /* JADX INFO: renamed from: toHexString-lZCiFrA, reason: not valid java name */
    private static final String m4422toHexStringlZCiFrA(byte[] bArr, int i, int i2, HexFormat hexFormat) {
        return HexExtensionsKt.toHexString(bArr, i, i2, hexFormat);
    }

    public static /* synthetic */ byte[] hexToUByteArray$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return UByteArray.m3158constructorimpl(HexExtensionsKt.hexToByteArray(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    private static final byte[] hexToUByteArray(String str, HexFormat hexFormat) {
        return UByteArray.m3158constructorimpl(HexExtensionsKt.hexToByteArray(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: toHexString-ZQbaR00, reason: not valid java name */
    private static final String m4420toHexStringZQbaR00(byte b2, HexFormat hexFormat) {
        return HexExtensionsKt.toHexString(b2, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-ZQbaR00$default, reason: not valid java name */
    public static /* synthetic */ String m4421toHexStringZQbaR00$default(byte b2, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return HexExtensionsKt.toHexString(b2, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final byte hexToUByte(String str, HexFormat hexFormat) {
        return UByte.m3105constructorimpl(HexExtensionsKt.hexToByte(str, hexFormat));
    }

    public static /* synthetic */ byte hexToUByte$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return UByte.m3105constructorimpl(HexExtensionsKt.hexToByte(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: toHexString-r3ox_E0, reason: not valid java name */
    private static final String m4424toHexStringr3ox_E0(short s, HexFormat hexFormat) {
        return HexExtensionsKt.toHexString(s, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-r3ox_E0$default, reason: not valid java name */
    public static /* synthetic */ String m4425toHexStringr3ox_E0$default(short s, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return HexExtensionsKt.toHexString(s, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final short hexToUShort(String str, HexFormat hexFormat) {
        return UShort.m3368constructorimpl(HexExtensionsKt.hexToShort(str, hexFormat));
    }

    public static /* synthetic */ short hexToUShort$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return UShort.m3368constructorimpl(HexExtensionsKt.hexToShort(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: toHexString-8M7LxHw, reason: not valid java name */
    private static final String m4416toHexString8M7LxHw(int i, HexFormat hexFormat) {
        return HexExtensionsKt.toHexString(i, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-8M7LxHw$default, reason: not valid java name */
    public static /* synthetic */ String m4417toHexString8M7LxHw$default(int i, HexFormat hexFormat, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return HexExtensionsKt.toHexString(i, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int hexToUInt(String str, HexFormat hexFormat) {
        return UInt.m3182constructorimpl(HexExtensionsKt.hexToInt(str, hexFormat));
    }

    public static /* synthetic */ int hexToUInt$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return UInt.m3182constructorimpl(HexExtensionsKt.hexToInt(str, hexFormat));
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* JADX INFO: renamed from: toHexString-8UJCm-I, reason: not valid java name */
    private static final String m4418toHexString8UJCmI(long j, HexFormat hexFormat) {
        return HexExtensionsKt.toHexString(j, hexFormat);
    }

    /* JADX INFO: renamed from: toHexString-8UJCm-I$default, reason: not valid java name */
    public static /* synthetic */ String m4419toHexString8UJCmI$default(long j, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return HexExtensionsKt.toHexString(j, hexFormat);
    }

    @SinceKotlin(version = "2.2")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final long hexToULong(String str, HexFormat hexFormat) {
        return ULong.m3261constructorimpl(HexExtensionsKt.hexToLong(str, hexFormat));
    }

    public static /* synthetic */ long hexToULong$default(String str, HexFormat hexFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            hexFormat = HexFormat.INSTANCE.getDefault();
        }
        return ULong.m3261constructorimpl(HexExtensionsKt.hexToLong(str, hexFormat));
    }
}
