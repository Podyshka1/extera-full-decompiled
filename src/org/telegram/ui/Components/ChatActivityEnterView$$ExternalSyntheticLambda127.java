package org.telegram.ui.Components;

import org.telegram.messenger.Utilities;
import org.telegram.tgnet.tl.TL_iv;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class ChatActivityEnterView$$ExternalSyntheticLambda127 implements Utilities.Callback3 {
    public final /* synthetic */ ChatActivityEnterView f$0;

    public /* synthetic */ ChatActivityEnterView$$ExternalSyntheticLambda127(ChatActivityEnterView chatActivityEnterView) {
        this.f$0 = chatActivityEnterView;
    }

    @Override // org.telegram.messenger.Utilities.Callback3
    public final void run(Object obj, Object obj2, Object obj3) {
        this.f$0.insertAiResponse((String) obj, (CharSequence) obj2, (TL_iv.RichMessage) obj3);
    }
}
