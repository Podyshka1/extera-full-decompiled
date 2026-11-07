package kotlin.random;

import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.UIntRange;
import kotlin.ranges.ULongRange;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0003\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\b\b\u0010\t\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0087\u0080\u0004¢\u0006\u0002\u0010\f\u001a\u0013\u0010\r\u001a\u00020\u000e*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u000f\u001a\u001d\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u000eH\u0087\u0080\u0004¢\u0006\u0004\b\u0010\u0010\u0011\u001a%\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u000eH\u0087\u0080\u0004¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001b\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\n\u001a\u00020\u0014H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0015\u001a\u001d\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0087\u0080\b¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001b\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0087\u0080\u0004¢\u0006\u0002\u0010\u001d\u001a1\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u001e\u001a\u00020\u001c2\b\b\u0002\u0010\u001f\u001a\u00020\u001cH\u0087\u0080\b¢\u0006\u0004\b \u0010!\u001a!\u0010\"\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0080\u0080\u0004¢\u0006\u0004\b$\u0010%\u001a!\u0010&\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u000eH\u0080\u0080\u0004¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"nextUInt", "Lkotlin/UInt;", "Lkotlin/random/Random;", "(Lkotlin/random/Random;)I", "until", "nextUInt-qCasIEU", "(Lkotlin/random/Random;I)I", "from", "nextUInt-a8DCA5k", "(Lkotlin/random/Random;II)I", "range", "Lkotlin/ranges/UIntRange;", "(Lkotlin/random/Random;Lkotlin/ranges/UIntRange;)I", "nextULong", "Lkotlin/ULong;", "(Lkotlin/random/Random;)J", "nextULong-V1Xi4fY", "(Lkotlin/random/Random;J)J", "nextULong-jmpaW-c", "(Lkotlin/random/Random;JJ)J", "Lkotlin/ranges/ULongRange;", "(Lkotlin/random/Random;Lkotlin/ranges/ULongRange;)J", "nextUBytes", "Lkotlin/UByteArray;", "array", "nextUBytes-EVgfTAA", "(Lkotlin/random/Random;[B)[B", "size", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/random/Random;I)[B", "fromIndex", "toIndex", "nextUBytes-Wvrt4B4", "(Lkotlin/random/Random;[BII)[B", "checkUIntRangeBounds", _UrlKt.FRAGMENT_ENCODE_SET, "checkUIntRangeBounds-J1ME1BU", "(II)V", "checkULongRangeBounds", "checkULongRangeBounds-eb3DHEI", "(JJ)V", "kotlin-stdlib"}, m910k = 2, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nURandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URandom.kt\nkotlin/random/URandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"})
public final class URandomKt {
    @SinceKotlin(version = "1.5")
    public static final int nextUInt(Random random) {
        return UInt.m3703constructorimpl(random.nextInt());
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: nextUInt-qCasIEU, reason: not valid java name */
    public static final int m4845nextUIntqCasIEU(Random random, int i) {
        return m4844nextUInta8DCA5k(random, 0, i);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: nextUInt-a8DCA5k, reason: not valid java name */
    public static final int m4844nextUInta8DCA5k(Random random, int i, int i2) {
        m4839checkUIntRangeBoundsJ1ME1BU(i, i2);
        return UInt.m3703constructorimpl(random.nextInt(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) ^ Integer.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    public static final int nextUInt(Random random, UIntRange uIntRange) {
        if (!uIntRange.isEmpty()) {
            return Integer.compare(uIntRange.getLast() ^ Integer.MIN_VALUE, (-1) ^ Integer.MIN_VALUE) < 0 ? m4844nextUInta8DCA5k(random, uIntRange.getFirst(), UInt.m3703constructorimpl(uIntRange.getLast() + 1)) : Integer.compare(uIntRange.getFirst() ^ Integer.MIN_VALUE, 0 ^ Integer.MIN_VALUE) > 0 ? UInt.m3703constructorimpl(m4844nextUInta8DCA5k(random, UInt.m3703constructorimpl(uIntRange.getFirst() - 1), uIntRange.getLast()) + 1) : nextUInt(random);
        }
        Native$$ExternalSyntheticBUOutline5.m517m("Cannot get random in empty range: ", uIntRange);
        return 0;
    }

    @SinceKotlin(version = "1.5")
    public static final long nextULong(Random random) {
        return ULong.m3782constructorimpl(random.nextLong());
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: nextULong-V1Xi4fY, reason: not valid java name */
    public static final long m4846nextULongV1Xi4fY(Random random, long j) {
        return m4847nextULongjmpaWc(random, 0L, j);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: nextULong-jmpaW-c, reason: not valid java name */
    public static final long m4847nextULongjmpaWc(Random random, long j, long j2) {
        m4840checkULongRangeBoundseb3DHEI(j, j2);
        return ULong.m3782constructorimpl(random.nextLong(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) ^ Long.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    public static final long nextULong(Random random, ULongRange uLongRange) {
        if (!uLongRange.isEmpty()) {
            return Long.compare(uLongRange.getLast() ^ Long.MIN_VALUE, (-1) ^ Long.MIN_VALUE) < 0 ? m4847nextULongjmpaWc(random, uLongRange.getFirst(), ULong.m3782constructorimpl(uLongRange.getLast() + ULong.m3782constructorimpl(1L))) : Long.compare(uLongRange.getFirst() ^ Long.MIN_VALUE, 0 ^ Long.MIN_VALUE) > 0 ? ULong.m3782constructorimpl(m4847nextULongjmpaWc(random, ULong.m3782constructorimpl(uLongRange.getFirst() - ULong.m3782constructorimpl(1L)), uLongRange.getLast()) + ULong.m3782constructorimpl(1L)) : nextULong(random);
        }
        Native$$ExternalSyntheticBUOutline5.m517m("Cannot get random in empty range: ", uLongRange);
        return 0L;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @IgnorableReturnValue
    /* JADX INFO: renamed from: nextUBytes-EVgfTAA, reason: not valid java name */
    public static final byte[] m4841nextUBytesEVgfTAA(Random random, byte[] bArr) {
        random.nextBytes(bArr);
        return bArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final byte[] nextUBytes(Random random, int i) {
        return UByteArray.m3679constructorimpl(random.nextBytes(i));
    }

    /* JADX INFO: renamed from: nextUBytes-Wvrt4B4$default, reason: not valid java name */
    public static /* synthetic */ byte[] m4843nextUBytesWvrt4B4$default(Random random, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UByteArray.m3685getSizeimpl(bArr);
        }
        return m4842nextUBytesWvrt4B4(random, bArr, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @IgnorableReturnValue
    /* JADX INFO: renamed from: nextUBytes-Wvrt4B4, reason: not valid java name */
    public static final byte[] m4842nextUBytesWvrt4B4(Random random, byte[] bArr, int i, int i2) {
        random.nextBytes(bArr, i, i2);
        return bArr;
    }

    /* JADX INFO: renamed from: checkUIntRangeBounds-J1ME1BU, reason: not valid java name */
    public static final void m4839checkUIntRangeBoundsJ1ME1BU(int i, int i2) {
        if (Integer.compare(i2 ^ Integer.MIN_VALUE, i ^ Integer.MIN_VALUE) > 0) {
            return;
        }
        RandomKt$$ExternalSyntheticBUOutline0.m932m(RandomKt.boundsErrorMessage(UInt.m3697boximpl(i), UInt.m3697boximpl(i2)));
    }

    /* JADX INFO: renamed from: checkULongRangeBounds-eb3DHEI, reason: not valid java name */
    public static final void m4840checkULongRangeBoundseb3DHEI(long j, long j2) {
        if (Long.compare(j2 ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE) > 0) {
            return;
        }
        RandomKt$$ExternalSyntheticBUOutline0.m932m(RandomKt.boundsErrorMessage(ULong.m3776boximpl(j), ULong.m3776boximpl(j2)));
    }
}
