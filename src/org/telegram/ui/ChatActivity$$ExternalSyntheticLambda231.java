package org.telegram.ui;

import android.graphics.Canvas;
import android.graphics.RectF;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda231 implements IBlur3Capture {
    public final /* synthetic */ ChatActivity.ChatActivityFragmentView f$0;

    public /* synthetic */ ChatActivity$$ExternalSyntheticLambda231(ChatActivity.ChatActivityFragmentView chatActivityFragmentView) {
        this.f$0 = chatActivityFragmentView;
    }

    @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
    public final void capture(Canvas canvas, RectF rectF) {
        this.f$0.drawList(canvas, rectF);
    }
}
