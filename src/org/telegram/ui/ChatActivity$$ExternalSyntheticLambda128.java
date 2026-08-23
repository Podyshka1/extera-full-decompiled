package org.telegram.ui;

import org.telegram.ui.Components.ScrimOptions;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda128 implements Runnable {
    public final /* synthetic */ ScrimOptions f$0;

    public /* synthetic */ ChatActivity$$ExternalSyntheticLambda128(ScrimOptions scrimOptions) {
        this.f$0 = scrimOptions;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.dismissFast();
    }
}
