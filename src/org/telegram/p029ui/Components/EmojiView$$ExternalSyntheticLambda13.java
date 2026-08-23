package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.view.View;
import org.telegram.p029ui.Components.blur3.ViewGroupPartRenderer;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class EmojiView$$ExternalSyntheticLambda13 implements ViewGroupPartRenderer.DrawChildMethod {
    public final /* synthetic */ RecyclerListView f$0;

    public /* synthetic */ EmojiView$$ExternalSyntheticLambda13(RecyclerListView recyclerListView) {
        this.f$0 = recyclerListView;
    }

    @Override // org.telegram.ui.Components.blur3.ViewGroupPartRenderer.DrawChildMethod
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return this.f$0.drawChild(canvas, view, j);
    }
}
