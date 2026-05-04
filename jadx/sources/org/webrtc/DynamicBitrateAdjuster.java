package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
class DynamicBitrateAdjuster extends BaseBitrateAdjuster {
    private static final double BITRATE_ADJUSTMENT_MAX_SCALE = 4.0d;
    private static final double BITRATE_ADJUSTMENT_SEC = 3.0d;
    private static final int BITRATE_ADJUSTMENT_STEPS = 20;
    private static final double BITS_PER_BYTE = 8.0d;
    private int bitrateAdjustmentScaleExp;
    private double deviationBytes;
    private double timeSinceLastAdjustmentMs;

    DynamicBitrateAdjuster() {
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public void setTargets(int i, double d) {
        int i2 = this.targetBitrateBps;
        if (i2 > 0 && i < i2) {
            this.deviationBytes = (this.deviationBytes * ((double) i)) / ((double) i2);
        }
        super.setTargets(i, d);
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public void reportEncodedFrame(int i) {
        double d = this.targetFramerateFps;
        if (d == 0.0d) {
            return;
        }
        int i2 = this.targetBitrateBps;
        double d2 = this.deviationBytes + (((double) i) - ((((double) i2) / BITS_PER_BYTE) / d));
        this.deviationBytes = d2;
        this.timeSinceLastAdjustmentMs += 1000.0d / d;
        double d3 = ((double) i2) / BITS_PER_BYTE;
        double d4 = 3.0d * d3;
        double dMin = Math.min(d2, d4);
        this.deviationBytes = dMin;
        double dMax = Math.max(dMin, -d4);
        this.deviationBytes = dMax;
        if (this.timeSinceLastAdjustmentMs <= 3000.0d) {
            return;
        }
        if (dMax > d3) {
            int i3 = this.bitrateAdjustmentScaleExp - ((int) ((dMax / d3) + 0.5d));
            this.bitrateAdjustmentScaleExp = i3;
            this.bitrateAdjustmentScaleExp = Math.max(i3, -20);
            this.deviationBytes = d3;
        } else {
            double d5 = -d3;
            if (dMax < d5) {
                int i4 = this.bitrateAdjustmentScaleExp + ((int) (((-dMax) / d3) + 0.5d));
                this.bitrateAdjustmentScaleExp = i4;
                this.bitrateAdjustmentScaleExp = Math.min(i4, 20);
                this.deviationBytes = d5;
            }
        }
        this.timeSinceLastAdjustmentMs = 0.0d;
    }

    private double getBitrateAdjustmentScale() {
        return Math.pow(BITRATE_ADJUSTMENT_MAX_SCALE, ((double) this.bitrateAdjustmentScaleExp) / 20.0d);
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public int getAdjustedBitrateBps() {
        return (int) (((double) this.targetBitrateBps) * getBitrateAdjustmentScale());
    }
}
