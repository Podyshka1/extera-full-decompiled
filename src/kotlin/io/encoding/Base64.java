package kotlin.io.encoding;

import com.android.dex.Dex$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.WasExperimental;
import kotlin.collections.AbstractList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "2.2")
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\t\b\u0017\u0018\u0000 B2\u00020\u0001:\u0002ABB)\bB\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\bH\u0087\u0080\u0004J&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0086\u0080\u0004J8\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0086\u0080\u0004J&\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0086\u0080\u0004JA\u0010\u001f\u001a\u0002H \"\f\b\u0000\u0010 *\u00060!j\u0002`\"2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u0002H 2\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0087\u0080\b¢\u0006\u0002\u0010#J&\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0086\u0080\u0004J8\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0086\u0080\u0004J&\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0086\u0080\u0004J8\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u0006H\u0086\u0080\u0004J'\u0010'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0080\u0080\u0004¢\u0006\u0002\b(J7\u0010)\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0080\u0080\u0004¢\u0006\u0002\b*J\u0017\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0006H\u0080\u0080\u0004¢\u0006\u0002\b-J\n\u0010.\u001a\u00020\u0003H\u0082\u0080\u0004J2\u0010/\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0082\u0080\u0004J'\u00100\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0080\u0080\u0004¢\u0006\u0002\b1J'\u00102\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0080\u0080\u0004¢\u0006\u0002\b3J\u0017\u00104\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0080\u0080\u0004¢\u0006\u0002\b5J*\u00106\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0006H\u0082\u0080\u0004J\u0012\u00109\u001a\u00020:2\u0006\u00107\u001a\u00020\u0006H\u0082\u0080\u0004J\"\u0010;\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0082\u0080\u0004J'\u0010<\u001a\u00020:2\u0006\u0010,\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0080\u0080\u0004¢\u0006\u0002\b=J\"\u0010>\u001a\u00020:2\u0006\u0010?\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006H\u0082\u0080\u0004R\u0015\u0010\u0002\u001a\u00020\u0003X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0004\u001a\u00020\u0003X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0015\u0010\u0005\u001a\u00020\u0006X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\u0007\u001a\u00020\bX\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000f\u0010\u0012\u001a\u00020\u0006X\u0082\u0084\b¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lkotlin/io/encoding/Base64;", _UrlKt.FRAGMENT_ENCODE_SET, "isUrlSafe", _UrlKt.FRAGMENT_ENCODE_SET, "isMimeScheme", "mimeLineLength", _UrlKt.FRAGMENT_ENCODE_SET, "paddingOption", "Lkotlin/io/encoding/Base64$PaddingOption;", "<init>", "(ZZILkotlin/io/encoding/Base64$PaddingOption;)V", "isUrlSafe$kotlin_stdlib", "()Z", "isMimeScheme$kotlin_stdlib", "getMimeLineLength$kotlin_stdlib", "()I", "getPaddingOption$kotlin_stdlib", "()Lkotlin/io/encoding/Base64$PaddingOption;", "mimeGroupsPerLine", "withPadding", "option", "encodeToByteArray", _UrlKt.FRAGMENT_ENCODE_SET, "source", "startIndex", "endIndex", "encodeIntoByteArray", "destination", "destinationOffset", "encode", _UrlKt.FRAGMENT_ENCODE_SET, "encodeToAppendable", "A", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;", "decode", "decodeIntoByteArray", _UrlKt.FRAGMENT_ENCODE_SET, "encodeToByteArrayImpl", "encodeToByteArrayImpl$kotlin_stdlib", "encodeIntoByteArrayImpl", "encodeIntoByteArrayImpl$kotlin_stdlib", "encodeSize", "sourceSize", "encodeSize$kotlin_stdlib", "shouldPadOnEncode", "decodeImpl", "decodeSize", "decodeSize$kotlin_stdlib", "charsToBytesImpl", "charsToBytesImpl$kotlin_stdlib", "bytesToStringImpl", "bytesToStringImpl$kotlin_stdlib", "handlePaddingSymbol", "padIndex", "byteStart", "checkPaddingIsAllowed", _UrlKt.FRAGMENT_ENCODE_SET, "skipIllegalSymbolsIfMime", "checkSourceBounds", "checkSourceBounds$kotlin_stdlib", "checkDestinationBounds", "destinationSize", "capacityNeeded", "PaddingOption", "Default", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalEncodingApi.class})
public class Base64 {
    private static final Base64 Mime;
    private static final Base64 Pem;
    private static final Base64 UrlSafe;
    private static final int bitsPerByte = 8;
    private static final int bitsPerSymbol = 6;
    public static final int bytesPerGroup = 3;
    private static final int lineLengthMime = 76;
    private static final int lineLengthPem = 64;
    public static final byte padSymbol = 61;
    public static final int symbolsPerGroup = 4;
    private final boolean isMimeScheme;
    private final boolean isUrlSafe;
    private final int mimeGroupsPerLine;
    private final int mimeLineLength;
    private final PaddingOption paddingOption;

