package org.telegram.p029ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.voip.EndCloseLayout;

/* JADX INFO: loaded from: classes7.dex */
public class EndCloseLayout extends FrameLayout {
    private final EndCloseView endCloseView;
    private boolean isClosedState;
    private final TransitionSet transitionSet;

    public EndCloseLayout(Context context) {
        super(context);
        this.isClosedState = false;
        setWillNotDraw(false);
        EndCloseView endCloseView = new EndCloseView(context);
        this.endCloseView = endCloseView;
        addView(endCloseView, LayoutHelper.createFrame(52, 52, 5));
        TransitionSet transitionSet = new TransitionSet();
        this.transitionSet = transitionSet;
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new C53731());
        transitionSet.setDuration(500L);
        transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.voip.EndCloseLayout$1 */
    class C53731 extends ChangeBounds {
        C53731() {
        }

        @Override // android.transition.ChangeBounds, android.transition.Transition
        public void captureStartValues(TransitionValues transitionValues) {
            super.captureStartValues(transitionValues);
            View view = transitionValues.view;
            if (view instanceof EndCloseView) {
                int i = ((EndCloseView) view).backColor;
                int i2 = ((EndCloseView) view).round;
                int i3 = ((EndCloseView) view).callDeclineAlpha;
                int i4 = ((EndCloseView) view).closeTextAlpha;
                transitionValues.values.put("back_color_end_close", Integer.valueOf(i));
                transitionValues.values.put("round_end_close", Integer.valueOf(i2));
                transitionValues.values.put("decline_call_alpha_end_close", Integer.valueOf(i3));
                transitionValues.values.put("close_text_alpha_end_close", Integer.valueOf(i4));
            }
        }

        @Override // android.transition.ChangeBounds, android.transition.Transition
        public void captureEndValues(TransitionValues transitionValues) {
            super.captureEndValues(transitionValues);
            View view = transitionValues.view;
            if (view instanceof EndCloseView) {
                int i = ((EndCloseView) view).backColor;
                int i2 = ((EndCloseView) view).round;
                int i3 = ((EndCloseView) view).callDeclineAlpha;
                int i4 = ((EndCloseView) view).closeTextAlpha;
                transitionValues.values.put("back_color_end_close", Integer.valueOf(i));
                transitionValues.values.put("round_end_close", Integer.valueOf(i2));
                transitionValues.values.put("decline_call_alpha_end_close", Integer.valueOf(i3));
                transitionValues.values.put("close_text_alpha_end_close", Integer.valueOf(i4));
            }
        }

