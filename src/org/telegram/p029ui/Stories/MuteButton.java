package org.telegram.p029ui.Stories;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.blur3.StrokeDrawable;
import org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;

/* JADX INFO: loaded from: classes7.dex */
public class MuteButton extends FrameLayout {
    private ValueAnimator animator;
    private final StrokeDrawable background;
    private boolean connected;
    private final View filledBackgroundView;
    private final ImageView image;
    private final FrameLayout layout;
    private final View loadingView;
    private ValueAnimator loadingViewAnimator;
    private boolean muted;
    private float mutedT;

    public MuteButton(Context context, BlurredBackgroundColorProvider blurredBackgroundColorProvider) {
        super(context);
        ScaleStateListAnimator.apply(this);
        FrameLayout frameLayout = new FrameLayout(context);
        this.layout = frameLayout;
        StrokeDrawable strokeDrawable = new StrokeDrawable();
        this.background = strokeDrawable;
        strokeDrawable.setColorProvider(blurredBackgroundColorProvider);
        strokeDrawable.setBackgroundColor(-14670806);
        strokeDrawable.setPadding(AndroidUtilities.m1124dp(1.0f));
        frameLayout.setBackground(strokeDrawable);
        addView(frameLayout, LayoutHelper.createFrame(40, 40, 17));
        View view = new View(context);
        this.filledBackgroundView = view;
        view.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(40.0f), -13522392));
        frameLayout.addView(view, LayoutHelper.createFrame(38, 38, 17));
        view.setAlpha(0.0f);
        view.setScaleX(0.0f);
        view.setScaleY(0.0f);
        View view2 = new View(context) { // from class: org.telegram.ui.Stories.MuteButton.1
            private final CircularProgressDrawable progressDrawable = new CircularProgressDrawable(AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(2.0f), -13522392);

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                int iM1124dp = AndroidUtilities.m1124dp(1.0f);
                this.progressDrawable.setBounds(iM1124dp, iM1124dp, (getWidth() - iM1124dp) - iM1124dp, (getHeight() - iM1124dp) - iM1124dp);
                this.progressDrawable.draw(canvas);
                invalidate();
            }
        };
        this.loadingView = view2;
        addView(view2, LayoutHelper.createFrame(42, 42, 17));
        ImageView imageView = new ImageView(context);
        this.image = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setScaleX(0.75f);
        imageView.setScaleY(0.75f);
        imageView.setColorFilter(new PorterDuffColorFilter(-2960428, PorterDuff.Mode.SRC_IN));
        frameLayout.addView(imageView, LayoutHelper.createFrame(40, 40, 17));
        setMuted(false, false);
    }

    public void setConnected(boolean z, boolean z2) {
        if (this.connected == z && z2) {
            return;
        }
        this.connected = z;
        ValueAnimator valueAnimator = this.loadingViewAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.loadingViewAnimator = null;
        }
        boolean z3 = true;
        if (!z2) {
            this.loadingView.setAlpha(z ? 0.0f : 1.0f);
            this.loadingView.setVisibility(z ? 8 : 0);
        } else {
            this.loadingView.setVisibility(0);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.loadingView.getAlpha(), z ? 0.0f : 1.0f);
            this.loadingViewAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.MuteButton$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setConnected$0(valueAnimator2);
                }
            });
            this.loadingViewAnimator.setDuration(320L);
            this.loadingViewAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.loadingViewAnimator.start();
        }
        if (!this.muted && z) {
            z3 = false;
        }
        updateFill(z3, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setConnected$0(ValueAnimator valueAnimator) {
        this.loadingView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void setMuted(boolean z, boolean z2) {
        this.muted = z;
        if (!z2) {
            AndroidUtilities.updateImageViewImageAnimated(this.image, z ? C2888R.drawable.msg_voice_muted : C2888R.drawable.msg_voice_unmuted);
        } else {
            this.image.setImageResource(z ? C2888R.drawable.msg_voice_muted : C2888R.drawable.msg_voice_unmuted);
        }
        updateFill(z || !this.connected, z2);
    }

    private void updateFill(boolean z, boolean z2) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
        if (!z2) {
            float f = z ? 1.0f : 0.0f;
            this.mutedT = f;
            this.filledBackgroundView.setAlpha(1.0f - f);
            this.filledBackgroundView.setScaleX(1.0f - this.mutedT);
            this.filledBackgroundView.setScaleY(1.0f - this.mutedT);
            this.image.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(-1, -2960428, this.mutedT), PorterDuff.Mode.SRC_IN));
            this.layout.invalidate();
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mutedT, z ? 1.0f : 0.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.MuteButton$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$updateFill$1(valueAnimator2);
            }
        });
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.animator.setDuration(420L);
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFill$1(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.mutedT = fFloatValue;
        this.filledBackgroundView.setAlpha(1.0f - fFloatValue);
        this.filledBackgroundView.setScaleX(1.0f - this.mutedT);
        this.filledBackgroundView.setScaleY(1.0f - this.mutedT);
        this.image.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(-1, -2960428, this.mutedT), PorterDuff.Mode.SRC_IN));
        this.layout.invalidate();
    }
}
