package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.ExteraConfig;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.SimpleFloatPropertyCompat;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class SenderSelectView extends View {
    private static final FloatPropertyCompat MENU_PROGRESS = new SimpleFloatPropertyCompat("menuProgress", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.Components.SenderSelectView$$ExternalSyntheticLambda0
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            return ((SenderSelectView) obj).menuProgress;
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.Components.SenderSelectView$$ExternalSyntheticLambda1
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            SenderSelectView.m12223$r8$lambda$K0kIe8gi8ce3Pl7QoAyAgwuavA((SenderSelectView) obj, f);
        }
    }).setMultiplier(100.0f);
    private AvatarDrawable avatarDrawable;
    private ImageReceiver avatarImage;
    private Paint backgroundPaint;
    private ValueAnimator menuAnimator;
    private Paint menuPaint;
    private float menuProgress;
    private SpringAnimation menuSpring;
    private boolean scaleIn;
    private boolean scaleOut;
    private Drawable selectorDrawable;

    /* JADX INFO: renamed from: $r8$lambda$K-0kIe8gi8ce3Pl7QoAyAgwuavA, reason: not valid java name */
    public static /* synthetic */ void m12223$r8$lambda$K0kIe8gi8ce3Pl7QoAyAgwuavA(SenderSelectView senderSelectView, float f) {
        senderSelectView.menuProgress = f;
        senderSelectView.invalidate();
    }

    public SenderSelectView(Context context) {
        super(context);
        this.avatarImage = new ImageReceiver(this);
        this.avatarDrawable = new AvatarDrawable();
        this.backgroundPaint = new Paint(1);
        this.menuPaint = new Paint(1);
        this.avatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(32.0f));
        this.menuPaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        this.menuPaint.setStrokeCap(Paint.Cap.ROUND);
        this.menuPaint.setStyle(Paint.Style.STROKE);
        updateColors();
        setContentDescription(LocaleController.formatString("AccDescrSendAsPeer", C2888R.string.AccDescrSendAsPeer, _UrlKt.FRAGMENT_ENCODE_SET));
    }

    private void updateColors() {
        this.backgroundPaint.setColor(Theme.getColor(Theme.key_chat_messagePanelVoiceBackground));
        this.menuPaint.setColor(Theme.getColor(Theme.key_chat_messagePanelVoicePressed));
        Drawable drawableCreateSimpleSelectorRoundRectDrawable = Theme.createSimpleSelectorRoundRectDrawable(ExteraConfig.getAvatarCorners(32.0f), 0, Theme.getColor(Theme.key_windowBackgroundWhite));
        this.selectorDrawable = drawableCreateSimpleSelectorRoundRectDrawable;
        drawableCreateSimpleSelectorRoundRectDrawable.setCallback(this);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.avatarImage.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(getLayoutParams().width, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getLayoutParams().height, TLObject.FLAG_30));
        this.avatarImage.setImageCoords(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        float f = 1.0f;
        if (this.scaleOut) {
            f = 1.0f - this.menuProgress;
        } else if (this.scaleIn) {
            f = this.menuProgress;
        }
        canvas.scale(f, f, getWidth() / 2.0f, getHeight() / 2.0f);
        super.onDraw(canvas);
        this.avatarImage.draw(canvas);
        int i = (int) (this.menuProgress * 255.0f);
        this.backgroundPaint.setAlpha(i);
        canvas.drawRoundRect(0.0f, 0.0f, getWidth(), getHeight(), ExteraConfig.getAvatarCorners(getWidth(), true), ExteraConfig.getAvatarCorners(getWidth(), true), this.backgroundPaint);
        canvas.save();
        this.menuPaint.setAlpha(i);
        float strokeWidth = this.menuPaint.getStrokeWidth() + AndroidUtilities.m1124dp(9.0f);
        canvas.drawLine(strokeWidth, strokeWidth, getWidth() - strokeWidth, getHeight() - strokeWidth, this.menuPaint);
        canvas.drawLine(strokeWidth, getHeight() - strokeWidth, getWidth() - strokeWidth, strokeWidth, this.menuPaint);
        canvas.restore();
        this.selectorDrawable.setBounds(0, 0, getWidth(), getHeight());
        this.selectorDrawable.draw(canvas);
        canvas.restore();
    }

    public void setAvatar(TLObject tLObject) {
        String firstName;
        if (tLObject instanceof TLRPC.User) {
            firstName = UserObject.getFirstName((TLRPC.User) tLObject);
        } else if (tLObject instanceof TLRPC.Chat) {
            firstName = ((TLRPC.Chat) tLObject).title;
        } else if (!(tLObject instanceof TLRPC.ChatInvite)) {
            firstName = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            firstName = ((TLRPC.ChatInvite) tLObject).title;
        }
        setContentDescription(LocaleController.formatString("AccDescrSendAsPeer", C2888R.string.AccDescrSendAsPeer, firstName));
        this.avatarDrawable.setInfo(tLObject);
        this.avatarImage.setForUserOrChat(tLObject, this.avatarDrawable);
    }

    public void setProgress(float f) {
        setProgress(f, true);
    }

    public void setProgress(float f, boolean z) {
        setProgress(f, z, f != 0.0f);
    }

    public void setProgress(float f, boolean z, boolean z2) {
        if (z) {
            SpringAnimation springAnimation = this.menuSpring;
            if (springAnimation != null) {
                springAnimation.cancel();
            }
            ValueAnimator valueAnimator = this.menuAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.scaleIn = false;
            this.scaleOut = false;
            if (z2) {
                final float f2 = this.menuProgress * 100.0f;
                SpringAnimation springAnimation2 = (SpringAnimation) new SpringAnimation(this, MENU_PROGRESS).setStartValue(f2);
                this.menuSpring = springAnimation2;
                final boolean z3 = f < this.menuProgress;
                final float f3 = f * 100.0f;
                this.scaleIn = z3;
                this.scaleOut = !z3;
                springAnimation2.setSpring(new SpringForce(f3).setFinalPosition(f3).setStiffness(450.0f).setDampingRatio(1.0f));
                this.menuSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.SenderSelectView$$ExternalSyntheticLambda2
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                    public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f4, float f5) {
                        this.f$0.lambda$setProgress$2(z3, f2, f3, dynamicAnimation, f4, f5);
                    }
                });
                this.menuSpring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.SenderSelectView$$ExternalSyntheticLambda3
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                    public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z4, float f4, float f5) {
                        this.f$0.lambda$setProgress$3(dynamicAnimation, z4, f4, f5);
                    }
                });
                this.menuSpring.start();
                return;
            }
            ValueAnimator duration = ValueAnimator.ofFloat(this.menuProgress, f).setDuration(200L);
            this.menuAnimator = duration;
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.menuAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SenderSelectView$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setProgress$4(valueAnimator2);
                }
            });
            this.menuAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SenderSelectView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator == SenderSelectView.this.menuAnimator) {
                        SenderSelectView.this.menuAnimator = null;
                    }
                }
            });
            this.menuAnimator.start();
            return;
        }
        this.menuProgress = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgress$2(boolean z, float f, float f2, DynamicAnimation dynamicAnimation, float f3, float f4) {
        if (z) {
            if (f3 > f / 2.0f || !this.scaleIn) {
                return;
            }
        } else if (f3 < f2 / 2.0f || !this.scaleOut) {
            return;
        }
        this.scaleIn = !z;
        this.scaleOut = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgress$3(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.scaleIn = false;
        this.scaleOut = false;
        if (!z) {
            dynamicAnimation.cancel();
        }
        if (dynamicAnimation == this.menuSpring) {
            this.menuSpring = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgress$4(ValueAnimator valueAnimator) {
        this.menuProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public float getProgress() {
        return this.menuProgress;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || this.selectorDrawable == drawable;
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.selectorDrawable.setState(getDrawableState());
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.selectorDrawable.jumpToCurrentState();
    }
}
