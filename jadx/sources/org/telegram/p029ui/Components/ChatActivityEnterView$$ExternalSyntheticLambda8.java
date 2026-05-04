package org.telegram.p029ui.Components;

import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ChatActivityEnterView$$ExternalSyntheticLambda8 implements View.OnLongClickListener {
    public final /* synthetic */ ChatActivityEnterView f$0;

    public /* synthetic */ ChatActivityEnterView$$ExternalSyntheticLambda8(ChatActivityEnterView chatActivityEnterView) {
        this.f$0 = chatActivityEnterView;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        return this.f$0.onSendLongClick(view);
    }
}
