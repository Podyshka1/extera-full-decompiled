package org.telegram.utils.recorder.round;

import org.telegram.utils.recorder.round.RoundVideoCameraController;
import org.telegram.utils.recorder.round.RoundVideoCodecRecorder;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class RoundVideoCameraController$$ExternalSyntheticLambda18 implements RoundVideoCodecRecorder.AmplitudeListener {
    public final /* synthetic */ RoundVideoCameraController.Callback f$0;

    @Override // org.telegram.utils.recorder.round.RoundVideoCodecRecorder.AmplitudeListener
    public final void onAudioAmplitude(double d) {
        this.f$0.onAudioAmplitude(d);
    }
}
