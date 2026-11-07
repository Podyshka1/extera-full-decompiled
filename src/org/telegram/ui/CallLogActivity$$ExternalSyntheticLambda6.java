package org.telegram.ui;

import android.graphics.Canvas;
import android.view.View;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.blur3.ViewGroupPartRenderer;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class CallLogActivity$$ExternalSyntheticLambda6 implements ViewGroupPartRenderer.DrawChildMethod {
    public final /* synthetic */ UniversalRecyclerView f$0;

    public /* synthetic */ CallLogActivity$$ExternalSyntheticLambda6(UniversalRecyclerView universalRecyclerView) {
        this.f$0 = universalRecyclerView;
    }

    @Override // org.telegram.ui.Components.blur3.ViewGroupPartRenderer.DrawChildMethod
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return this.f$0.drawChild(canvas, view, j);
    }
}
