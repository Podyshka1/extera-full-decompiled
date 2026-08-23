package org.telegram.ui;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class PhotoViewer$$ExternalSyntheticLambda76 implements Runnable {
    public final /* synthetic */ PhotoViewer f$0;

    public /* synthetic */ PhotoViewer$$ExternalSyntheticLambda76(PhotoViewer photoViewer) {
        this.f$0 = photoViewer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.invalidateBlur();
    }
}
