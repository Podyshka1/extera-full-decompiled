package com.exteragram.messenger.plugins.ui.components.templates;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
public class UniversalFrameLayout extends FrameLayout {
    private UniversalFrameLayoutListener universalFrameLayoutListener;

    public void setUniversalFrameLayoutListener(UniversalFrameLayoutListener universalFrameLayoutListener) {
        this.universalFrameLayoutListener = universalFrameLayoutListener;
    }

    public UniversalFrameLayoutListener getUniversalFrameLayoutListener() {
        return this.universalFrameLayoutListener;
    }

    public UniversalFrameLayout(Context context, UniversalFrameLayoutListener universalFrameLayoutListener) {
        super(context);
        this.universalFrameLayoutListener = universalFrameLayoutListener;
    }

    public UniversalFrameLayout(Context context) {
        super(context);
        this.universalFrameLayoutListener = null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.onLayout(z, i, i2, i3, i4, new Utilities.Callback5() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback5
                public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    this.f$0.lambda$onLayout$0(((Boolean) obj).booleanValue(), ((Integer) obj2).intValue(), ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), ((Integer) obj5).intValue());
                }
            });
        } else {
            super.onLayout(z, i, i2, i3, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLayout$0(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.onMeasure(i, i2, new Utilities.Callback2() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda13
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$onMeasure$1(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            });
        } else {
            super.onMeasure(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMeasure$1(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.setTranslationX(f, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setTranslationX$2(((Float) obj).floatValue());
                }
            });
        } else {
            super.setTranslationX(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTranslationX$2(float f) {
        super.setTranslationX(f);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.setTranslationY(f, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setTranslationY$3(((Float) obj).floatValue());
                }
            });
        } else {
            super.setTranslationY(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTranslationY$3(float f) {
        super.setTranslationY(f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.onAttachedToWindow(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAttachedToWindow$4();
                }
            });
        } else {
            super.onAttachedToWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAttachedToWindow$4() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.onDetachedFromWindow(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDetachedFromWindow$5();
                }
            });
        } else {
            super.onDetachedFromWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDetachedFromWindow$5() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.dispatchDraw(canvas, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$dispatchDraw$6((Canvas) obj);
                }
            });
        } else {
            super.dispatchDraw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchDraw$6(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.requestLayout(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$requestLayout$7();
                }
            });
        } else {
            super.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestLayout$7() {
        super.requestLayout();
    }

    @Override // android.view.View
    public void invalidate() {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.invalidate(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$invalidate$8();
                }
            });
        } else {
            super.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invalidate$8() {
        super.invalidate();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.invalidate(i, i2, i3, i4, new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$invalidate$9();
                }
            });
        } else {
            super.invalidate(i, i2, i3, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invalidate$9() {
        super.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.onDraw(canvas, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onDraw$10((Canvas) obj);
                }
            });
        } else {
            super.onDraw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$10(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onInitializeAccessibilityNodeInfo$11((AccessibilityNodeInfo) obj);
                }
            });
        } else {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onInitializeAccessibilityNodeInfo$11(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            return universalFrameLayoutListener.onInterceptTouchEvent(motionEvent, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return this.f$0.lambda$onInterceptTouchEvent$12((MotionEvent) obj);
                }
            });
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$onInterceptTouchEvent$12(MotionEvent motionEvent) {
        return Boolean.valueOf(super.onInterceptTouchEvent(motionEvent));
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            return universalFrameLayoutListener.onTouchEvent(motionEvent, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return this.f$0.lambda$onTouchEvent$13((MotionEvent) obj);
                }
            });
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$onTouchEvent$13(MotionEvent motionEvent) {
        return Boolean.valueOf(super.onTouchEvent(motionEvent));
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            return universalFrameLayoutListener.drawChild(canvas, view, j, new Utilities.Callback3Return() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback3Return
                public final Object run(Object obj, Object obj2, Object obj3) {
                    return this.f$0.lambda$drawChild$14((Canvas) obj, (View) obj2, ((Long) obj3).longValue());
                }
            });
        }
        return super.drawChild(canvas, view, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$drawChild$14(Canvas canvas, View view, long j) {
        return Boolean.valueOf(super.drawChild(canvas, view, j));
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        UniversalFrameLayoutListener universalFrameLayoutListener = this.universalFrameLayoutListener;
        if (universalFrameLayoutListener != null) {
            universalFrameLayoutListener.setVisibility(i, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$$ExternalSyntheticLambda15
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setVisibility$15(((Integer) obj).intValue());
                }
            });
        } else {
            super.setVisibility(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setVisibility$15(int i) {
        super.setVisibility(i);
    }

    public interface UniversalFrameLayoutListener {
        void dispatchDraw(Canvas canvas, Utilities.Callback<Canvas> callback);

        boolean drawChild(Canvas canvas, View view, long j, Utilities.Callback3Return<Canvas, View, Long, Boolean> callback3Return);

        void invalidate(int i, int i2, int i3, int i4, Runnable runnable);

        void invalidate(Runnable runnable);

        void onAttachedToWindow(Runnable runnable);

        void onDetachedFromWindow(Runnable runnable);

        void onDraw(Canvas canvas, Utilities.Callback<Canvas> callback);

        void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo, Utilities.Callback<AccessibilityNodeInfo> callback);

        boolean onInterceptTouchEvent(MotionEvent motionEvent, Utilities.CallbackReturn<MotionEvent, Boolean> callbackReturn);

        void onLayout(boolean z, int i, int i2, int i3, int i4, Utilities.Callback5<Boolean, Integer, Integer, Integer, Integer> callback5);

        void onMeasure(int i, int i2, Utilities.Callback2<Integer, Integer> callback2);

        boolean onTouchEvent(MotionEvent motionEvent, Utilities.CallbackReturn<MotionEvent, Boolean> callbackReturn);

        void requestLayout(Runnable runnable);

        void setTranslationX(float f, Utilities.Callback<Float> callback);

        void setTranslationY(float f, Utilities.Callback<Float> callback);

        void setVisibility(int i, Utilities.Callback<Integer> callback);

        /* JADX INFO: renamed from: com.exteragram.messenger.plugins.ui.components.templates.UniversalFrameLayout$UniversalFrameLayoutListener$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
        }
    }
}
