package org.telegram.p029ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.blur3.StrokeDrawable;
import org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;

/* JADX INFO: loaded from: classes7.dex */
public class CommentButton extends FrameLayout {
    private final ImageView arrowImage;
    private final Paint backgroundPaint;
    private final Paint clearPaint;
    private boolean collapsed;
    private final ImageView commentImage;
    private ValueAnimator countAnimator;
    private float countScale;
    private final AnimatedTextView.AnimatedTextDrawable countText;
    private int lastCount;
    private final FrameLayout layout;

    public CommentButton(Context context, BlurredBackgroundColorProvider blurredBackgroundColorProvider) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        Paint paint2 = new Paint(1);
        this.clearPaint = paint2;
        this.countScale = 1.0f;
        ScaleStateListAnimator.apply(this);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.countText = animatedTextDrawable;
        animatedTextDrawable.setTextColor(-9866632);
        animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(9.0f));
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
        animatedTextDrawable.setAllowCancel(true);
        paint.setColor(-14670806);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        FrameLayout frameLayout = new FrameLayout(context);
        this.layout = frameLayout;
        StrokeDrawable strokeDrawable = new StrokeDrawable();
        strokeDrawable.setColorProvider(blurredBackgroundColorProvider);
        strokeDrawable.setBackgroundColor(-14670806);
        strokeDrawable.setPadding(AndroidUtilities.m1124dp(1.0f));
        frameLayout.setBackground(strokeDrawable);
        addView(frameLayout, LayoutHelper.createFrame(40, 40, 17));
        ImageView imageView = new ImageView(context);
        this.commentImage = imageView;
        imageView.setImageResource(C2888R.drawable.menu_comments);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(new PorterDuffColorFilter(-2960428, mode));
        frameLayout.addView(imageView, LayoutHelper.createFrame(20, 20, 17));
        ImageView imageView2 = new ImageView(context);
        this.arrowImage = imageView2;
        imageView2.setImageResource(C2888R.drawable.menu_comments_arrow);
        imageView2.setColorFilter(new PorterDuffColorFilter(-2960428, mode));
        frameLayout.addView(imageView2, LayoutHelper.createFrame(20, 20, 17));
        imageView2.setPivotX(AndroidUtilities.m1124dp(10.27f));
        imageView2.setPivotY(AndroidUtilities.m1124dp(9.58f));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
        super.dispatchDraw(canvas);
        float fIsNotEmpty = this.countScale * this.countText.isNotEmpty();
        float fMax = Math.max(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(6.0f) + this.countText.getCurrentWidth());
        canvas.save();
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(getWidth() - fMax, 0.0f, getWidth(), AndroidUtilities.m1124dp(13.0f));
        canvas.scale(fIsNotEmpty, fIsNotEmpty, rectF.centerX(), rectF.centerY());
        rectF.inset(-AndroidUtilities.m1124dp(2.0f), -AndroidUtilities.m1124dp(2.0f));
        canvas.drawRoundRect(rectF, rectF.height() / 2.0f, rectF.height() / 2.0f, this.clearPaint);
        rectF.set(getWidth() - fMax, 0.0f, getWidth(), AndroidUtilities.m1124dp(13.0f));
        canvas.drawRoundRect(rectF, rectF.height() / 2.0f, rectF.height() / 2.0f, this.backgroundPaint);
        canvas.translate(rectF.left + ((fMax - this.countText.getCurrentWidth()) / 2.0f), AndroidUtilities.m1124dp(7.0f));
        this.countText.draw(canvas);
        canvas.restore();
        canvas.restore();
    }

    public void setCollapsed(boolean z, boolean z2) {
        if (z2 && this.collapsed == z) {
            return;
        }
        this.collapsed = z;
        if (z2) {
            this.arrowImage.animate().rotation(z ? 0.0f : 180.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(420L).start();
        } else {
            this.arrowImage.setRotation(z ? 0.0f : 180.0f);
        }
    }

    public void setCount(int i) {
        this.countText.setText(i <= 0 ? _UrlKt.FRAGMENT_ENCODE_SET : LocaleController.formatNumber(i, ','));
        if (this.lastCount != i) {
            animateBounce();
            this.lastCount = i;
        }
        invalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.countText || super.verifyDrawable(drawable);
    }

    private void animateBounce() {
        ValueAnimator valueAnimator = this.countAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.countAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.countAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.CommentButton$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateBounce$0(valueAnimator2);
            }
        });
        this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.CommentButton.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CommentButton.this.countScale = 1.0f;
                CommentButton.this.invalidate();
            }
        });
        this.countAnimator.setInterpolator(new OvershootInterpolator(2.5f));
        this.countAnimator.setDuration(200L);
        this.countAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateBounce$0(ValueAnimator valueAnimator) {
        this.countScale = Math.max(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        invalidate();
    }
}
