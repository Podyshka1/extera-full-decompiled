package org.telegram.utils.recorder.round;

import org.telegram.utils.recorder.round.RoundVideoSession;

/* JADX INFO: loaded from: classes8.dex */
abstract class RoundVideoCamera {
    public abstract void release();

    public abstract boolean setCameraFacing(RoundVideoSession.CameraFacing cameraFacing);

    public abstract boolean setFocusPoint(float f, float f2);

    public abstract boolean setTorchEnabled(boolean z);

    public abstract boolean setZoom(float f);

    public abstract boolean setZoomRatio(float f);

    public abstract void startSegment(RoundVideoMp4Writer roundVideoMp4Writer, long j, RoundVideoSession.CameraFacing cameraFacing);

    public abstract boolean stopSegment();
}
