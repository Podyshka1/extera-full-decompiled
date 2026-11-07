package org.telegram.messenger.voip;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class VoIPService$$ExternalSyntheticLambda72 implements Runnable {
    public final /* synthetic */ NativeInstance f$0;

    public /* synthetic */ VoIPService$$ExternalSyntheticLambda72(NativeInstance nativeInstance) {
        this.f$0 = nativeInstance;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.stopGroup();
    }
}
