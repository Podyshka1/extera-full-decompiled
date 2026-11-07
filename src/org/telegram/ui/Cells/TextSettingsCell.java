package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RLottieImageView;

/* JADX INFO: loaded from: classes6.dex */
public class TextSettingsCell extends FrameLayout {
    private boolean betterLayout;
    private boolean canDisable;
    private int changeProgressStartDelay;
    private boolean drawLoading;
    private float drawLoadingProgress;
    private ImageView imageView;
    private boolean imageViewIsColorful;
    private boolean incrementLoadingProgress;
    private float loadingProgress;
    private int loadingSize;
    private boolean measureDelay;
    public boolean needDivider;
    private int padding;
    Paint paint;
    private Theme.ResourcesProvider resourcesProvider;
    private TextView textView;
    private BackupImageView valueBackupImageView;
    private ImageView valueImageView;
    private AnimatedTextView valueTextView;

    public TextSettingsCell(Context context) {
        this(context, 21);
    }

    public TextSettingsCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, 21, resourcesProvider);
    }

    public TextSettingsCell(Context context, int i) {
        this(context, i, null);
    }

    public TextSettingsCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.betterLayout = BuildVars.DEBUG_PRIVATE_VERSION;
        this.resourcesProvider = resourcesProvider;
        this.padding = i;
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextSize(1, 16.0f);
        this.textView.setTypeface(AndroidUtilities.regular());
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        float f = i;
        addView(this.textView, LayoutHelper.createFrame(-1, -1.0f, (LocaleController.isRTL ? 5 : 3) | 48, f, 0.0f, f, 0.0f));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, !LocaleController.isRTL);
        this.valueTextView = animatedTextView;
        animatedTextView.setAnimationProperties(0.55f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.valueTextView.setTextSize(AndroidUtilities.dp(16.0f));
        this.valueTextView.setGravity((LocaleController.isRTL ? 3 : 5) | 16);
        this.valueTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText, resourcesProvider));
        float f2 = i - 4;
        addView(this.valueTextView, LayoutHelper.createFrame(-2, -1.0f, (LocaleController.isRTL ? 3 : 5) | 48, f2, 0.0f, f2, 0.0f));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        rLottieImageView.setScaleType(scaleType);
        ImageView imageView = this.imageView;
        int i2 = Theme.key_windowBackgroundWhiteGrayIcon;
        int color = Theme.getColor(i2, resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
        this.imageView.setVisibility(8);
        addView(this.imageView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 16, 16.0f, 0.0f, 16.0f, 0.0f));
        ImageView imageView2 = new ImageView(context);
        this.valueImageView = imageView2;
        imageView2.setScaleType(scaleType);
        this.valueImageView.setVisibility(4);
        this.valueImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), mode));
        addView(this.valueImageView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 3 : 5) | 16, f, 0.0f, f, 0.0f));
    }

    public ImageView getValueImageView() {
        return this.valueImageView;
    }

    public void setBetterLayout(boolean z) {
        this.betterLayout = z;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(50.0f) + (this.needDivider ? 1 : 0));
        int measuredWidth = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - AndroidUtilities.dp(34.0f);
        int measuredWidth2 = this.betterLayout ? measuredWidth : measuredWidth / 2;
        if (this.valueImageView.getVisibility() == 0) {
            this.valueImageView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
        }
        if (this.imageView.getVisibility() == 0) {
            boolean z = this.imageViewIsColorful;
            ImageView imageView = this.imageView;
            if (z) {
                imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(28.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(28.0f), TLObject.FLAG_30));
            } else {
                imageView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
            }
            if (this.betterLayout) {
                measuredWidth2 -= this.imageView.getMeasuredWidth() + AndroidUtilities.dp(8.0f);
            }
        }
        BackupImageView backupImageView = this.valueBackupImageView;
        if (backupImageView != null) {
            backupImageView.measure(View.MeasureSpec.makeMeasureSpec(backupImageView.getLayoutParams().height, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(this.valueBackupImageView.getLayoutParams().width, TLObject.FLAG_30));
            if (this.betterLayout) {
                measuredWidth2 -= this.valueBackupImageView.getMeasuredWidth() + AndroidUtilities.dp(8.0f);
            }
        }
        if (this.valueTextView.getVisibility() == 0) {
            this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
            boolean z2 = this.betterLayout;
            AnimatedTextView animatedTextView = this.valueTextView;
            if (z2) {
                measuredWidth = measuredWidth2 - (animatedTextView.getMeasuredWidth() + AndroidUtilities.dp(8.0f));
            } else {
                measuredWidth = (measuredWidth - animatedTextView.getMeasuredWidth()) - AndroidUtilities.dp(8.0f);
            }
            if (this.valueImageView.getVisibility() == 0) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.valueImageView.getLayoutParams();
                boolean z3 = LocaleController.isRTL;
                int i3 = this.padding;
                if (z3) {
                    marginLayoutParams.leftMargin = AndroidUtilities.dp(i3 + 4) + this.valueTextView.getMeasuredWidth();
                } else {
                    marginLayoutParams.rightMargin = AndroidUtilities.dp(i3 + 4) + this.valueTextView.getMeasuredWidth();
                }
            }
        }
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.measureDelay || getParent() == null) {
            return;
        }
        this.changeProgressStartDelay = (int) ((getTop() / ((View) getParent()).getMeasuredHeight()) * 150.0f);
    }

    public TextView getTextView() {
        return this.textView;
    }

    public void setCanDisable(boolean z) {
        this.canDisable = z;
    }

    public AnimatedTextView getValueTextView() {
        return this.valueTextView;
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setTextValueColor(int i) {
        this.valueTextView.setTextColor(i);
    }

    public void setText(CharSequence charSequence, boolean z) {
        this.textView.setText(charSequence);
        this.valueTextView.setVisibility(4);
        this.valueImageView.setVisibility(4);
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setTextAndValue(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        setTextAndValue(charSequence, charSequence2, false, z);
    }

    public void setTextAndValue(CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        this.textView.setText(charSequence);
        this.valueImageView.setVisibility(4);
        AnimatedTextView animatedTextView = this.valueTextView;
        if (charSequence2 != null) {
            animatedTextView.setText(charSequence2, z);
            this.valueTextView.setVisibility(0);
        } else {
            animatedTextView.setVisibility(4);
        }
        this.needDivider = z2;
        setWillNotDraw(!z2);
        requestLayout();
    }

    public void setValue(CharSequence charSequence, boolean z) {
        this.valueTextView.setText(charSequence, z);
    }

    public void setIcon(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.textView.getLayoutParams();
        this.imageViewIsColorful = false;
        ImageView imageView = this.imageView;
        if (i == 0) {
            imageView.setVisibility(8);
            boolean z = LocaleController.isRTL;
            int i2 = this.padding;
            if (z) {
                marginLayoutParams.rightMargin = AndroidUtilities.dp(i2);
                return;
            } else {
                marginLayoutParams.leftMargin = AndroidUtilities.dp(i2);
                return;
            }
        }
        imageView.setImageResource(i);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
        this.imageView.setBackground(null);
        this.imageView.setVisibility(0);
        if (LocaleController.isRTL) {
            marginLayoutParams.rightMargin = AndroidUtilities.dp(58.0f);
        } else {
            marginLayoutParams.leftMargin = AndroidUtilities.dp(58.0f);
        }
    }

    public void setEnabled(boolean z, ArrayList<Animator> arrayList) {
        setEnabled(z);
        TextView textView = this.textView;
        if (arrayList != null) {
            arrayList.add(ObjectAnimator.ofFloat(textView, "alpha", z ? 1.0f : 0.5f));
            if (this.valueTextView.getVisibility() == 0) {
                arrayList.add(ObjectAnimator.ofFloat(this.valueTextView, "alpha", z ? 1.0f : 0.5f));
            }
            if (this.valueImageView.getVisibility() == 0) {
                arrayList.add(ObjectAnimator.ofFloat(this.valueImageView, "alpha", z ? 1.0f : 0.5f));
                return;
            }
            return;
        }
        textView.setAlpha(z ? 1.0f : 0.5f);
        if (this.valueTextView.getVisibility() == 0) {
            this.valueTextView.setAlpha(z ? 1.0f : 0.5f);
        }
        if (this.valueImageView.getVisibility() == 0) {
            this.valueImageView.setAlpha(z ? 1.0f : 0.5f);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        float f = 1.0f;
        this.textView.setAlpha((z || !this.canDisable) ? 1.0f : 0.5f);
        if (this.valueTextView.getVisibility() == 0) {
            this.valueTextView.setAlpha((z || !this.canDisable) ? 1.0f : 0.5f);
        }
        if (this.valueImageView.getVisibility() == 0) {
            ImageView imageView = this.valueImageView;
            if (!z && this.canDisable) {
                f = 0.5f;
            }
            imageView.setAlpha(f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dispatchDraw(Canvas canvas) {
        float f = 1.0f;
        if (this.drawLoading || this.drawLoadingProgress != 0.0f) {
            if (this.paint == null) {
                Paint paint = new Paint(1);
                this.paint = paint;
                paint.setColor(Theme.getColor(Theme.key_dialogSearchBackground, this.resourcesProvider));
            }
            boolean z = this.incrementLoadingProgress;
            float f2 = this.loadingProgress;
            if (z) {
                float f3 = f2 + 0.016f;
                this.loadingProgress = f3;
                if (f3 > 1.0f) {
                    this.loadingProgress = 1.0f;
                    this.incrementLoadingProgress = false;
                }
            } else {
                float f4 = f2 - 0.016f;
                this.loadingProgress = f4;
                if (f4 < 0.0f) {
                    this.loadingProgress = 0.0f;
                    this.incrementLoadingProgress = true;
                }
            }
            int i = this.changeProgressStartDelay;
            if (i > 0) {
                this.changeProgressStartDelay = i - 15;
            } else {
                boolean z2 = this.drawLoading;
                if (z2) {
                    float f5 = this.drawLoadingProgress;
                    if (f5 != 1.0f) {
                        float f6 = f5 + 0.10666667f;
                        this.drawLoadingProgress = f6;
                        if (f6 > 1.0f) {
                            this.drawLoadingProgress = 1.0f;
                        }
                    } else if (!z2) {
                        float f7 = this.drawLoadingProgress;
                        if (f7 != 0.0f) {
                            float f8 = f7 - 0.10666667f;
                            this.drawLoadingProgress = f8;
                            if (f8 < 0.0f) {
                                this.drawLoadingProgress = 0.0f;
                            }
                        }
                    }
                }
            }
            this.paint.setAlpha((int) (((this.loadingProgress * 0.4f) + 0.6f) * this.drawLoadingProgress * 255.0f));
            int measuredHeight = getMeasuredHeight() >> 1;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set((getMeasuredWidth() - AndroidUtilities.dp(this.padding)) - AndroidUtilities.dp(this.loadingSize), measuredHeight - AndroidUtilities.dp(3.0f), getMeasuredWidth() - AndroidUtilities.dp(this.padding), measuredHeight + AndroidUtilities.dp(3.0f));
            if (LocaleController.isRTL) {
                rectF.left = getMeasuredWidth() - rectF.left;
                rectF.right = getMeasuredWidth() - rectF.right;
            }
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), this.paint);
            invalidate();
        }
        AnimatedTextView animatedTextView = this.valueTextView;
        float f9 = 1.0f - this.drawLoadingProgress;
        if (!isEnabled() && this.canDisable) {
            f = 0.5f;
        }
        animatedTextView.setAlpha(f9 * f);
        super.dispatchDraw(canvas);
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(this.imageView.getVisibility() == 0 ? 58.0f : 20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? r0 : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        String str;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        sb.append((Object) this.textView.getText());
        AnimatedTextView animatedTextView = this.valueTextView;
        if (animatedTextView == null || animatedTextView.getVisibility() != 0) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str = "\n" + ((Object) this.valueTextView.getText());
        }
        sb.append(str);
        accessibilityNodeInfo.setText(sb.toString());
        accessibilityNodeInfo.setEnabled(isEnabled());
    }

    public void setDrawLoading(boolean z, int i, boolean z2) {
        this.drawLoading = z;
        this.loadingSize = i;
        if (!z2) {
            this.drawLoadingProgress = z ? 1.0f : 0.0f;
        } else {
            this.measureDelay = true;
        }
        invalidate();
    }

    public BackupImageView getValueBackupImageView() {
        if (this.valueBackupImageView == null) {
            BackupImageView backupImageView = new BackupImageView(getContext());
            this.valueBackupImageView = backupImageView;
            int i = (LocaleController.isRTL ? 3 : 5) | 16;
            int i2 = this.padding;
            addView(backupImageView, LayoutHelper.createFrame(24, 24.0f, i, i2 - 4, 0.0f, i2 - 4, 0.0f));
        }
        return this.valueBackupImageView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        BackupImageView backupImageView = this.valueBackupImageView;
        if (backupImageView == null || backupImageView.getImageReceiver() == null || !(this.valueBackupImageView.getImageReceiver().getDrawable() instanceof AnimatedEmojiDrawable)) {
            return;
        }
        ((AnimatedEmojiDrawable) this.valueBackupImageView.getImageReceiver().getDrawable()).removeView(this);
    }

    public void updateRTL() {
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        removeView(this.textView);
        TextView textView = this.textView;
        int i = (LocaleController.isRTL ? 5 : 3) | 48;
        int i2 = this.padding;
        addView(textView, LayoutHelper.createFrame(-1, -1.0f, i, i2, 0.0f, i2, 0.0f));
        this.valueTextView.setGravity((LocaleController.isRTL ? 3 : 5) | 16);
        removeView(this.valueTextView);
        AnimatedTextView animatedTextView = this.valueTextView;
        int i3 = (LocaleController.isRTL ? 3 : 5) | 48;
        int i4 = this.padding;
        addView(animatedTextView, LayoutHelper.createFrame(-2, -1.0f, i3, i4, 0.0f, i4, 0.0f));
        removeView(this.imageView);
        addView(this.imageView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 16, 21.0f, 0.0f, 21.0f, 0.0f));
        removeView(this.valueImageView);
        ImageView imageView = this.valueImageView;
        int i5 = LocaleController.isRTL ? 3 : 5;
        int i6 = this.padding;
        addView(imageView, LayoutHelper.createFrame(-2, -2.0f, i5 | 16, i6, 0.0f, i6, 0.0f));
    }
}
