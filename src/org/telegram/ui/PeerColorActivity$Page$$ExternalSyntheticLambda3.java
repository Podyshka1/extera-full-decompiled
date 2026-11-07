package org.telegram.ui;

import org.telegram.ui.PeerColorActivity;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class PeerColorActivity$Page$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ PeerColorActivity.Page f$0;

    public /* synthetic */ PeerColorActivity$Page$$ExternalSyntheticLambda3(PeerColorActivity.Page page) {
        this.f$0 = page;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.updateGiftTabsPosition();
    }
}
