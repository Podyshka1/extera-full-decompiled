package org.telegram.p029ui.Stories.recorder;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Stories.recorder.FlashViews;

/* JADX INFO: loaded from: classes7.dex */
public abstract class StoryModeTabs extends FrameLayout implements FlashViews.Invertable {
    private ValueAnimator animator;
    private float invert;
    private final LinearLayout layout;
    private final TextView live;
    private final FrameLayout liveLayout;
    private float mode;
    private Utilities.Callback onSwitchModeListener;
    private Utilities.Callback onSwitchingModeListener;
    private final TextView photo;
    private final FrameLayout photoLayout;
    private int toMode;
    private final TextView video;
    private final FrameLayout videoLayout;

    protected abstract boolean allowTouch();

    public StoryModeTabs(Context context) {
        super(context);
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Stories.recorder.StoryModeTabs.1

            /* JADX INFO: renamed from: a */
            private final RectF f2230a = new RectF();

            /* JADX INFO: renamed from: b */
            private final RectF f2231b = new RectF();

            /* JADX INFO: renamed from: c */
            private final RectF f2232c = new RectF();
            private final Paint backgroundPaint = new Paint(1);

            private void setRect(int i, RectF rectF) {
                FrameLayout frameLayout;
                if (i <= -1) {
                    frameLayout = StoryModeTabs.this.liveLayout;
                } else {
                    frameLayout = i >= 1 ? StoryModeTabs.this.videoLayout : StoryModeTabs.this.photoLayout;
                }
                rectF.set(frameLayout.getLeft(), frameLayout.getBottom() - AndroidUtilities.m1124dp(30.0f), frameLayout.getRight(), frameLayout.getBottom());
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                setRect((int) Math.floor(StoryModeTabs.this.mode), this.f2230a);
                setRect((int) Math.ceil(StoryModeTabs.this.mode), this.f2231b);
                AndroidUtilities.lerp(this.f2230a, this.f2231b, StoryModeTabs.this.mode - ((float) Math.floor(StoryModeTabs.this.mode)), this.f2232c);
                this.backgroundPaint.setColor(Theme.multAlpha(ColorUtils.blendARGB(-1, -16777216, StoryModeTabs.this.invert), 0.15f));
                RectF rectF = this.f2232c;
                canvas.drawRoundRect(rectF, rectF.height() / 2.0f, this.f2232c.height() / 2.0f, this.backgroundPaint);
                super.dispatchDraw(canvas);
            }
        };
        this.layout = linearLayout;
        linearLayout.setOrientation(0);
        FrameLayout frameLayout = new FrameLayout(context);
        this.liveLayout = frameLayout;
        TextView textView = new TextView(context);
        this.live = textView;
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextColor(-1);
        textView.setText(LocaleController.getString(C2888R.string.StoryLive));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 80, 16.0f, 0.0f, 16.0f, 7.0f));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-2, -1, 112, 0.0f, 0.0f, 6.66f, 0.0f));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryModeTabs$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        ScaleStateListAnimator.apply(frameLayout);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.photoLayout = frameLayout2;
        TextView textView2 = new TextView(context);
        this.photo = textView2;
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setTextColor(-1);
        textView2.setText(LocaleController.getString(C2888R.string.StoryPhoto));
        frameLayout2.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 80, 16.0f, 0.0f, 16.0f, 7.0f));
        linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-2, -1, 112, 0.0f, 0.0f, 6.66f, 0.0f));
        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryModeTabs$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        ScaleStateListAnimator.apply(frameLayout2);
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.videoLayout = frameLayout3;
        TextView textView3 = new TextView(context);
        this.video = textView3;
        textView3.setTextSize(1, 14.0f);
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setTextColor(-1);
        textView3.setText(LocaleController.getString(C2888R.string.StoryVideo));
        frameLayout3.addView(textView3, LayoutHelper.createFrame(-2, -2.0f, 80, 16.0f, 0.0f, 16.0f, 7.0f));
        linearLayout.addView(frameLayout3, LayoutHelper.createLinear(-2, -1, 112, 0, 0, 0, 0));
        frameLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryModeTabs$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        ScaleStateListAnimator.apply(frameLayout3);
        addView(linearLayout, LayoutHelper.createFrame(-2, -1, 113));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        switchModeInternal(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        switchModeInternal(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        switchModeInternal(1);
    }

    public void setOnSwitchModeListener(Utilities.Callback<Integer> callback) {
        this.onSwitchModeListener = callback;
    }

    public void setOnSwitchingModeListener(Utilities.Callback<Float> callback) {
        this.onSwitchingModeListener = callback;
    }

    private void switchModeInternal(int i) {
        if (this.toMode == i) {
            return;
        }
        switchMode(i);
        Utilities.Callback callback = this.onSwitchModeListener;
        if (callback != null) {
            callback.run(Integer.valueOf(i));
        }
    }

    public void switchMode(int i) {
        if (this.toMode == i) {
            return;
        }
        this.toMode = i;
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mode, i);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryModeTabs$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$switchMode$3(valueAnimator2);
            }
        });
        this.animator.setDuration(320L);
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchMode$3(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.mode = fFloatValue;
        Utilities.Callback callback = this.onSwitchingModeListener;
        if (callback != null) {
            callback.run(Float.valueOf(Utilities.clamp(fFloatValue, 1.0f, -1.0f)));
        }
        this.layout.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (allowTouch()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // org.telegram.ui.Stories.recorder.FlashViews.Invertable
    public void setInvert(float f) {
        this.invert = f;
        this.live.setTextColor(ColorUtils.blendARGB(-1, -16777216, f));
        this.photo.setTextColor(ColorUtils.blendARGB(-1, -16777216, f));
        this.video.setTextColor(ColorUtils.blendARGB(-1, -16777216, f));
    }

    @Override // android.view.View, org.telegram.ui.Stories.recorder.FlashViews.Invertable
    public void invalidate() {
        super.invalidate();
        this.layout.invalidate();
    }
}
