package kotlin.uuid;

import java.nio.BufferOverflowException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0080\u0080\u0004\u001a\u0012\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0081\u0080\u0004\u001a\u0016\u0010\b\u001a\u00020\t*\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0081\u0080\u0004\u001a.\u0010\f\u001a\u00020\u0001*\u00020\t2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0081\u0080\u0004\u001a\u001e\u0010\u0011\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\tH\u0081\u0080\u0004\u001a\u0012\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0081\u0080\u0004\u001a\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0081\u0080\u0004\u001a\u0012\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0015H\u0081\u0080\u0004\u001a\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0018\u001a\u00020\u0015H\u0081\u0080\u0004\u001a\u000e\u0010\u001a\u001a\u00020\u0007*\u00020\u001bH\u0087\u0088\u0004\u001a\u000e\u0010\u001c\u001a\u00020\u001b*\u00020\u0007H\u0087\u0088\u0004\u001a\u000e\u0010\u001d\u001a\u00020\u0007*\u00020\u001eH\u0087\u0080\u0004\u001a\u0016\u0010\u001d\u001a\u00020\u0007*\u00020\u001e2\u0006\u0010\n\u001a\u00020\u000bH\u0087\u0080\u0004\u001a\u0016\u0010\u001f\u001a\u00020\u001e*\u00020\u001e2\u0006\u0010\u0006\u001a\u00020\u0007H\u0087\u0080\b\u001a\u001e\u0010\u001f\u001a\u00020\u001e*\u00020\u001e2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0087\u0080\b\u001a\u000e\u0010 \u001a\u00020\t*\u00020\tH\u0080\u0088\u0004¨\u0006!"}, d2 = {"secureRandomBytes", _UrlKt.FRAGMENT_ENCODE_SET, "destination", _UrlKt.FRAGMENT_ENCODE_SET, "serializedUuid", _UrlKt.FRAGMENT_ENCODE_SET, "uuid", "Lkotlin/uuid/Uuid;", "getLongAt", _UrlKt.FRAGMENT_ENCODE_SET, "index", _UrlKt.FRAGMENT_ENCODE_SET, "formatBytesInto", "dst", "dstOffset", "startIndex", "endIndex", "setLongAt", "value", "uuidParseHexDash", "hexDashString", _UrlKt.FRAGMENT_ENCODE_SET, "uuidParseHexDashOrNull", "uuidParseHex", "hexString", "uuidParseHexOrNull", "toKotlinUuid", "Ljava/util/UUID;", "toJavaUuid", "getUuid", "Ljava/nio/ByteBuffer;", "putUuid", "reverseBytes", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/uuid/UuidKt")
@SourceDebugExtension({"SMAP\nUuidJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n1#1,285:1\n284#1:286\n284#1:287\n284#1:288\n284#1:289\n284#1:290\n284#1:291\n284#1:292\n284#1:293\n*S KotlinDebug\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n144#1:286\n145#1:287\n189#1:288\n190#1:289\n230#1:290\n231#1:291\n278#1:292\n279#1:293\n*E\n"})
class UuidKt__UuidJVMKt {
    public static final void secureRandomBytes(byte[] bArr) {
        SecureRandomHolder.INSTANCE.getInstance().nextBytes(bArr);
    }

    @ExperimentalUuidApi
    public static final Object serializedUuid(Uuid uuid) {
        return new UuidSerialized(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @ExperimentalUuidApi
    public static final long getLongAt(byte[] bArr, int i) {
        return UuidKt__UuidKt.getLongAtCommonImpl(bArr, i);
    }

    @ExperimentalUuidApi
    public static final void formatBytesInto(long j, byte[] bArr, int i, int i2, int i3) {
        UuidKt__UuidKt.formatBytesIntoCommonImpl(j, bArr, i, i2, i3);
    }

    @ExperimentalUuidApi
    public static final void setLongAt(byte[] bArr, int i, long j) {
        UuidKt__UuidKt.setLongAtCommonImpl(bArr, i, j);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexDash(String str) {
        return UuidKt__UuidKt.uuidParseHexDashCommonImpl(str);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexDashOrNull(String str) {
        return UuidKt__UuidKt.uuidParseHexDashOrNullCommonImpl(str);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHex(String str) {
        return UuidKt__UuidKt.uuidParseHexCommonImpl(str);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexOrNull(String str) {
        return UuidKt__UuidKt.uuidParseHexOrNullCommonImpl(str);
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final Uuid toKotlinUuid(UUID uuid) {
        return Uuid.INSTANCE.fromLongs(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final UUID toJavaUuid(Uuid uuid) {
        return new UUID(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final Uuid getUuid(ByteBuffer byteBuffer) {
        if (byteBuffer.position() + 15 >= byteBuffer.limit()) {
            throw new BufferUnderflowException();
        }
        long jReverseBytes = byteBuffer.getLong();
        long jReverseBytes2 = byteBuffer.getLong();
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
            jReverseBytes = Long.reverseBytes(jReverseBytes);
            jReverseBytes2 = Long.reverseBytes(jReverseBytes2);
        }
        return Uuid.INSTANCE.fromLongs(jReverseBytes, jReverseBytes2);
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final Uuid getUuid(ByteBuffer byteBuffer, int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Negative index: " + i);
        }
        if (i + 15 >= byteBuffer.limit()) {
            throw new IndexOutOfBoundsException("Not enough bytes to read a uuid at index: " + i + ", with limit: " + byteBuffer.limit() + ' ');
        }
        long jReverseBytes = byteBuffer.getLong(i);
        long jReverseBytes2 = byteBuffer.getLong(i + 8);
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
            jReverseBytes = Long.reverseBytes(jReverseBytes);
            jReverseBytes2 = Long.reverseBytes(jReverseBytes2);
        }
        return Uuid.INSTANCE.fromLongs(jReverseBytes, jReverseBytes2);
    }

    @SinceKotlin(version = "2.0")
    @IgnorableReturnValue
    @ExperimentalUuidApi
    public static final ByteBuffer putUuid(ByteBuffer byteBuffer, Uuid uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        if (byteBuffer.position() + 15 >= byteBuffer.limit()) {
            throw new BufferOverflowException();
        }
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
            byteBuffer.putLong(mostSignificantBits);
            return byteBuffer.putLong(leastSignificantBits);
        }
        byteBuffer.putLong(Long.reverseBytes(mostSignificantBits));
        return byteBuffer.putLong(Long.reverseBytes(leastSignificantBits));
    }

    @SinceKotlin(version = "2.0")
    @IgnorableReturnValue
    @ExperimentalUuidApi
    public static final ByteBuffer putUuid(ByteBuffer byteBuffer, int i, Uuid uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        if (i < 0) {
            throw new IndexOutOfBoundsException("Negative index: " + i);
        }
        if (i + 15 >= byteBuffer.limit()) {
            throw new IndexOutOfBoundsException("Not enough capacity to write a uuid at index: " + i + ", with limit: " + byteBuffer.limit() + ' ');
        }
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
            byteBuffer.putLong(i, mostSignificantBits);
            return byteBuffer.putLong(i + 8, leastSignificantBits);
        }
        byteBuffer.putLong(i, Long.reverseBytes(mostSignificantBits));
        return byteBuffer.putLong(i + 8, Long.reverseBytes(leastSignificantBits));
    }

    public static final long reverseBytes(long j) {
        return Long.reverseBytes(j);
    }
}
