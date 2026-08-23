package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.RectF;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class RecyclerListView$$ExternalSyntheticLambda1 implements Utilities.Callback5 {
    public final /* synthetic */ RecyclerListView f$0;

    public /* synthetic */ RecyclerListView$$ExternalSyntheticLambda1(RecyclerListView recyclerListView) {
        this.f$0 = recyclerListView;
    }

    @Override // org.telegram.messenger.Utilities.Callback5
    public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        this.f$0.drawBackgroundRect((Canvas) obj, (RectF) obj2, ((Float) obj3).floatValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
    }
}
