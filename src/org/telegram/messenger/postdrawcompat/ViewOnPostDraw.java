package org.telegram.messenger.postdrawcompat;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Trace;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Iterator;
import me.vkryl.core.reference.ReferenceList;

/* JADX INFO: loaded from: classes3.dex */
class ViewOnPostDraw extends View {
    private final ReferenceList<OnPostDrawListener> callbacks;
    private ViewTreeObserver observer;
    private final ViewTreeObserver.OnDrawListener onDrawListener;

    public ViewOnPostDraw(Context context) {
        super(context);
        this.callbacks = new ReferenceList<>();
        this.onDrawListener = new ViewTreeObserver.OnDrawListener() { // from class: org.telegram.messenger.postdrawcompat.ViewOnPostDraw$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                this.f$0.forceLayout();
            }
        };
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        this.observer = viewTreeObserver;
        viewTreeObserver.addOnDrawListener(this.onDrawListener);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewTreeObserver viewTreeObserver = this.observer;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            this.observer.removeOnDrawListener(this.onDrawListener);
        }
        this.observer = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        dispatchOnPostDrawListeners();
    }

    private void dispatchOnPostDrawListeners() {
        Trace.beginSection("OnPostDraw");
        try {
            Iterator<OnPostDrawListener> it = this.callbacks.iterator();
            while (it.hasNext()) {
                it.next().onPostDraw();
            }
        } finally {
            Trace.endSection();
        }
    }

    public void addOnPostDrawListener(OnPostDrawListener onPostDrawListener) {
        this.callbacks.add(onPostDrawListener);
    }

    public void removeOnPostDrawListener(OnPostDrawListener onPostDrawListener) {
        this.callbacks.remove(onPostDrawListener);
    }
}
