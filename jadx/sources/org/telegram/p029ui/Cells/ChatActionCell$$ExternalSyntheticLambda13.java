package org.telegram.p029ui.Cells;

import org.telegram.p029ui.Components.RLottieDrawable;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ChatActionCell$$ExternalSyntheticLambda13 implements Runnable {
    public final /* synthetic */ RLottieDrawable f$0;

    public /* synthetic */ ChatActionCell$$ExternalSyntheticLambda13(RLottieDrawable rLottieDrawable) {
        this.f$0 = rLottieDrawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.restart();
    }
}
