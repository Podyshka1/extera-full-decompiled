package org.telegram.ui.Components;

import org.telegram.ui.Components.EmojiView;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class EmojiView$18$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ EmojiView.SearchRunnable f$0;

    public /* synthetic */ EmojiView$18$$ExternalSyntheticLambda0(EmojiView.SearchRunnable searchRunnable) {
        this.f$0 = searchRunnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.loadNext();
    }
}
