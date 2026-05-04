package org.telegram.p029ui;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class CameraScanActivity$$ExternalSyntheticLambda12 implements Runnable {
    public final /* synthetic */ CameraScanActivity f$0;

    public /* synthetic */ CameraScanActivity$$ExternalSyntheticLambda12(CameraScanActivity cameraScanActivity) {
        this.f$0 = cameraScanActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.updateRecognized();
    }
}