    /* JADX INFO: renamed from: Default, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final byte[] mimeLineSeparatorSymbols = {13, 10};

    public /* synthetic */ Base64(boolean z, boolean z2, int i, PaddingOption paddingOption, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, i, paddingOption);
    }

    private Base64(boolean z, boolean z2, int i, PaddingOption paddingOption) {
        this.isUrlSafe = z;
        this.isMimeScheme = z2;
        this.mimeLineLength = i;
        this.paddingOption = paddingOption;
        if (z && z2) {
            f$$ExternalSyntheticBUOutline1.m212m("Failed requirement.");
            throw null;
        }
        this.mimeGroupsPerLine = i / 4;
    }

    /* JADX INFO: renamed from: isUrlSafe$kotlin_stdlib, reason: from getter */
    public final boolean getIsUrlSafe() {
        return this.isUrlSafe;
    }

    /* JADX INFO: renamed from: isMimeScheme$kotlin_stdlib, reason: from getter */
    public final boolean getIsMimeScheme() {
        return this.isMimeScheme;
    }

    /* JADX INFO: renamed from: getMimeLineLength$kotlin_stdlib, reason: from getter */
    public final int getMimeLineLength() {
        return this.mimeLineLength;
    }

    /* JADX INFO: renamed from: getPaddingOption$kotlin_stdlib, reason: from getter */
    public final PaddingOption getPaddingOption() {
        return this.paddingOption;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @SinceKotlin(version = "2.0")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlin/io/encoding/Base64$PaddingOption;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "PRESENT", "ABSENT", "PRESENT_OPTIONAL", "ABSENT_OPTIONAL", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PaddingOption {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PaddingOption[] $VALUES;
        public static final PaddingOption PRESENT = new PaddingOption("PRESENT", 0);
        public static final PaddingOption ABSENT = new PaddingOption("ABSENT", 1);
        public static final PaddingOption PRESENT_OPTIONAL = new PaddingOption("PRESENT_OPTIONAL", 2);
        public static final PaddingOption ABSENT_OPTIONAL = new PaddingOption("ABSENT_OPTIONAL", 3);

        private static final /* synthetic */ PaddingOption[] $values() {
            return new PaddingOption[]{PRESENT, ABSENT, PRESENT_OPTIONAL, ABSENT_OPTIONAL};
        }

        public static EnumEntries<PaddingOption> getEntries() {
            return $ENTRIES;
        }

        public static PaddingOption valueOf(String str) {
            return (PaddingOption) Enum.valueOf(PaddingOption.class, str);
        }

        public static PaddingOption[] values() {
            return (PaddingOption[]) $VALUES.clone();
        }

        private PaddingOption(String str, int i) {
        }

        static {
            PaddingOption[] paddingOptionArr$values = $values();
            $VALUES = paddingOptionArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(paddingOptionArr$values);
        }
    }

    @SinceKotlin(version = "2.0")
    public final Base64 withPadding(PaddingOption option) {
        return this.paddingOption == option ? this : new Base64(this.isUrlSafe, this.isMimeScheme, this.mimeLineLength, option);
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: encodeToByteArray");
            return null;
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.encodeToByteArray(bArr, i, i2);
    }

    public final byte[] encodeToByteArray(byte[] source, int startIndex, int endIndex) {
        return encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex);
    }

    public static /* synthetic */ int encodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: encodeIntoByteArray");
            return 0;
        }
        if ((i4 & 4) != 0) {
            i = 0;
        }
        if ((i4 & 8) != 0) {
            i2 = 0;
        }
        if ((i4 & 16) != 0) {
            i3 = bArr.length;
        }
        return base64.encodeIntoByteArray(bArr, bArr2, i, i2, i3);
    }

    public final int encodeIntoByteArray(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        return encodeIntoByteArrayImpl$kotlin_stdlib(source, destination, destinationOffset, startIndex, endIndex);
    }

    public static /* synthetic */ String encode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: encode");
            return null;
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.encode(bArr, i, i2);
    }

    public final String encode(byte[] source, int startIndex, int endIndex) {
        return new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1);
    }

    public static /* synthetic */ Appendable encodeToAppendable$default(Base64 base64, byte[] bArr, Appendable appendable, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: encodeToAppendable");
            return null;
        }
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = bArr.length;
        }
        return base64.encodeToAppendable(bArr, appendable, i, i2);
    }

    @IgnorableReturnValue
    public final <A extends Appendable> A encodeToAppendable(byte[] source, A destination, int startIndex, int endIndex) throws IOException {
        destination.append(new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1));
        return destination;
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: decode");
            return null;
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.decode(bArr, i, i2);
    }

    public final byte[] decode(byte[] source, int startIndex, int endIndex) {
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        int iDecodeSize$kotlin_stdlib = decodeSize$kotlin_stdlib(source, startIndex, endIndex);
        byte[] bArr = new byte[iDecodeSize$kotlin_stdlib];
        if (decodeImpl(source, bArr, 0, startIndex, endIndex) == iDecodeSize$kotlin_stdlib) {
            return bArr;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
        return null;
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
            return 0;
        }
        if ((i4 & 4) != 0) {
            i = 0;
        }
        if ((i4 & 8) != 0) {
            i2 = 0;
        }
        if ((i4 & 16) != 0) {
            i3 = bArr.length;
        }
        return base64.decodeIntoByteArray(bArr, bArr2, i, i2, i3);
    }

    public final int decodeIntoByteArray(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, decodeSize$kotlin_stdlib(source, startIndex, endIndex));
        return decodeImpl(source, destination, destinationOffset, startIndex, endIndex);
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: decode");
            return null;
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        return base64.decode(charSequence, i, i2);
    }

    public final byte[] decode(CharSequence source, int startIndex, int endIndex) {
        byte[] bArrCharsToBytesImpl$kotlin_stdlib;
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            bArrCharsToBytesImpl$kotlin_stdlib = str.substring(startIndex, endIndex).getBytes(Charsets.ISO_8859_1);
        } else {
            bArrCharsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decode$default(this, bArrCharsToBytesImpl$kotlin_stdlib, 0, 0, 6, (Object) null);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, CharSequence charSequence, byte[] bArr, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
            return 0;
        }
        if ((i4 & 4) != 0) {
            i = 0;
        }
        if ((i4 & 8) != 0) {
            i2 = 0;
        }
        if ((i4 & 16) != 0) {
            i3 = charSequence.length();
        }
        return base64.decodeIntoByteArray(charSequence, bArr, i, i2, i3);
    }

    public final int decodeIntoByteArray(CharSequence source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        byte[] bArrCharsToBytesImpl$kotlin_stdlib;
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            bArrCharsToBytesImpl$kotlin_stdlib = str.substring(startIndex, endIndex).getBytes(Charsets.ISO_8859_1);
        } else {
            bArrCharsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decodeIntoByteArray$default(this, bArrCharsToBytesImpl$kotlin_stdlib, destination, destinationOffset, 0, 0, 24, (Object) null);
    }

    public final byte[] encodeToByteArrayImpl$kotlin_stdlib(byte[] source, int startIndex, int endIndex) {
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        byte[] bArr = new byte[encodeSize$kotlin_stdlib(endIndex - startIndex)];
        encodeIntoByteArrayImpl$kotlin_stdlib(source, bArr, 0, startIndex, endIndex);
        return bArr;
    }

    public final int encodeIntoByteArrayImpl$kotlin_stdlib(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        int i = startIndex;
        checkSourceBounds$kotlin_stdlib(source.length, i, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, encodeSize$kotlin_stdlib(endIndex - i));
        byte[] bArr = this.isUrlSafe ? Base64Kt.base64UrlEncodeMap : Base64Kt.base64EncodeMap;
        int i2 = this.isMimeScheme ? this.mimeGroupsPerLine : Integer.MAX_VALUE;
        int i3 = destinationOffset;
        while (i + 2 < endIndex) {
            int iMin = Math.min((endIndex - i) / 3, i2);
            for (int i4 = 0; i4 < iMin; i4++) {
                int i5 = source[i] & UByte.MAX_VALUE;
                int i6 = i + 2;
                int i7 = source[i + 1] & UByte.MAX_VALUE;
                i += 3;
                int i8 = (i7 << 8) | (i5 << 16) | (source[i6] & UByte.MAX_VALUE);
                destination[i3] = bArr[i8 >>> 18];
                destination[i3 + 1] = bArr[(i8 >>> 12) & 63];
                int i9 = i3 + 3;
                destination[i3 + 2] = bArr[(i8 >>> 6) & 63];
                i3 += 4;
                destination[i9] = bArr[i8 & 63];
            }
            if (iMin == i2 && i != endIndex) {
                int i10 = i3 + 1;
                byte[] bArr2 = mimeLineSeparatorSymbols;
                destination[i3] = bArr2[0];
                i3 += 2;
                destination[i10] = bArr2[1];
            }
        }
        int i11 = endIndex - i;
        if (i11 == 1) {
            int i12 = i + 1;
            int i13 = (source[i] & UByte.MAX_VALUE) << 4;
            destination[i3] = bArr[i13 >>> 6];
            int i14 = i3 + 2;
            destination[i3 + 1] = bArr[i13 & 63];
            if (shouldPadOnEncode()) {
                int i15 = i3 + 3;
                destination[i14] = padSymbol;
                i3 += 4;
                destination[i15] = padSymbol;
                i = i12;
            } else {
                i = i12;
                i3 = i14;
            }
        } else if (i11 == 2) {
            int i16 = i + 1;
            int i17 = source[i] & UByte.MAX_VALUE;
            i += 2;
            int i18 = ((source[i16] & UByte.MAX_VALUE) << 2) | (i17 << 10);
            destination[i3] = bArr[i18 >>> 12];
            destination[i3 + 1] = bArr[(i18 >>> 6) & 63];
            int i19 = i3 + 3;
            destination[i3 + 2] = bArr[i18 & 63];
            if (shouldPadOnEncode()) {
                i3 += 4;
                destination[i19] = padSymbol;
            } else {
                i3 = i19;
            }
        }
        if (i == endIndex) {
            return i3 - destinationOffset;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
        return 0;
    }

    public final int encodeSize$kotlin_stdlib(int sourceSize) {
        int i = sourceSize / 3;
        int i2 = sourceSize % 3;
        int i3 = i * 4;
        if (i2 != 0) {
            i3 += shouldPadOnEncode() ? 4 : i2 + 1;
        }
        if (i3 < 0) {
            f$$ExternalSyntheticBUOutline1.m212m("Input is too big");
            return 0;
        }
        if (this.isMimeScheme) {
            i3 += ((i3 - 1) / this.mimeLineLength) * 2;
        }
        if (i3 >= 0) {
            return i3;
        }
        f$$ExternalSyntheticBUOutline1.m212m("Input is too big");
        return 0;
    }

    private final boolean shouldPadOnEncode() {
        PaddingOption paddingOption = this.paddingOption;
        return paddingOption == PaddingOption.PRESENT || paddingOption == PaddingOption.PRESENT_OPTIONAL;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00db, code lost:
    
        if (r7 == (-2)) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00dd, code lost:
    
        if (r7 == (-8)) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00df, code lost:
    
        if (r3 != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e5, code lost:
    
        if (r20.paddingOption == kotlin.io.encoding.Base64.PaddingOption.PRESENT) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e8, code lost:
    
        p002c.f$$ExternalSyntheticBUOutline1.m212m("The padding option is set to PRESENT, but the input is not properly padded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ed, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ee, code lost:
    
        if (r8 != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f0, code lost:
    
        r0 = skipIllegalSymbolsIfMime(r21, r6, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f4, code lost:
    
        if (r0 < r25) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f8, code lost:
    
        return r9 - r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f9, code lost:
    
        r1 = r21[r0] & kotlin.UByte.MAX_VALUE;
        r3 = (char) r1;
        r1 = java.lang.Integer.toString(r1, kotlin.text.CharsKt.checkRadix(r24));
        r4 = new java.lang.StringBuilder("Symbol '");
        r4.append(r3);
        r4.append("'(");
        r4.append(r1);
        r4.append(") at index ");
        r4.append(r0 - 1);
        r4.append(" is prohibited after the pad character");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012c, code lost:
    
        throw new java.lang.IllegalArgumentException(r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012d, code lost:
    
        p002c.f$$ExternalSyntheticBUOutline1.m212m("The pad bits must be zeros");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0132, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0133, code lost:
    
        p002c.f$$ExternalSyntheticBUOutline1.m212m("The last unit of input does not have enough bits");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0138, code lost:
    
        return r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x007c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int decodeImpl(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = this.isUrlSafe ? Base64Kt.base64UrlDecodeMap : Base64Kt.base64DecodeMap;
        int i6 = destinationOffset;
        int iHandlePaddingSymbol = startIndex;
        int i7 = -8;
        int i8 = 0;
        while (true) {
            if (iHandlePaddingSymbol >= endIndex) {
                i = 8;
                i2 = 0;
                i3 = 0;
                break;
            }
            if (i7 == -8 && iHandlePaddingSymbol + 3 < endIndex) {
                i2 = 0;
                i = 8;
                int i9 = iHandlePaddingSymbol + 4;
                i4 = 1;
                int i10 = (iArr[source[iHandlePaddingSymbol] & UByte.MAX_VALUE] << 18) | (iArr[source[iHandlePaddingSymbol + 1] & UByte.MAX_VALUE] << 12) | (iArr[source[iHandlePaddingSymbol + 2] & UByte.MAX_VALUE] << 6) | iArr[source[iHandlePaddingSymbol + 3] & UByte.MAX_VALUE];
                if (i10 >= 0) {
                    destination[i6] = (byte) (i10 >> 16);
                    int i11 = i6 + 2;
                    destination[i6 + 1] = (byte) (i10 >> 8);
                    i6 += 3;
                    destination[i11] = (byte) i10;
                    iHandlePaddingSymbol = i9;
                } else {
                    int i12 = source[iHandlePaddingSymbol] & UByte.MAX_VALUE;
                    i5 = iArr[i12];
                    if (i5 < 0) {
                    }
                }
            } else {
                i = 8;
                i2 = 0;
                i4 = 1;
                int i122 = source[iHandlePaddingSymbol] & UByte.MAX_VALUE;
                i5 = iArr[i122];
                if (i5 < 0) {
                    iHandlePaddingSymbol++;
                    i8 = (i8 << 6) | i5;
                    int i13 = i7 + 6;
                    if (i13 >= 0) {
                        destination[i6] = (byte) (i8 >>> i13);
                        i8 &= (i4 << i13) - 1;
                        i7 -= 2;
                        i6++;
                    } else {
                        i7 = i13;
                    }
                } else {
                    if (i5 == -2) {
                        iHandlePaddingSymbol = handlePaddingSymbol(source, iHandlePaddingSymbol, endIndex, i7);
                        i3 = i4;
                        break;
                    }
                    if (!this.isMimeScheme) {
                        throw new IllegalArgumentException("Invalid symbol '" + ((char) i122) + "'(" + Integer.toString(i122, CharsKt.checkRadix(i)) + ") at index " + iHandlePaddingSymbol);
                    }
                    iHandlePaddingSymbol++;
                }
            }
        }
    }

    public final int decodeSize$kotlin_stdlib(byte[] source, int startIndex, int endIndex) {
        int i = endIndex - startIndex;
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            Base64$$ExternalSyntheticBUOutline0.m880m("Input should have at least 2 symbols for Base64 decoding, startIndex: ", startIndex, ", endIndex: ", endIndex);
            return 0;
        }
        if (this.isMimeScheme) {
            while (true) {
                if (startIndex >= endIndex) {
                    break;
                }
                int i2 = Base64Kt.base64DecodeMap[source[startIndex] & UByte.MAX_VALUE];
                if (i2 < 0) {
                    if (i2 == -2) {
                        i -= endIndex - startIndex;
                        break;
                    }
                    i--;
                }
                startIndex++;
            }
        } else if (source[endIndex - 1] == 61) {
            i = source[endIndex + (-2)] == 61 ? i - 2 : i - 1;
        }
        return (int) ((((long) i) * 6) / 8);
    }

    public final byte[] charsToBytesImpl$kotlin_stdlib(CharSequence source, int startIndex, int endIndex) {
        checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
        byte[] bArr = new byte[endIndex - startIndex];
        int i = 0;
        while (startIndex < endIndex) {
            char cCharAt = source.charAt(startIndex);
            if (cCharAt <= 255) {
                bArr[i] = (byte) cCharAt;
                i++;
            } else {
                bArr[i] = 63;
                i++;
            }
            startIndex++;
        }
        return bArr;
    }

    public final String bytesToStringImpl$kotlin_stdlib(byte[] source) {
        StringBuilder sb = new StringBuilder(source.length);
        for (byte b2 : source) {
            sb.append((char) b2);
        }
        return sb.toString();
    }

    private final int handlePaddingSymbol(byte[] source, int padIndex, int endIndex, int byteStart) {
        if (byteStart == -8) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m860m("Redundant pad character at index ", padIndex);
            return 0;
        }
        if (byteStart == -6) {
            checkPaddingIsAllowed(padIndex);
            return padIndex + 1;
        }
        if (byteStart != -4) {
            if (byteStart == -2) {
                return padIndex + 1;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("Unreachable");
            return 0;
        }
        checkPaddingIsAllowed(padIndex);
        int iSkipIllegalSymbolsIfMime = skipIllegalSymbolsIfMime(source, padIndex + 1, endIndex);
        if (iSkipIllegalSymbolsIfMime != endIndex && source[iSkipIllegalSymbolsIfMime] == 61) {
            return iSkipIllegalSymbolsIfMime + 1;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m860m("Missing one pad character at index ", iSkipIllegalSymbolsIfMime);
        return 0;
    }

    private final void checkPaddingIsAllowed(int padIndex) {
        if (this.paddingOption != PaddingOption.ABSENT) {
            return;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m860m("The padding option is set to ABSENT, but the input has a pad character at index ", padIndex);
    }

    private final int skipIllegalSymbolsIfMime(byte[] source, int startIndex, int endIndex) {
        if (!this.isMimeScheme) {
            return startIndex;
        }
        while (startIndex < endIndex) {
            if (Base64Kt.base64DecodeMap[source[startIndex] & UByte.MAX_VALUE] != -1) {
                break;
            }
            startIndex++;
        }
        return startIndex;
    }

    public final void checkSourceBounds$kotlin_stdlib(int sourceSize, int startIndex, int endIndex) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(startIndex, endIndex, sourceSize);
    }

    private final void checkDestinationBounds(int destinationSize, int destinationOffset, int capacityNeeded) {
        if (destinationOffset < 0 || destinationOffset > destinationSize) {
            Dex$$ExternalSyntheticBUOutline0.m215m("destination offset: ", destinationOffset, ", destination size: ", destinationSize);
            return;
        }
        int i = destinationOffset + capacityNeeded;
        if (i < 0 || i > destinationSize) {
            Base64$$ExternalSyntheticBUOutline1.m881m("The destination array does not have enough capacity, destination offset: ", destinationOffset, ", destination size: ", destinationSize, ", capacity needed: ", capacityNeeded);
        }
    }

    /* JADX INFO: renamed from: kotlin.io.encoding.Base64$Default, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003R\u000f\u0010\u0004\u001a\u00020\u0005X\u0082Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0006\u001a\u00020\u0005X\u0082Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0007\u001a\u00020\u0005X\u0080Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\b\u001a\u00020\u0005X\u0080Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\t\u001a\u00020\nX\u0080Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\u000b\u001a\u00020\u0005X\u0082Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\f\u001a\u00020\u0005X\u0082Ô\b¢\u0006\u0002\n\u0000R\u0015\u0010\r\u001a\u00020\u000eX\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0011\u001a\u00020\u0001X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\u0014\u001a\u00020\u0001X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0015\u0010\u0016\u001a\u00020\u0001X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u0018"}, d2 = {"Lkotlin/io/encoding/Base64$Default;", "Lkotlin/io/encoding/Base64;", "<init>", "()V", "bitsPerByte", _UrlKt.FRAGMENT_ENCODE_SET, "bitsPerSymbol", "bytesPerGroup", "symbolsPerGroup", "padSymbol", _UrlKt.FRAGMENT_ENCODE_SET, "lineLengthMime", "lineLengthPem", "mimeLineSeparatorSymbols", _UrlKt.FRAGMENT_ENCODE_SET, "getMimeLineSeparatorSymbols$kotlin_stdlib", "()[B", "UrlSafe", "getUrlSafe", "()Lkotlin/io/encoding/Base64;", "Mime", "getMime", "Pem", "getPem", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion extends Base64 {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super(false, false, -1, PaddingOption.PRESENT, null);
        }

        public final byte[] getMimeLineSeparatorSymbols$kotlin_stdlib() {
            return Base64.mimeLineSeparatorSymbols;
        }

        public final Base64 getUrlSafe() {
            return Base64.UrlSafe;
        }

        public final Base64 getMime() {
            return Base64.Mime;
        }

        public final Base64 getPem() {
            return Base64.Pem;
        }
    }

    static {
        PaddingOption paddingOption = PaddingOption.PRESENT;
        UrlSafe = new Base64(true, false, -1, paddingOption);
        Mime = new Base64(false, true, 76, paddingOption);
        Pem = new Base64(false, true, 64, paddingOption);
    }
}
