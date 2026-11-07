package androidx.media3.exoplayer.drm;

/* JADX INFO: loaded from: classes4.dex */
public final class UnsupportedDrmException extends Exception {
    public final int reason;

    public UnsupportedDrmException(int i) {
        this.reason = i;
    }

    public UnsupportedDrmException(int i, Exception exc) {
        super(exc);
        this.reason = i;
    }
}
