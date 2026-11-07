package kotlin.uuid;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Comparator;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.ULong;
import kotlin.comparisons.ComparisonsKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlin.time.Clock;
import kotlin.time.Instant;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "2.0")
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 02\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u00010B\u0019\bB\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ]\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u001026\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u0002H\u00100\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0015J]\u0010\u0016\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u001026\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u0002H\u00100\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0015J\n\u0010\u0018\u001a\u00020\u0019H\u0096\u0080\u0004J\n\u0010\u001a\u001a\u00020\u0019H\u0087\u0080\u0004J\n\u0010\u001b\u001a\u00020\u0019H\u0086\u0080\u0004J\n\u0010\u001c\u001a\u00020\u001dH\u0086\u0080\u0004J\u0011\u0010\u001e\u001a\u00020\u001fH\u0087\u0080\u0004¢\u0006\u0004\b \u0010!J\u0014\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0082\u0004J\u0012\u0010&\u001a\u00020'2\u0006\u0010$\u001a\u00020\u0000H\u0097\u0082\u0004J\n\u0010(\u001a\u00020'H\u0096\u0080\u0004J\n\u0010)\u001a\u00020%H\u0082\u0080\u0004J\u001b\u0010*\u001a\u00020+2\n\u0010,\u001a\u00060-j\u0002`.H\u0082\u0080\u0004¢\u0006\u0002\u0010/R\u001d\u0010\u0004\u001a\u00020\u00058\u0000X\u0081\u0084\b¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0006\u001a\u00020\u00058\u0000X\u0081\u0084\b¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00061"}, d2 = {"Lkotlin/uuid/Uuid;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "mostSignificantBits", _UrlKt.FRAGMENT_ENCODE_SET, "leastSignificantBits", "<init>", "(JJ)V", "getMostSignificantBits$annotations", "()V", "getMostSignificantBits", "()J", "getLeastSignificantBits$annotations", "getLeastSignificantBits", "toLongs", "T", "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toULongs", "Lkotlin/ULong;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "toHexDashString", "toHexString", "toByteArray", _UrlKt.FRAGMENT_ENCODE_SET, "toUByteArray", "Lkotlin/UByteArray;", "toUByteArray-TcUX1vc", "()[B", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "compareTo", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "writeReplace", "readObject", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.TYPE_INPUT, "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "(Ljava/io/ObjectInputStream;)V", "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@ExperimentalUuidApi
public final class Uuid implements Comparable<Uuid>, Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Uuid NIL = new Uuid(0, 0);
    public static final int SIZE_BITS = 128;
    public static final int SIZE_BYTES = 16;
    private final long leastSignificantBits;
    private final long mostSignificantBits;

    public /* synthetic */ Uuid(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    @PublishedApi
    public static /* synthetic */ void getLeastSignificantBits$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMostSignificantBits$annotations() {
    }

    private Uuid(long j, long j2) {
        this.mostSignificantBits = j;
        this.leastSignificantBits = j2;
    }

    public final long getMostSignificantBits() {
        return this.mostSignificantBits;
    }

    public final long getLeastSignificantBits() {
        return this.leastSignificantBits;
    }

    @InlineOnly
    private final <T> T toLongs(Function2<? super Long, ? super Long, ? extends T> action) {
        return action.invoke(Long.valueOf(getMostSignificantBits()), Long.valueOf(getLeastSignificantBits()));
    }

    @InlineOnly
    private final <T> T toULongs(Function2<? super ULong, ? super ULong, ? extends T> action) {
        return action.invoke(ULong.m3255boximpl(ULong.m3261constructorimpl(getMostSignificantBits())), ULong.m3255boximpl(ULong.m3261constructorimpl(getLeastSignificantBits())));
    }

    public String toString() {
        return toHexDashString();
    }

    @SinceKotlin(version = "2.1")
    public final String toHexDashString() {
        byte[] bArr = new byte[36];
        UuidKt__UuidJVMKt.formatBytesInto(this.mostSignificantBits, bArr, 0, 0, 4);
        bArr[8] = 45;
        UuidKt__UuidJVMKt.formatBytesInto(this.mostSignificantBits, bArr, 9, 4, 6);
        bArr[13] = 45;
        UuidKt__UuidJVMKt.formatBytesInto(this.mostSignificantBits, bArr, 14, 6, 8);
        bArr[18] = 45;
        UuidKt__UuidJVMKt.formatBytesInto(this.leastSignificantBits, bArr, 19, 0, 2);
        bArr[23] = 45;
        UuidKt__UuidJVMKt.formatBytesInto(this.leastSignificantBits, bArr, 24, 2, 8);
        return StringsKt.decodeToString(bArr);
    }

    public final String toHexString() {
        byte[] bArr = new byte[32];
        UuidKt__UuidJVMKt.formatBytesInto(this.mostSignificantBits, bArr, 0, 0, 8);
        UuidKt__UuidJVMKt.formatBytesInto(this.leastSignificantBits, bArr, 16, 0, 8);
        return StringsKt.decodeToString(bArr);
    }

    public final byte[] toByteArray() {
        byte[] bArr = new byte[16];
        UuidKt__UuidJVMKt.setLongAt(bArr, 0, this.mostSignificantBits);
        UuidKt__UuidJVMKt.setLongAt(bArr, 8, this.leastSignificantBits);
        return bArr;
    }

    @SinceKotlin(version = "2.1")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: toUByteArray-TcUX1vc, reason: not valid java name */
    public final byte[] m4586toUByteArrayTcUX1vc() {
        return UByteArray.m3158constructorimpl(toByteArray());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) other;
        return this.mostSignificantBits == uuid.mostSignificantBits && this.leastSignificantBits == uuid.leastSignificantBits;
    }

    @Override // java.lang.Comparable
    @SinceKotlin(version = "2.1")
    public int compareTo(Uuid other) {
        long j = this.mostSignificantBits;
        return j != other.mostSignificantBits ? Long.compare(ULong.m3261constructorimpl(j) ^ Long.MIN_VALUE, ULong.m3261constructorimpl(other.mostSignificantBits) ^ Long.MIN_VALUE) : Long.compare(ULong.m3261constructorimpl(this.leastSignificantBits) ^ Long.MIN_VALUE, ULong.m3261constructorimpl(other.leastSignificantBits) ^ Long.MIN_VALUE);
    }

    public int hashCode() {
        return Long.hashCode(this.mostSignificantBits ^ this.leastSignificantBits);
    }

    private final Object writeReplace() {
        return UuidKt__UuidJVMKt.serializedUuid(this);
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0086\u0080\u0004J!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0010H\u0086\u0080\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015H\u0086\u0080\u0004J\u0019\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018H\u0087\u0080\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\u0012\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001dH\u0086\u0080\u0004J\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u001dH\u0087\u0080\u0004J\u0012\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001dH\u0087\u0080\u0004J\u0014\u0010!\u001a\u0004\u0018\u00010\u00052\u0006\u0010 \u001a\u00020\u001dH\u0087\u0080\u0004J\u0012\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u001dH\u0086\u0080\u0004J\u0014\u0010$\u001a\u0004\u0018\u00010\u00052\u0006\u0010#\u001a\u00020\u001dH\u0087\u0080\u0004J\n\u0010%\u001a\u00020\u0005H\u0086\u0080\u0004J\n\u0010&\u001a\u00020\u0005H\u0087\u0080\u0004J\n\u0010'\u001a\u00020\u0005H\u0087\u0080\u0004J\u0012\u0010(\u001a\u00020\u00052\u0006\u0010)\u001a\u00020*H\u0087\u0080\u0004J\u0017\u0010'\u001a\u00020\u00052\u0006\u0010+\u001a\u00020,H\u0080\u0080\u0004¢\u0006\u0002\b-R\u0015\u0010\u0004\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000f\u0010\b\u001a\u00020\tX\u0086Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\n\u001a\u00020\tX\u0086Ô\b¢\u0006\u0002\n\u0000R+\u0010.\u001a\u0012\u0012\u0004\u0012\u00020\u00050/j\b\u0012\u0004\u0012\u00020\u0005`08FX\u0087\u0084\b¢\u0006\f\u0012\u0004\b1\u0010\u0003\u001a\u0004\b2\u00103¨\u00064"}, d2 = {"Lkotlin/uuid/Uuid$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "NIL", "Lkotlin/uuid/Uuid;", "getNIL", "()Lkotlin/uuid/Uuid;", "SIZE_BYTES", _UrlKt.FRAGMENT_ENCODE_SET, "SIZE_BITS", "fromLongs", "mostSignificantBits", _UrlKt.FRAGMENT_ENCODE_SET, "leastSignificantBits", "fromULongs", "Lkotlin/ULong;", "fromULongs-eb3DHEI", "(JJ)Lkotlin/uuid/Uuid;", "fromByteArray", "byteArray", _UrlKt.FRAGMENT_ENCODE_SET, "fromUByteArray", "ubyteArray", "Lkotlin/UByteArray;", "fromUByteArray-GBYM_sE", "([B)Lkotlin/uuid/Uuid;", "parse", "uuidString", _UrlKt.FRAGMENT_ENCODE_SET, "parseOrNull", "parseHexDash", "hexDashString", "parseHexDashOrNull", "parseHex", "hexString", "parseHexOrNull", "random", "generateV4", "generateV7", "generateV7NonMonotonicAt", "timestamp", "Lkotlin/time/Instant;", "clock", "Lkotlin/time/Clock;", "generateV7$kotlin_stdlib", "LEXICAL_ORDER", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getLEXICAL_ORDER$annotations", "getLEXICAL_ORDER", "()Ljava/util/Comparator;", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Deprecated(message = "Use naturalOrder<Uuid>() instead", replaceWith = @ReplaceWith(expression = "naturalOrder<Uuid>()", imports = {"kotlin.comparisons.naturalOrder"}))
        @DeprecatedSinceKotlin(warningSince = "2.1")
        public static /* synthetic */ void getLEXICAL_ORDER$annotations() {
        }

        private Companion() {
        }

        public final Uuid getNIL() {
            return Uuid.NIL;
        }

        public final Uuid fromLongs(long mostSignificantBits, long leastSignificantBits) {
            if (mostSignificantBits == 0 && leastSignificantBits == 0) {
                return getNIL();
            }
            return new Uuid(mostSignificantBits, leastSignificantBits, null);
        }

        /* JADX INFO: renamed from: fromULongs-eb3DHEI, reason: not valid java name */
        public final Uuid m4588fromULongseb3DHEI(long mostSignificantBits, long leastSignificantBits) {
            return fromLongs(mostSignificantBits, leastSignificantBits);
        }

        public final Uuid fromByteArray(byte[] byteArray) {
            if (byteArray.length != 16) {
                Uuid$Companion$$ExternalSyntheticBUOutline0.m897m("Expected exactly 16 bytes, but was ", UuidKt__UuidKt.truncateForErrorMessage$UuidKt__UuidKt(byteArray, 32), " of size ", byteArray.length);
                return null;
            }
            return fromLongs(UuidKt__UuidJVMKt.getLongAt(byteArray, 0), UuidKt__UuidJVMKt.getLongAt(byteArray, 8));
        }

        @SinceKotlin(version = "2.1")
        @ExperimentalUnsignedTypes
        /* JADX INFO: renamed from: fromUByteArray-GBYM_sE, reason: not valid java name */
        public final Uuid m4587fromUByteArrayGBYM_sE(byte[] ubyteArray) {
            return fromByteArray(ubyteArray);
        }

        public final Uuid parse(String uuidString) {
            int length = uuidString.length();
            if (length == 32) {
                return UuidKt__UuidJVMKt.uuidParseHex(uuidString);
            }
            if (length != 36) {
                throw new IllegalArgumentException("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"" + UuidKt__UuidKt.truncateForErrorMessage$UuidKt__UuidKt(uuidString, 64) + "\" of length " + uuidString.length());
            }
            return UuidKt__UuidJVMKt.uuidParseHexDash(uuidString);
        }

        @SinceKotlin(version = MVEL.VERSION)
        public final Uuid parseOrNull(String uuidString) {
            int length = uuidString.length();
            if (length == 32) {
                return parseHexOrNull(uuidString);
            }
            if (length != 36) {
                return null;
            }
            return parseHexDashOrNull(uuidString);
        }

        @SinceKotlin(version = "2.1")
        public final Uuid parseHexDash(String hexDashString) {
            if (hexDashString.length() != 36) {
                Uuid$Companion$$ExternalSyntheticBUOutline0.m897m("Expected a 36-char string in the standard hex-and-dash UUID format, but was \"", UuidKt__UuidKt.truncateForErrorMessage$UuidKt__UuidKt(hexDashString, 64), "\" of length ", hexDashString.length());
                return null;
            }
            return UuidKt__UuidJVMKt.uuidParseHexDash(hexDashString);
        }

        @SinceKotlin(version = MVEL.VERSION)
        public final Uuid parseHexDashOrNull(String hexDashString) {
            if (hexDashString.length() != 36) {
                return null;
            }
            return UuidKt__UuidJVMKt.uuidParseHexDashOrNull(hexDashString);
        }

        public final Uuid parseHex(String hexString) {
            if (hexString.length() != 32) {
                Uuid$Companion$$ExternalSyntheticBUOutline0.m897m("Expected a 32-char hexadecimal string, but was \"", UuidKt__UuidKt.truncateForErrorMessage$UuidKt__UuidKt(hexString, 64), "\" of length ", hexString.length());
                return null;
            }
            return UuidKt__UuidJVMKt.uuidParseHex(hexString);
        }

        @SinceKotlin(version = MVEL.VERSION)
        public final Uuid parseHexOrNull(String hexString) {
            if (hexString.length() != 32) {
                return null;
            }
            return UuidKt__UuidJVMKt.uuidParseHexOrNull(hexString);
        }

        public final Uuid random() {
            return generateV4();
        }

        @SinceKotlin(version = MVEL.VERSION)
        public final Uuid generateV4() {
            return UuidKt__UuidKt.secureRandomUuid();
        }

        @SinceKotlin(version = MVEL.VERSION)
        public final Uuid generateV7() {
            return generateV7$kotlin_stdlib(Clock.System.INSTANCE);
        }

        @SinceKotlin(version = MVEL.VERSION)
        public final Uuid generateV7NonMonotonicAt(Instant timestamp) {
            byte[] bArr = new byte[10];
            UuidKt__UuidJVMKt.secureRandomBytes(bArr);
            long epochMilliseconds = (timestamp.toEpochMilliseconds() << 16) | ((long) ((((bArr[8] & 15) | 112) << 8) | (bArr[9] & UByte.MAX_VALUE)));
            bArr[0] = (byte) (((byte) (bArr[0] & 63)) | ByteCompanionObject.MIN_VALUE);
            return fromLongs(epochMilliseconds, UuidKt__UuidJVMKt.getLongAt(bArr, 0));
        }

        public final Uuid generateV7$kotlin_stdlib(Clock clock) {
            return UuidV7Generator.INSTANCE.generate(clock);
        }

        public final Comparator<Uuid> getLEXICAL_ORDER() {
            return ComparisonsKt.naturalOrder();
        }
    }
}