        @Override // android.transition.ChangeBounds, android.transition.Transition
        public Animator createAnimator(ViewGroup viewGroup, final TransitionValues transitionValues, TransitionValues transitionValues2) {
            if (transitionValues != null && transitionValues2 != null && (transitionValues.view instanceof EndCloseView)) {
                AnimatorSet animatorSet = new AnimatorSet();
                Animator animatorCreateAnimator = super.createAnimator(viewGroup, transitionValues, transitionValues2);
                if (animatorCreateAnimator != null) {
                    animatorSet.playTogether(animatorCreateAnimator);
                }
                Integer num = (Integer) transitionValues.values.get("back_color_end_close");
                Integer num2 = (Integer) transitionValues2.values.get("back_color_end_close");
                Integer num3 = (Integer) transitionValues.values.get("round_end_close");
                Integer num4 = (Integer) transitionValues2.values.get("round_end_close");
                Integer num5 = (Integer) transitionValues.values.get("decline_call_alpha_end_close");
                Integer num6 = (Integer) transitionValues2.values.get("decline_call_alpha_end_close");
                Integer num7 = (Integer) transitionValues.values.get("close_text_alpha_end_close");
                Integer num8 = (Integer) transitionValues2.values.get("close_text_alpha_end_close");
                ValueAnimator valueAnimator = new ValueAnimator();
                valueAnimator.setIntValues(num.intValue(), num2.intValue());
                valueAnimator.setEvaluator(new ArgbEvaluator());
                valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$1$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ((EndCloseLayout.EndCloseView) transitionValues.view).backColor = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    }
                });
                animatorSet.playTogether(valueAnimator);
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(num3.intValue(), num4.intValue());
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$1$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ((EndCloseLayout.EndCloseView) transitionValues.view).round = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    }
                });
                animatorSet.playTogether(valueAnimatorOfInt);
                ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(num5.intValue(), num6.intValue(), num6.intValue(), num6.intValue(), num6.intValue(), num6.intValue(), num6.intValue());
                valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$1$$ExternalSyntheticLambda2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ((EndCloseLayout.EndCloseView) transitionValues.view).callDeclineAlpha = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    }
                });
                animatorSet.playTogether(valueAnimatorOfInt2);
                ValueAnimator valueAnimatorOfInt3 = ValueAnimator.ofInt(num7.intValue(), num7.intValue(), (int) (num8.intValue() * 0.25f), (int) (num8.intValue() * 0.5f), (int) (num8.intValue() * 0.75f), num8.intValue());
                valueAnimatorOfInt3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$1$$ExternalSyntheticLambda3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ((EndCloseLayout.EndCloseView) transitionValues.view).closeTextAlpha = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    }
                });
                animatorSet.playTogether(valueAnimatorOfInt3);
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.EndCloseLayout.1.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        transitionValues.view.setEnabled(false);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        transitionValues.view.setEnabled(true);
                    }
                });
                return animatorSet;
            }
            return super.createAnimator(viewGroup, transitionValues, transitionValues2);
        }
    }

    public EndCloseView getEndCloseView() {
        return this.endCloseView;
    }

    public void switchToClose(final View.OnClickListener onClickListener, boolean z) {
        if (this.isClosedState) {
            return;
        }
        this.isClosedState = true;
        if (z) {
            TransitionManager.beginDelayedTransition(this, this.transitionSet);
        }
        EndCloseView endCloseView = this.endCloseView;
        endCloseView.closeTextAlpha = 255;
        endCloseView.backColor = -1;
        endCloseView.callDeclineAlpha = 0;
        endCloseView.round = AndroidUtilities.m1124dp(8.0f);
        ViewGroup.LayoutParams layoutParams = this.endCloseView.getLayoutParams();
        layoutParams.width = -1;
        this.endCloseView.setLayoutParams(layoutParams);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.EndCloseLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$switchToClose$0(onClickListener);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToClose$0(View.OnClickListener onClickListener) {
        this.endCloseView.setOnClickListener(onClickListener);
    }

    static class EndCloseView extends View {
        public int backColor;
        private final Paint backgroundPaint;
        private final RectF backgroundRect;
        public int callDeclineAlpha;
        private final Drawable callDeclineDrawable;
        private final String closeText;
        public int closeTextAlpha;
        private Drawable rippleDrawable;
        public int round;
        private final Paint textPaint;
        private final Paint textPaintMask;

        public EndCloseView(Context context) {
            super(context);
            this.backgroundPaint = new Paint(1);
            Paint paint = new Paint(1);
            this.textPaintMask = paint;
            Paint paint2 = new Paint(1);
            this.textPaint = paint2;
            this.backgroundRect = new RectF();
            this.backColor = -761748;
            this.round = AndroidUtilities.m1124dp(26.0f);
            this.callDeclineAlpha = 255;
            this.closeTextAlpha = 0;
            Drawable drawableMutate = ContextCompat.getDrawable(getContext(), C2888R.drawable.calls_decline).mutate();
            this.callDeclineDrawable = drawableMutate;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            paint.setTextSize(AndroidUtilities.m1124dp(18.0f));
            paint.setTypeface(AndroidUtilities.bold());
            Paint.Align align = Paint.Align.CENTER;
            paint.setTextAlign(align);
            paint.setColor(-16777216);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            paint2.setTextSize(AndroidUtilities.m1124dp(18.0f));
            paint2.setTypeface(AndroidUtilities.bold());
            paint2.setTextAlign(align);
            paint2.setColor(-16777216);
            setLayerType(2, null);
            setClickable(true);
            this.closeText = LocaleController.getString(C2888R.string.Close);
        }

        @Override // android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            Drawable drawable = this.rippleDrawable;
            if (drawable != null) {
                drawable.setState(getDrawableState());
            }
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return this.rippleDrawable == drawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        public void jumpDrawablesToCurrentState() {
            super.jumpDrawablesToCurrentState();
            Drawable drawable = this.rippleDrawable;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
        }

        @Override // android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (isEnabled()) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return false;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            this.backgroundPaint.setColor(this.backColor);
            this.backgroundRect.set(0.0f, 0.0f, getWidth(), getHeight());
            RectF rectF = this.backgroundRect;
            int i = this.round;
            canvas.drawRoundRect(rectF, i, i, this.backgroundPaint);
            this.callDeclineDrawable.setBounds((int) (width - (r3.getIntrinsicWidth() / 2.0f)), (int) (height - (this.callDeclineDrawable.getIntrinsicHeight() / 2)), (int) ((this.callDeclineDrawable.getIntrinsicWidth() / 2) + width), (int) ((this.callDeclineDrawable.getIntrinsicHeight() / 2) + height));
            this.callDeclineDrawable.setAlpha(this.callDeclineAlpha);
            this.callDeclineDrawable.draw(canvas);
            this.textPaintMask.setAlpha(this.closeTextAlpha);
            this.textPaint.setAlpha((this.closeTextAlpha / 255) * 38);
            canvas.drawText(this.closeText, width, AndroidUtilities.m1124dp(6.0f) + height, this.textPaintMask);
            canvas.drawText(this.closeText, width, height + AndroidUtilities.m1124dp(6.0f), this.textPaint);
            if (this.rippleDrawable == null) {
                Drawable drawableCreateRadSelectorDrawable = Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector), 8, 8);
                this.rippleDrawable = drawableCreateRadSelectorDrawable;
                drawableCreateRadSelectorDrawable.setCallback(this);
            }
            this.rippleDrawable.setBounds(0, 0, getWidth(), getHeight());
            this.rippleDrawable.draw(canvas);
        }
    }
}
