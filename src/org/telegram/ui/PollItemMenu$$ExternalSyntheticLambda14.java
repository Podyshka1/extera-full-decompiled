package org.telegram.ui;

import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.ViewPagerFixed;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class PollItemMenu$$ExternalSyntheticLambda14 implements Utilities.Callback {
    public final /* synthetic */ ViewPagerFixed f$0;

    @Override // org.telegram.messenger.Utilities.Callback
    public final void run(Object obj) {
        this.f$0.scrollToPosition(((Integer) obj).intValue());
    }
}
