package org.telegram.utils.recorder.audio;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class AudioCapture$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ AudioCapture f$0;

    public /* synthetic */ AudioCapture$$ExternalSyntheticLambda3(AudioCapture audioCapture) {
        this.f$0 = audioCapture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.readOnce();
    }
}
