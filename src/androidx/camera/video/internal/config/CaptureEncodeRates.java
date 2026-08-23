package androidx.camera.video.internal.config;

/* JADX INFO: loaded from: classes4.dex */
public final class CaptureEncodeRates {
    private final int captureRate;
    private final int encodeRate;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CaptureEncodeRates)) {
            return false;
        }
        CaptureEncodeRates captureEncodeRates = (CaptureEncodeRates) obj;
        return this.captureRate == captureEncodeRates.captureRate && this.encodeRate == captureEncodeRates.encodeRate;
    }

    public int hashCode() {
        return (this.captureRate * 31) + this.encodeRate;
    }

    public String toString() {
        return "CaptureEncodeRates(captureRate=" + this.captureRate + ", encodeRate=" + this.encodeRate + ')';
    }

    public CaptureEncodeRates(int i, int i2) {
        this.captureRate = i;
        this.encodeRate = i2;
    }

    public final int getCaptureRate() {
        return this.captureRate;
    }

    public final int getEncodeRate() {
        return this.encodeRate;
    }
}
