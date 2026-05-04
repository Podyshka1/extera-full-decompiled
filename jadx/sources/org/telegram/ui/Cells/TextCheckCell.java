package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.exteragram.messenger.components.VerticalImageSpan;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.AvatarSpan;
import org.telegram.ui.Components.AnimationProperties;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.Switch;

/* JADX INFO: loaded from: classes6.dex */
public class TextCheckCell extends FrameLayout {
    public static final Property ANIMATION_PROGRESS = new AnimationProperties.FloatProperty("animationProgress") { // from class: org.telegram.ui.Cells.TextCheckCell.1
        @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
        public void setValue(TextCheckCell textCheckCell, float f) {
            textCheckCell.setAnimationProgress(f);
            textCheckCell.invalidate();
        }

        @Override // android.util.Property
        public Float get(TextCheckCell textCheckCell) {
            return Float.valueOf(textCheckCell.animationProgress);
        }
    };
    private int animatedColorBackground;
    private Paint animationPaint;
    private float animationProgress;
    private ObjectAnimator animator;
    boolean attached;
    private Switch checkBox;
    public boolean drawCheckRipple;
    private int height;
    private RLottieImageView imageView;
    private boolean isAnimatingToThumbInsteadOfTouch;
    private boolean isMultiline;
    private boolean isRTL;
    public int itemId;
    private float lastTouchX;
    private boolean needDivider;
    private int padding;
    private Theme.ResourcesProvider resourcesProvider;
    private TextView textView;
    private TextView valueTextView;

    public TextCheckCell(Context context) {
        this(context, 21);
    }

    public TextCheckCell(Context context, int i) {
        this(context, i, false, null);
    }

