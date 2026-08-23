package org.telegram.p029ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class PreviewButtons extends FrameLayout {
    private ValueAnimator appearAnimator;
    private float appearT;
    private boolean appearing;
    private ArrayList buttons;
    private boolean isShareEnabled;
    private Utilities.Callback onClickListener;
    private View shadowView;
    private boolean shareArrow;
    public ShareButtonView shareButton;
    private String shareText;

    public PreviewButtons(Context context) {
        super(context);
        this.buttons = new ArrayList();
        this.shareArrow = true;
        this.isShareEnabled = true;
        View view = new View(context);
        this.shadowView = view;
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{1711276032, 0}));
        addView(this.shadowView, LayoutHelper.createFrame(-1, -1, 119));
        addButton(0, C2888R.drawable.media_draw, LocaleController.getString(C2888R.string.AccDescrPaint));
        addButton(2, C2888R.drawable.msg_photo_sticker, LocaleController.getString(C2888R.string.AccDescrStickers));
        addButton(1, C2888R.drawable.msg_photo_text2, LocaleController.getString(C2888R.string.AccDescrPlaceText));
        addButton(3, C2888R.drawable.media_crop, LocaleController.getString(C2888R.string.Crop));
        addButton(4, C2888R.drawable.msg_photo_settings, LocaleController.getString(C2888R.string.AccDescrPhotoAdjust));
        String string = LocaleController.getString(C2888R.string.Send);
        this.shareText = string;
        this.shareArrow = true;
        ShareButtonView shareButtonView = new ShareButtonView(context, string, true);
        this.shareButton = shareButtonView;
        shareButtonView.setContentDescription(LocaleController.getString(C2888R.string.Send));
        addView(this.shareButton, LayoutHelper.createFrame(-2, -2.0f));
        updateAppearT();
    }

    public void setButtonVisible(int i, boolean z) {
        for (int i2 = 0; i2 < this.buttons.size(); i2++) {
            ButtonView buttonView = (ButtonView) this.buttons.get(i2);
            if (buttonView.f2208id == i) {
                buttonView.setVisibility(z ? 0 : 8);
            }
        }
    }

    private boolean isButtonVisible(int i) {
        for (int i2 = 0; i2 < this.buttons.size(); i2++) {
            ButtonView buttonView = (ButtonView) this.buttons.get(i2);
            if (buttonView.f2208id == i) {
                return buttonView.getVisibility() == 0;
            }
        }
        return false;
    }

    public void setShareText(String str, boolean z) {
        if (TextUtils.equals(str, this.shareText) && z == this.shareArrow) {
            return;
        }
        removeView(this.shareButton);
        Context context = getContext();
        this.shareText = str;
        this.shareArrow = z;
        ShareButtonView shareButtonView = new ShareButtonView(context, str, z);
        this.shareButton = shareButtonView;
        shareButtonView.setContentDescription(str);
        addView(this.shareButton, LayoutHelper.createFrame(-2, -2.0f));
        updateAppearT();
    }

    private void addButton(int i, int i2, CharSequence charSequence) {
        ButtonView buttonView = new ButtonView(getContext(), i, i2);
        buttonView.setContentDescription(charSequence);
        this.buttons.add(buttonView);
        addView(buttonView);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.shadowView.layout(0, 0, i5, i6);
        ShareButtonView shareButtonView = this.shareButton;
        shareButtonView.layout(i5 - shareButtonView.getMeasuredWidth(), (i6 - this.shareButton.getMeasuredHeight()) / 2, i5, (this.shareButton.getMeasuredHeight() + i6) / 2);
        int iM1124dp = (i5 - AndroidUtilities.m1124dp(32.33f)) - this.shareButton.getMeasuredWidth();
        int i7 = 0;
        for (int i8 = 0; i8 < this.buttons.size(); i8++) {
            if (((ButtonView) this.buttons.get(i8)).getVisibility() == 0) {
                i7++;
            }
        }
        int iMin = Math.min(AndroidUtilities.m1124dp(isButtonVisible(4) ? 20.0f : 30.0f), i7 < 2 ? 0 : (iM1124dp - (AndroidUtilities.m1124dp(40.0f) * i7)) / (i7 - 1));
        int iM1124dp2 = (i6 - AndroidUtilities.m1124dp(40.0f)) / 2;
        int iM1124dp3 = (i6 + AndroidUtilities.m1124dp(40.0f)) / 2;
        int iM1124dp4 = AndroidUtilities.m1124dp(12.33f) + (!isButtonVisible(4) ? ((iM1124dp - (AndroidUtilities.m1124dp(40.0f) * i7)) - ((i7 - 1) * iMin)) / 2 : 0);
        for (int i9 = 0; i9 < this.buttons.size(); i9++) {
            if (((ButtonView) this.buttons.get(i9)).getVisibility() == 0) {
                ((ButtonView) this.buttons.get(i9)).layout(iM1124dp4, iM1124dp2, AndroidUtilities.m1124dp(40.0f) + iM1124dp4, iM1124dp3);
                iM1124dp4 += AndroidUtilities.m1124dp(40.0f) + iMin;
            }
        }
    }

    public void setOnClickListener(Utilities.Callback<Integer> callback) {
        this.onClickListener = callback;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(52.0f), TLObject.FLAG_30));
    }

    public void setShareEnabled(boolean z) {
        if (this.isShareEnabled != z) {
            this.isShareEnabled = z;
            ShareButtonView shareButtonView = this.shareButton;
            shareButtonView.enabled = z;
            shareButtonView.invalidate();
        }
    }

    public boolean isShareEnabled() {
        return this.isShareEnabled;
    }

    public void appear(boolean z, boolean z2) {
        if (this.appearing == z) {
            return;
        }
        ValueAnimator valueAnimator = this.appearAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.appearing = z;
        if (z2) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.appearT, z ? 1.0f : 0.0f);
            this.appearAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$appear$0(valueAnimator2);
                }
            });
            if (this.appearing) {
                this.appearAnimator.setDuration(450L);
                this.appearAnimator.setInterpolator(new LinearInterpolator());
            } else {
                this.appearAnimator.setDuration(350L);
                this.appearAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            }
            this.appearAnimator.start();
            return;
        }
        this.appearT = z ? 1.0f : 0.0f;
        updateAppearT();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$appear$0(ValueAnimator valueAnimator) {
        this.appearT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateAppearT();
    }

    private void updateAppearT() {
        this.shadowView.setAlpha(this.appearT);
        this.shadowView.setTranslationY((1.0f - this.appearT) * AndroidUtilities.m1124dp(16.0f));
        for (int i = 1; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            float interpolation = this.appearT;
            if (this.appearing) {
                interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(AndroidUtilities.cascade(interpolation, i - 1, getChildCount() - 1, 3.0f));
            }
            childAt.setAlpha(interpolation);
            childAt.setTranslationY((1.0f - interpolation) * AndroidUtilities.m1124dp(24.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ShareButtonView extends View {
        private boolean arrow;
        ValueAnimator backAnimator;
        private final Paint buttonPaint;
        private final Paint darkenPaint;
        public boolean enabled;
        private AnimatedFloat enabledT;

        /* JADX INFO: renamed from: h */
        private int f2209h;
        private float left;
        float pressedProgress;
        private final StaticLayout staticLayout;
        private final TextPaint textPaint;

        /* JADX INFO: renamed from: w */
        private int f2210w;
        private float width;

        public ShareButtonView(Context context, String str, boolean z) {
            CharSequence upperCase;
            super(context);
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            Paint paint = new Paint(1);
            this.buttonPaint = paint;
            Paint paint2 = new Paint(1);
            this.darkenPaint = paint2;
            this.enabledT = new AnimatedFloat(this, 0L, 220L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.enabled = true;
            this.arrow = z;
            paint.setColor(-15098625);
            paint2.setColor(1610612736);
            textPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
            textPaint.setColor(-1);
            textPaint.setTypeface(AndroidUtilities.bold());
            if (z) {
                SpannableString spannableString = new SpannableString(">");
                Drawable drawableMutate = getResources().getDrawable(C2888R.drawable.attach_arrow_right).mutate();
                drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                drawableMutate.setBounds(0, 0, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f));
                spannableString.setSpan(new ImageSpan(drawableMutate, 2), 0, spannableString.length(), 33);
                if (LocaleController.isRTL) {
                    upperCase = new SpannableStringBuilder(spannableString).append((CharSequence) "\u2009").append((CharSequence) str.toUpperCase());
                } else {
                    upperCase = new SpannableStringBuilder(str.toUpperCase()).append((CharSequence) "\u2009").append((CharSequence) spannableString);
                }
            } else {
                upperCase = str.toUpperCase();
            }
            StaticLayout staticLayout = new StaticLayout(upperCase, textPaint, AndroidUtilities.m1124dp(180.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            this.staticLayout = staticLayout;
            this.left = staticLayout.getLineCount() > 0 ? staticLayout.getLineLeft(0) : 0.0f;
            float lineWidth = staticLayout.getLineCount() > 0 ? staticLayout.getLineWidth(0) : 0.0f;
            this.width = lineWidth;
            this.f2210w = ((int) lineWidth) + AndroidUtilities.m1124dp(48.0f);
            if (!z) {
                this.f2210w = Math.max(AndroidUtilities.m1124dp(80.0f), this.f2210w);
            }
            this.f2209h = AndroidUtilities.m1124dp(40.0f);
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons$ShareButtonView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (!PreviewButtons.this.appearing || PreviewButtons.this.onClickListener == null) {
                return;
            }
            PreviewButtons.this.onClickListener.run(5);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f2210w, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(this.f2209h, TLObject.FLAG_30));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (isPressed()) {
                float f = this.pressedProgress;
                if (f != 1.0f) {
                    float fMin = f + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / 80.0f);
                    this.pressedProgress = fMin;
                    this.pressedProgress = Utilities.clamp(fMin, 1.0f, 0.0f);
                    invalidate();
                }
            }
            float f2 = this.enabledT.set(this.enabled ? 1.0f : 0.5f);
            int saveCount = canvas.getSaveCount();
            if (f2 < 1.0f) {
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (f2 * 255.0f), 31);
            }
            float f3 = ((1.0f - this.pressedProgress) * 0.1f) + 0.9f;
            canvas.save();
            canvas.scale(f3, f3, getWidth() / 2.0f, getHeight() / 2.0f);
            canvas.drawRect(AndroidUtilities.m1124dp(25.0f), AndroidUtilities.m1124dp(4.0f), getWidth() - AndroidUtilities.m1124dp(25.0f), getHeight() - AndroidUtilities.m1124dp(4.0f), this.darkenPaint);
            canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(4.0f), getWidth() - AndroidUtilities.m1124dp(10.0f), getHeight() - AndroidUtilities.m1124dp(4.0f));
            canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(20.0f), this.buttonPaint);
            canvas.save();
            canvas.translate((((this.f2210w - this.width) / 2.0f) + AndroidUtilities.m1124dp(this.arrow ? 3.0f : 0.0f)) - this.left, (getHeight() - this.staticLayout.getHeight()) / 2.0f);
            this.staticLayout.draw(canvas);
            canvas.restore();
            canvas.restoreToCount(saveCount);
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            ValueAnimator valueAnimator;
            if (isPressed() != z) {
                super.setPressed(z);
                invalidate();
                if (z && (valueAnimator = this.backAnimator) != null) {
                    valueAnimator.removeAllListeners();
                    this.backAnimator.cancel();
                }
                if (z) {
                    return;
                }
                float f = this.pressedProgress;
                if (f != 0.0f) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 0.0f);
                    this.backAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons$ShareButtonView$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$setPressed$1(valueAnimator2);
                        }
                    });
                    this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons.ShareButtonView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            ShareButtonView.this.backAnimator = null;
                        }
                    });
                    this.backAnimator.setInterpolator(new OvershootInterpolator(1.5f));
                    this.backAnimator.setDuration(350L);
                    this.backAnimator.start();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPressed$1(ValueAnimator valueAnimator) {
            this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Button");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ButtonView extends ImageView {

        /* JADX INFO: renamed from: id */
        public final int f2208id;

        public ButtonView(Context context, final int i, int i2) {
            super(context);
            this.f2208id = i;
            setBackground(Theme.createSelectorDrawable(1090519039));
            setScaleType(ImageView.ScaleType.CENTER);
            setImageResource(i2);
            setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.PreviewButtons$ButtonView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(i, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i, View view) {
            if (!PreviewButtons.this.appearing || PreviewButtons.this.onClickListener == null) {
                return;
            }
            PreviewButtons.this.onClickListener.run(Integer.valueOf(i));
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(AndroidUtilities.m1124dp(40.0f), AndroidUtilities.m1124dp(40.0f));
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Button");
        }
    }
}
