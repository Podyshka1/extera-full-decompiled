package org.telegram.messenger;

/* JADX INFO: loaded from: classes6.dex */
final class DownloadRequestPacer {
    private double intervalMs = 50.0d;
    private long nextRequestAt;

    public long remainingDelay(long j) {
        return Math.max(0L, this.nextRequestAt - j);
    }

    public void onRequestSent(long j) {
        this.nextRequestAt = j + ((long) Math.ceil(this.intervalMs));
        this.intervalMs = Math.max(3.0d, this.intervalMs * 0.8d);
    }
}
