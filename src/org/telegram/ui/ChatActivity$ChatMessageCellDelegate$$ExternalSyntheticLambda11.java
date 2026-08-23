package org.telegram.ui;

import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda11 implements Utilities.Callback {
    public final /* synthetic */ ChatActivity f$0;

    public /* synthetic */ ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda11(ChatActivity chatActivity) {
        this.f$0 = chatActivity;
    }

    @Override // org.telegram.messenger.Utilities.Callback
    public final void run(Object obj) {
        this.f$0.processSelectedOption(((Integer) obj).intValue());
    }
}
