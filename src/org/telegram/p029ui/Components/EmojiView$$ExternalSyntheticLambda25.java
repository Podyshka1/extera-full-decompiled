package org.telegram.p029ui.Components;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class EmojiView$$ExternalSyntheticLambda25 implements Runnable {
    public final /* synthetic */ EmojiView f$0;

    public /* synthetic */ EmojiView$$ExternalSyntheticLambda25(EmojiView emojiView) {
        this.f$0 = emojiView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.invalidateBlurCaptures();
    }
}
