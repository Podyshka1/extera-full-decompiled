package org.telegram.p029ui;

import org.telegram.messenger.browser.Browser;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda13 implements Runnable {
    public final /* synthetic */ Browser.Progress f$0;

    public /* synthetic */ ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda13(Browser.Progress progress) {
        this.f$0 = progress;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.end();
    }
}