    public TextCheckCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, 21, false, resourcesProvider);
    }

    public TextCheckCell(Context context, int i, boolean z) {
        this(context, i, z, null);
    }

    public TextCheckCell(Context context, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.height = 50;
        this.resourcesProvider = resourcesProvider;
        this.padding = i;
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(z ? Theme.key_dialogTextBlack : Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        TextView textView2 = this.textView;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView2.setEllipsize(truncateAt);
        TextView textView3 = this.textView;
        boolean z2 = LocaleController.isRTL;
        addView(textView3, LayoutHelper.createFrame(-1, -1.0f, (z2 ? 5 : 3) | 48, z2 ? 70.0f : i, 0.0f, z2 ? i : 70.0f, 0.0f));
        TextView textView4 = new TextView(context);
        this.valueTextView = textView4;
        textView4.setTextColor(Theme.getColor(z ? Theme.key_dialogIcon : Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        this.valueTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setPadding(0, 0, 0, 0);
        this.valueTextView.setEllipsize(truncateAt);
        TextView textView5 = this.valueTextView;
        boolean z3 = LocaleController.isRTL;
        addView(textView5, LayoutHelper.createFrame(-2, -2.0f, (z3 ? 5 : 3) | 48, z3 ? 70.0f : i, 35.0f, z3 ? i : 70.0f, 0.0f));
        Switch r2 = new Switch(context, resourcesProvider);
        this.checkBox = r2;
        int i2 = Theme.key_switchTrack;
        int i3 = Theme.key_switchTrackChecked;
        int i4 = Theme.key_windowBackgroundWhite;
        r2.setColors(i2, i3, i4, i4);
        addView(this.checkBox, LayoutHelper.createFrame(37, 20.0f, (LocaleController.isRTL ? 3 : 5) | 16, 22.0f, 0.0f, 22.0f, 0.0f));
        setClipChildren(false);
        this.isRTL = LocaleController.isRTL;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.checkBox.setEnabled(z);
        RLottieImageView rLottieImageView = this.imageView;
        if (rLottieImageView != null) {
            rLottieImageView.setAlpha(z ? 1.0f : 0.5f);
        }
    }

    public void setCheckBoxIcon(int i) {
        this.checkBox.setIcon(i);
    }

    public Switch getCheckBox() {
        return this.checkBox;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.isMultiline) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(this.valueTextView.getVisibility() == 0 ? 64.0f : this.height) + (this.needDivider ? 1 : 0), TLObject.FLAG_30));
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.lastTouchX = motionEvent.getX();
        return super.onTouchEvent(motionEvent);
    }

    public void setIcon(int i) {
        if (this.imageView == null) {
            RLottieImageView rLottieImageView = new RLottieImageView(getContext());
            this.imageView = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            float f = 21;
            addView(this.imageView, LayoutHelper.createFrame(24, 24, (LocaleController.isRTL ? 5 : 3) | 16, f, 0.0f, f, 0.0f));
        }
        int iDp = AndroidUtilities.dp(71.0f);
        this.padding = iDp;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.textView.getLayoutParams();
        boolean z = LocaleController.isRTL;
        marginLayoutParams.leftMargin = z ? marginLayoutParams.leftMargin : iDp;
        marginLayoutParams.rightMargin = z ? iDp : marginLayoutParams.rightMargin;
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.valueTextView.getLayoutParams();
        boolean z2 = LocaleController.isRTL;
        marginLayoutParams2.leftMargin = z2 ? marginLayoutParams2.leftMargin : iDp;
        if (!z2) {
            iDp = marginLayoutParams2.rightMargin;
        }
        marginLayoutParams2.rightMargin = iDp;
        this.imageView.setVisibility(0);
        this.imageView.setImageResource(i);
        this.imageView.setPadding(0, 0, 0, 0);
        this.imageView.setBackground(null);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
    }

    public void setDivider(boolean z) {
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setTextAndCheck(CharSequence charSequence, boolean z, boolean z2) {
        RLottieImageView rLottieImageView = this.imageView;
        if (rLottieImageView != null) {
            rLottieImageView.setVisibility(8);
        }
        AvatarSpan.checkSpansParent(charSequence, this);
        this.textView.setText(charSequence);
        this.isMultiline = false;
        this.checkBox.setVisibility(0);
        this.checkBox.setChecked(z, this.attached);
        this.needDivider = z2;
        this.valueTextView.setVisibility(8);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.topMargin = 0;
        this.textView.setLayoutParams(layoutParams);
        setWillNotDraw(!z2);
    }

    public void updateRTL() {
        boolean z = this.isRTL;
        boolean z2 = LocaleController.isRTL;
        if (z == z2) {
            return;
        }
        this.isRTL = z2;
        View view = this.imageView;
        if (view != null) {
            removeView(view);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.imageView.getLayoutParams();
            layoutParams.gravity = (this.isRTL ? 5 : 3) | 16;
            addView(this.imageView, layoutParams);
        }
        RLottieImageView rLottieImageView = this.imageView;
        int i = (rLottieImageView == null || rLottieImageView.getVisibility() != 0) ? this.padding : 68;
        removeView(this.textView);
        this.textView.setGravity((this.isRTL ? 5 : 3) | 16);
        View view2 = this.textView;
        boolean z3 = this.isRTL;
        addView(view2, LayoutHelper.createFrame(-1, -1.0f, (z3 ? 5 : 3) | 48, z3 ? 70.0f : i, 0.0f, z3 ? i : 70.0f, 0.0f));
        removeView(this.valueTextView);
        this.valueTextView.setGravity(this.isRTL ? 5 : 3);
        View view3 = this.valueTextView;
        boolean z4 = this.isRTL;
        addView(view3, LayoutHelper.createFrame(-2, -2.0f, (z4 ? 5 : 3) | 48, z4 ? 70.0f : i, 35.0f, z4 ? i : 70.0f, 0.0f));
        removeView(this.checkBox);
        addView(this.checkBox, LayoutHelper.createFrame(37, 20.0f, (this.isRTL ? 3 : 5) | 16, 22.0f, 0.0f, 22.0f, 0.0f));
    }

    public void setColors(int i, int i2, int i3, int i4, int i5) {
        this.textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.checkBox.setColors(i2, i3, i4, i5);
        this.textView.setTag(Integer.valueOf(i));
    }

    public void setTypeface(Typeface typeface) {
        this.textView.setTypeface(typeface);
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setDrawCheckRipple(boolean z) {
        this.drawCheckRipple = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.drawCheckRipple) {
            this.checkBox.setDrawRipple(z);
        }
        super.setPressed(z);
    }

    public void setTextAndValueAndCheck(CharSequence charSequence, String str, boolean z, boolean z2, boolean z3) {
        if (str != null && str.contains("->")) {
            this.valueTextView.setText(VerticalImageSpan.createSpan(getContext(), C2484R.drawable.search_arrow, str, "->", Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider));
        } else {
            this.valueTextView.setText(str);
        }
        AvatarSpan.checkSpansParent(charSequence, this);
        this.textView.setText(charSequence);
        this.checkBox.setVisibility(0);
        this.checkBox.setChecked(z, false);
        this.needDivider = z3;
        this.valueTextView.setVisibility(0);
        this.isMultiline = z2;
        if (z2) {
            this.valueTextView.setLines(0);
            this.valueTextView.setMaxLines(0);
            this.valueTextView.setSingleLine(false);
            this.valueTextView.setEllipsize(null);
            this.valueTextView.setPadding(0, 0, 0, AndroidUtilities.dp(11.0f));
        } else {
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
            this.valueTextView.setPadding(0, 0, 0, 0);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.height = -2;
        layoutParams.topMargin = AndroidUtilities.dp(10.0f);
        this.textView.setLayoutParams(layoutParams);
        setWillNotDraw(true ^ z3);
    }

    public void setEnabled(boolean z, ArrayList arrayList) {
        super.setEnabled(z);
        if (arrayList != null) {
            TextView textView = this.textView;
            float[] fArr = {z ? 1.0f : 0.5f};
            Property property = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property, fArr));
            arrayList.add(ObjectAnimator.ofFloat(this.checkBox, (Property<Switch, Float>) property, z ? 1.0f : 0.5f));
            if (this.valueTextView.getVisibility() == 0) {
                arrayList.add(ObjectAnimator.ofFloat(this.valueTextView, (Property<TextView, Float>) property, z ? 1.0f : 0.5f));
            }
            RLottieImageView rLottieImageView = this.imageView;
            if (rLottieImageView == null || rLottieImageView.getVisibility() != 0) {
                return;
            }
            arrayList.add(ObjectAnimator.ofFloat(this.imageView, (Property<RLottieImageView, Float>) property, z ? 1.0f : 0.5f));
            return;
        }
        this.textView.setAlpha(z ? 1.0f : 0.5f);
        this.checkBox.setAlpha(z ? 1.0f : 0.5f);
        if (this.valueTextView.getVisibility() == 0) {
            this.valueTextView.setAlpha(z ? 1.0f : 0.5f);
        }
        RLottieImageView rLottieImageView2 = this.imageView;
        if (rLottieImageView2 == null || rLottieImageView2.getVisibility() != 0) {
            return;
        }
        this.imageView.setAlpha(z ? 1.0f : 0.5f);
    }

    public void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (this.animatedColorBackground != i) {
            clearAnimation();
            this.animatedColorBackground = 0;
            super.setBackgroundColor(i);
        }
    }

    public void setBackgroundColorAnimated(boolean z, final int i) {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.animator = null;
        }
        int i2 = this.animatedColorBackground;
        if (i2 != 0) {
            setBackgroundColor(i2);
        }
        if (this.animationPaint == null) {
            this.animationPaint = new Paint(1);
        }
        this.checkBox.setOverrideColor(z ? 1 : 2);
        this.animatedColorBackground = i;
        this.animationPaint.setColor(i);
        this.animationProgress = 0.0f;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<TextCheckCell, Float>) ANIMATION_PROGRESS, 0.0f, 1.0f);
        this.animator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.TextCheckCell.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TextCheckCell.this.animatedColorBackground = 0;
                TextCheckCell.this.setBackgroundColor(i);
                TextCheckCell.this.invalidate();
            }
        });
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.animator.setDuration(240L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnimationProgress(float f) {
        this.animationProgress = f;
        float lastTouchX = getLastTouchX();
        float fMax = Math.max(lastTouchX, getMeasuredWidth() - lastTouchX) + AndroidUtilities.dp(40.0f);
        this.checkBox.setOverrideColorProgress(lastTouchX, getMeasuredHeight() / 2, fMax * this.animationProgress);
    }

    public void setBackgroundColorAnimatedReverse(final int i) {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.animator = null;
        }
        int color = this.animatedColorBackground;
        if (color == 0) {
            color = getBackground() instanceof ColorDrawable ? ((ColorDrawable) getBackground()).getColor() : 0;
        }
        if (this.animationPaint == null) {
            this.animationPaint = new Paint(1);
        }
        this.animationPaint.setColor(color);
        setBackgroundColor(i);
        this.checkBox.setOverrideColor(1);
        this.animatedColorBackground = i;
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, (Property<TextCheckCell, Float>) ANIMATION_PROGRESS, 1.0f, 0.0f).setDuration(240L);
        this.animator = duration;
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.TextCheckCell.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TextCheckCell.this.setBackgroundColor(i);
                TextCheckCell.this.animatedColorBackground = 0;
                TextCheckCell.this.invalidate();
            }
        });
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.animator.start();
    }

    private float getLastTouchX() {
        if (this.isAnimatingToThumbInsteadOfTouch) {
            return LocaleController.isRTL ? AndroidUtilities.dp(22.0f) : getMeasuredWidth() - AndroidUtilities.dp(42.0f);
        }
        return this.lastTouchX;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        int iDp;
        if (this.animatedColorBackground != 0) {
            float lastTouchX = getLastTouchX();
            canvas.drawCircle(lastTouchX, getMeasuredHeight() / 2, (Math.max(lastTouchX, getMeasuredWidth() - lastTouchX) + AndroidUtilities.dp(40.0f)) * this.animationProgress, this.animationPaint);
        }
        if (this.needDivider) {
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            Paint paint = resourcesProvider != null ? resourcesProvider.getPaint("paintDivider") : Theme.dividerPaint;
            if (paint != null) {
                RLottieImageView rLottieImageView = this.imageView;
                if (rLottieImageView != null && rLottieImageView.getVisibility() == 0) {
                    if (!LocaleController.isRTL) {
                        iDp = this.padding - AndroidUtilities.dp(3.0f);
                    }
                } else {
                    iDp = LocaleController.isRTL ? 0 : AndroidUtilities.dp(20.0f);
                }
                canvas.drawLine(iDp, getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? iDp : 0), getMeasuredHeight() - 1, paint);
            }
        }
    }

    public void setAnimatingToThumbInsteadOfTouch(boolean z) {
        this.isAnimatingToThumbInsteadOfTouch = z;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
        StringBuilder sb = new StringBuilder();
        sb.append(this.textView.getText());
        if (!TextUtils.isEmpty(this.valueTextView.getText())) {
            sb.append('\n');
            sb.append(this.valueTextView.getText());
        }
        accessibilityNodeInfo.setContentDescription(sb);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
    }

    public void setColorfullIcon(int i, int i2) {
        if (this.imageView == null) {
            RLottieImageView rLottieImageView = new RLottieImageView(getContext());
            this.imageView = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView, LayoutHelper.createFrame(29, 29.0f, (LocaleController.isRTL ? 5 : 3) | 16, 19.0f, 0.0f, 19.0f, 0.0f));
            this.padding = AndroidUtilities.dp(65.0f);
            ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).leftMargin = LocaleController.isRTL ? 70 : this.padding;
            ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).rightMargin = LocaleController.isRTL ? this.padding : 70;
        }
        this.imageView.setVisibility(0);
        this.imageView.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f));
        this.imageView.setImageResource(i2);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.isCurrentThemeMonet() ? Theme.getColor(Theme.key_chats_actionIcon) : -1, PorterDuff.Mode.SRC_IN));
        RLottieImageView rLottieImageView2 = this.imageView;
        int iDp = AndroidUtilities.dp(9.0f);
        if (Theme.isCurrentThemeMonet()) {
            i = Theme.getColor(Theme.key_chats_actionBackground);
        }
        rLottieImageView2.setBackground(Theme.createRoundRectDrawable(iDp, i));
    }

    public void reset() {
        this.textView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.valueTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.valueTextView.setVisibility(8);
        RLottieImageView rLottieImageView = this.imageView;
        if (rLottieImageView != null) {
            rLottieImageView.setVisibility(8);
        }
        RLottieImageView rLottieImageView2 = this.imageView;
        if (rLottieImageView2 != null) {
            rLottieImageView2.setImageDrawable(null);
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
            this.imageView.setBackground(null);
        }
        this.checkBox.setIcon(0);
        this.isMultiline = false;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.topMargin = 0;
        this.textView.setLayoutParams(layoutParams);
        int iDp = AndroidUtilities.dp(21.0f);
        this.padding = iDp;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.textView.getLayoutParams();
        boolean z = LocaleController.isRTL;
        marginLayoutParams.leftMargin = z ? marginLayoutParams.leftMargin : iDp;
        marginLayoutParams.rightMargin = z ? iDp : marginLayoutParams.rightMargin;
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.valueTextView.getLayoutParams();
        boolean z2 = LocaleController.isRTL;
        marginLayoutParams2.leftMargin = z2 ? marginLayoutParams2.leftMargin : iDp;
        if (!z2) {
            iDp = marginLayoutParams2.rightMargin;
        }
        marginLayoutParams2.rightMargin = iDp;
    }
}
