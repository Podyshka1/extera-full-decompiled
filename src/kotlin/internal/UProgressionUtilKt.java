package kotlin.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UByte$$ExternalSyntheticBackport1;
import kotlin.UByte$$ExternalSyntheticBackport2;
import kotlin.UInt;
import kotlin.ULong;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u001a)\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0082\u0080\u0004¢\u0006\u0004\b\b\u0010\t\u001a)\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0081\u0080\u0004¢\u0006\u0004\b\u000f\u0010\u0006\u001a)\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0081\u0080\u0004¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", _UrlKt.FRAGMENT_ENCODE_SET, "getProgressionLastElement-Nkh28Cs", _UrlKt.FRAGMENT_ENCODE_SET, "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
public final class UProgressionUtilKt {
    /* JADX INFO: renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m4510differenceModuloWZ9TVnA(int i, int i2, int i3) {
        int iM756m = UByte$$ExternalSyntheticBackport1.m756m(i, i3);
        int iM756m2 = UByte$$ExternalSyntheticBackport1.m756m(i2, i3);
        int iCompare = Integer.compare(iM756m ^ Integer.MIN_VALUE, iM756m2 ^ Integer.MIN_VALUE);
        int iM3386constructorimpl = UInt.m3386constructorimpl(iM756m - iM756m2);
        return iCompare >= 0 ? iM3386constructorimpl : UInt.m3386constructorimpl(iM3386constructorimpl + i3);
    }

    /* JADX INFO: renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m4511differenceModulosambcqE(long j, long j2, long j3) {
        long jM757m = UByte$$ExternalSyntheticBackport2.m757m(j, j3);
        long jM757m2 = UByte$$ExternalSyntheticBackport2.m757m(j2, j3);
        int iCompare = Long.compare(jM757m ^ Long.MIN_VALUE, jM757m2 ^ Long.MIN_VALUE);
        long jM3465constructorimpl = ULong.m3465constructorimpl(jM757m - jM757m2);
        return iCompare >= 0 ? jM3465constructorimpl : ULong.m3465constructorimpl(jM3465constructorimpl + j3);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m4513getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            if (Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) < 0) {
                return UInt.m3386constructorimpl(i2 - m4510differenceModuloWZ9TVnA(i2, i, UInt.m3386constructorimpl(i3)));
            }
        } else if (i3 < 0) {
            if (Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) > 0) {
                return UInt.m3386constructorimpl(i2 + m4510differenceModuloWZ9TVnA(i, i2, UInt.m3386constructorimpl(-i3)));
            }
        } else {
            f$$ExternalSyntheticBUOutline1.m178m("Step is zero.");
            return 0;
        }
        return i2;
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m4512getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        if (j3 > 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) >= 0 ? j2 : ULong.m3465constructorimpl(j2 - m4511differenceModulosambcqE(j2, j, ULong.m3465constructorimpl(j3)));
        }
        if (j3 < 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) <= 0 ? j2 : ULong.m3465constructorimpl(j2 + m4511differenceModulosambcqE(j, j2, ULong.m3465constructorimpl(-j3)));
        }
        f$$ExternalSyntheticBUOutline1.m178m("Step is zero.");
        return 0L;
    }
}
