package org.telegram.messenger.pip;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.pip.source.PipSourceHandlerState2;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"ViewConstructor"})
public class PipSourceContentView extends ViewGroup {
    private final PipSourceHandlerState2 state;

    public PipSourceContentView(Context context, PipSourceHandlerState2 pipSourceHandlerState2) {
        super(context);
        this.state = pipSourceHandlerState2;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
        this.state.updatePositionViewRect(size, size2, ((PipActivityContentLayout) getParent()).isViewInPip());
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            getChildAt(i3).measure(View.MeasureSpec.makeMeasureSpec(this.state.position.width(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(this.state.position.height(), TLObject.FLAG_30));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            Rect rect = this.state.position;
            childAt.layout(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchDraw$0(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.state.draw(canvas, new Utilities.Callback() { // from class: org.telegram.messenger.pip.PipSourceContentView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$dispatchDraw$0((Canvas) obj);
            }
        });
    }
}
