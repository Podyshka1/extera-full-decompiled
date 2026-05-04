package com.exteragram.messenger.plugins.p015ui.components.templates;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
public class UniversalView extends View {
    UniversalViewDelegate delegate;

    public UniversalView(Context context, UniversalViewDelegate universalViewDelegate) {
        super(context);
        this.delegate = universalViewDelegate;
    }

    public UniversalView(Context context) {
        super(context);
    }

    public UniversalViewDelegate getDelegate() {
        return this.delegate;
    }

    public void setDelegate(UniversalViewDelegate universalViewDelegate) {
        this.delegate = universalViewDelegate;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        UniversalViewDelegate universalViewDelegate = this.delegate;
        if (universalViewDelegate != null) {
            universalViewDelegate.onDraw(canvas, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalView$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onDraw$0((Canvas) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$0(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        UniversalViewDelegate universalViewDelegate = this.delegate;
        if (universalViewDelegate != null) {
            universalViewDelegate.onAttachedToWindow();
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        UniversalViewDelegate universalViewDelegate = this.delegate;
        if (universalViewDelegate != null) {
            return universalViewDelegate.onTouchEvent(motionEvent, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalView$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return this.f$0.lambda$onTouchEvent$1((MotionEvent) obj);
                }
            });
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$onTouchEvent$1(MotionEvent motionEvent) {
        return Boolean.valueOf(super.onTouchEvent(motionEvent));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        UniversalViewDelegate universalViewDelegate = this.delegate;
        if (universalViewDelegate != null) {
            universalViewDelegate.onMeasure(i, i2, new Utilities.Callback2() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalView$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$onMeasure$2(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            });
        }
        super.onMeasure(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMeasure$2(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        UniversalViewDelegate universalViewDelegate = this.delegate;
        if (universalViewDelegate != null) {
            universalViewDelegate.onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        UniversalViewDelegate universalViewDelegate = this.delegate;
        if (universalViewDelegate != null) {
            universalViewDelegate.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalView$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onInitializeAccessibilityNodeInfo$3((AccessibilityNodeInfo) obj);
                }
            });
        } else {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onInitializeAccessibilityNodeInfo$3(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    public interface UniversalViewDelegate {
        void onAttachedToWindow();

        void onDetachedFromWindow();

        void onDraw(Canvas canvas, Utilities.Callback<Canvas> callback);

        void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo, Utilities.Callback<AccessibilityNodeInfo> callback);

        void onMeasure(int i, int i2, Utilities.Callback2<Integer, Integer> callback2);

        boolean onTouchEvent(MotionEvent motionEvent, Utilities.CallbackReturn<MotionEvent, Boolean> callbackReturn);

        /* JADX INFO: renamed from: com.exteragram.messenger.plugins.ui.components.templates.UniversalView$UniversalViewDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onAttachedToWindow(UniversalViewDelegate universalViewDelegate) {
            }

            public static void $default$onDetachedFromWindow(UniversalViewDelegate universalViewDelegate) {
            }
        }
    }
}
