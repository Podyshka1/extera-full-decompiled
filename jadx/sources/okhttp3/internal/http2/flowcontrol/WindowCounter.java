package okhttp3.internal.http2.flowcontrol;

/* JADX INFO: loaded from: classes.dex */
public final class WindowCounter {
    private long acknowledged;
    private final int streamId;
    private long total;

    public WindowCounter(int i) {
        this.streamId = i;
    }

    public final int getStreamId() {
        return this.streamId;
    }

    public final long getTotal() {
        return this.total;
    }

    public final long getAcknowledged() {
        return this.acknowledged;
    }

    public final synchronized long getUnacknowledged() {
        return this.total - this.acknowledged;
    }

    public static /* synthetic */ void update$default(WindowCounter windowCounter, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        if ((i & 2) != 0) {
            j2 = 0;
        }
        windowCounter.update(j, j2);
    }

    public final synchronized void update(long j, long j2) {
        try {
            if (j < 0) {
                throw new IllegalStateException("Check failed.");
            }
            if (j2 < 0) {
                throw new IllegalStateException("Check failed.");
            }
            long j3 = this.total + j;
            this.total = j3;
            long j4 = this.acknowledged + j2;
            this.acknowledged = j4;
            if (j4 > j3) {
                throw new IllegalStateException("Check failed.");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public String toString() {
        return "WindowCounter(streamId=" + this.streamId + ", total=" + this.total + ", acknowledged=" + this.acknowledged + ", unacknowledged=" + getUnacknowledged() + ')';
    }
}
