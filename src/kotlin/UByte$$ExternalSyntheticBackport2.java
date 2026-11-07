package kotlin;

/* JADX INFO: loaded from: classes5.dex */
public abstract /* synthetic */ class UByte$$ExternalSyntheticBackport2 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ long m865m(long j, long j2) {
        if (j2 < 0) {
            return (j ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE) ? j : j - j2;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if ((j3 ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE)) {
            j2 = 0;
        }
        return j3 - j2;
    }
}
