package org.telegram.ui.Stars;

import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class StarGiftSheet$$ExternalSyntheticLambda66 implements Utilities.Callback {
    public final /* synthetic */ StarGiftSheet f$0;

    public /* synthetic */ StarGiftSheet$$ExternalSyntheticLambda66(StarGiftSheet starGiftSheet) {
        this.f$0 = starGiftSheet;
    }

    @Override // org.telegram.messenger.Utilities.Callback
    public final void run(Object obj) {
        this.f$0.dismiss(((Boolean) obj).booleanValue());
    }
}
