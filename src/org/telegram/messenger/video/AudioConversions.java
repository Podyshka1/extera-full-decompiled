package org.telegram.messenger.video;

/* JADX INFO: loaded from: classes5.dex */
public class AudioConversions {
    private static final int BYTES_PER_SAMPLE_PER_CHANNEL = 2;
    private static final int BYTES_PER_SHORT = 2;
    private static final long MICROSECONDS_PER_SECOND = 1000000;

    public static long bytesToUs(int i, int i2, int i3) {
        return (((long) i) * MICROSECONDS_PER_SECOND) / ((long) ((i2 * 2) * i3));
    }

    public static int usToBytes(long j, int i, int i2) {
        return (int) Math.ceil((j * ((double) ((i * 2) * i2))) / 1000000.0d);
    }

    public static long shortsToUs(int i, int i2, int i3) {
        return bytesToUs(i * 2, i2, i3);
    }

    public static int usToShorts(long j, int i, int i2) {
        return usToBytes(j, i, i2) / 2;
    }
}
