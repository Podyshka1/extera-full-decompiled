package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
class FramerateBitrateAdjuster extends BaseBitrateAdjuster {
    private static final int DEFAULT_FRAMERATE_FPS = 30;

    FramerateBitrateAdjuster() {
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public void setTargets(int i, double d) {
        this.targetFramerateFps = 30.0d;
        this.targetBitrateBps = (int) (((double) (i * 30)) / d);
    }
}
