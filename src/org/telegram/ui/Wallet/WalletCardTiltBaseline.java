package org.telegram.ui.Wallet;

/* JADX INFO: loaded from: classes8.dex */
final class WalletCardTiltBaseline {
    private float baselineRotationX;
    private float baselineRotationY;
    private boolean hasSensorPose;
    private long lastFrameNanos;
    private long latestSensorTimestampNanos;
    private final float maxRotationDegrees;
    private float sensorRotationX;
    private float sensorRotationY;
    private float stationaryAnchorX;
    private float stationaryAnchorY;
    private long stationarySinceNanos;

    public WalletCardTiltBaseline(float f) {
        this.maxRotationDegrees = f;
    }

    public void reset() {
        this.hasSensorPose = false;
        this.stationarySinceNanos = 0L;
        this.latestSensorTimestampNanos = 0L;
        this.lastFrameNanos = 0L;
    }

    public void setSensorRotation(float f, float f2, long j) {
        if (Float.isNaN(f) || Float.isInfinite(f) || Float.isNaN(f2) || Float.isInfinite(f2)) {
            return;
        }
        this.sensorRotationX = f;
        this.sensorRotationY = f2;
        this.latestSensorTimestampNanos = j;
        if (!this.hasSensorPose) {
            this.hasSensorPose = true;
            this.baselineRotationX = f;
            this.baselineRotationY = f2;
            this.stationaryAnchorX = f;
            this.stationaryAnchorY = f2;
            this.stationarySinceNanos = j;
            return;
        }
        float f3 = f - this.stationaryAnchorX;
        float f4 = f2 - this.stationaryAnchorY;
        float f5 = this.maxRotationDegrees * 0.075f;
        if ((f3 * f3) + (f4 * f4) > f5 * f5) {
            this.stationaryAnchorX = f;
            this.stationaryAnchorY = f2;
            this.stationarySinceNanos = j;
        }
    }

    public void update(long j) {
        if (this.hasSensorPose) {
            if (this.lastFrameNanos == 0) {
                this.lastFrameNanos = j;
                return;
            }
            float fMin = Math.min(0.1f, Math.max(0.0f, (j - r0) * 1.0E-9f));
            this.lastFrameNanos = j;
            if (this.latestSensorTimestampNanos - this.stationarySinceNanos < 1000000000) {
                return;
            }
            float fExp = 1.0f - ((float) Math.exp((-fMin) / 1.0f));
            float f = this.baselineRotationX;
            this.baselineRotationX = f + ((this.sensorRotationX - f) * fExp);
            float f2 = this.baselineRotationY;
            this.baselineRotationY = f2 + ((this.sensorRotationY - f2) * fExp);
        }
    }

    public float getRotationX() {
        if (this.hasSensorPose) {
            return clamp(this.sensorRotationX - this.baselineRotationX);
        }
        return 0.0f;
    }

    public float getRotationY() {
        if (this.hasSensorPose) {
            return clamp(this.sensorRotationY - this.baselineRotationY);
        }
        return 0.0f;
    }

    private float clamp(float f) {
        float f2 = this.maxRotationDegrees;
        return Math.max(-f2, Math.min(f2, f));
    }
}
