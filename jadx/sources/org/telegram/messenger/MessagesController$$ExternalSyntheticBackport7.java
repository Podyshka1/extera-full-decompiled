package org.telegram.messenger;

/* JADX INFO: loaded from: classes5.dex */
public abstract /* synthetic */ class MessagesController$$ExternalSyntheticBackport7 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ long m1163m(long j, long j2) {
        if (j2 < 0) {
            return (j ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE) ? 0L : 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return j3 + ((long) (((j - (j3 * j2)) ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE) ? 0 : 1));
    }
}
