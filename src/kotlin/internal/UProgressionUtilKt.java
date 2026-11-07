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
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u001a)\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0082\u0080\u0004¢\u0006\u0004\b\b\u0010\t\u001a)\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0081\u0080\u0004¢\u0006\u0004\b\u000f\u0010\u0006\u001a)\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0081\u0080\u0004¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", _UrlKt.FRAGMENT_ENCODE_SET, "getProgressionLastElement-Nkh28Cs", _UrlKt.FRAGMENT_ENCODE_SET, "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class UProgressionUtilKt {
    /* JADX INFO: renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m4306differenceModuloWZ9TVnA(int i, int i2, int i3) {
        int iM864m = UByte$$ExternalSyntheticBackport1.m864m(i, i3);
        int iM864m2 = UByte$$ExternalSyntheticBackport1.m864m(i2, i3);
        int iCompare = Integer.compare(iM864m ^ Integer.MIN_VALUE, iM864m2 ^ Integer.MIN_VALUE);
        int iM3182constructorimpl = UInt.m3182constructorimpl(iM864m - iM864m2);
        return iCompare >= 0 ? iM3182constructorimpl : UInt.m3182constructorimpl(iM3182constructorimpl + i3);
    }

    /* JADX INFO: renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m4307differenceModulosambcqE(long j, long j2, long j3) {
        long jM865m = UByte$$ExternalSyntheticBackport2.m865m(j, j3);
        long jM865m2 = UByte$$ExternalSyntheticBackport2.m865m(j2, j3);
        int iCompare = Long.compare(jM865m ^ Long.MIN_VALUE, jM865m2 ^ Long.MIN_VALUE);
        long jM3261constructorimpl = ULong.m3261constructorimpl(jM865m - jM865m2);
        return iCompare >= 0 ? jM3261constructorimpl : ULong.m3261constructorimpl(jM3261constructorimpl + j3);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m4309getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            if (Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) < 0) {
                return UInt.m3182constructorimpl(i2 - m4306differenceModuloWZ9TVnA(i2, i, UInt.m3182constructorimpl(i3)));
            }
        } else if (i3 < 0) {
            if (Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) > 0) {
                return UInt.m3182constructorimpl(i2 + m4306differenceModuloWZ9TVnA(i, i2, UInt.m3182constructorimpl(-i3)));
            }
        } else {
            f$$ExternalSyntheticBUOutline1.m212m("Step is zero.");
            return 0;
        }
        return i2;
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m4308getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        if (j3 > 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) >= 0 ? j2 : ULong.m3261constructorimpl(j2 - m4307differenceModulosambcqE(j2, j, ULong.m3261constructorimpl(j3)));
        }
        if (j3 < 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) <= 0 ? j2 : ULong.m3261constructorimpl(j2 + m4307differenceModulosambcqE(j, j2, ULong.m3261constructorimpl(-j3)));
        }
        f$$ExternalSyntheticBUOutline1.m212m("Step is zero.");
        return 0L;
    }
}
