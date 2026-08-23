package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Switch;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class NotificationsCheckCell extends FrameLayout {
    private boolean animationsEnabled;
    private Switch checkBox;
    private int currentHeight;
    private boolean drawLine;
    private ImageView imageView;
    private boolean isMultiline;
    private TextView multilineValueTextView;
    private boolean needDivider;
    private Theme.ResourcesProvider resourcesProvider;
    private final int textOffset;
    private TextView textView;
    private AnimatedTextView valueTextView;

    protected int processColor(int i) {
        return i;
    }

    public NotificationsCheckCell(Context context) {
        this(context, 21, 70, false, null);
    }

    public NotificationsCheckCell(Context context, int i, int i2, boolean z) {
        this(context, i, i2, z, null);
    }

    public NotificationsCheckCell(Context context, int i, int i2, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, 64, z, resourcesProvider);
    }

    public NotificationsCheckCell(Context context, int i, int i2, int i3, boolean z, Theme.ResourcesProvider resourcesProvider) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        super(context);
        this.drawLine = true;
        this.resourcesProvider = resourcesProvider;
        int i4 = i3;
        this.textOffset = i4;
        setWillNotDraw(false);
        this.currentHeight = i2;
        if (z) {
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setFocusable(false);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView, LayoutHelper.createFrame(48, 48.0f, (LocaleController.isRTL ? 5 : 3) | 16, 9.0f, 0.0f, 7.0f, 0.0f));
        }
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.textView;
        boolean z2 = LocaleController.isRTL;
        int i5 = (z2 ? 5 : 3) | 48;
        float f6 = 88.0f;
        if (z2) {
            f = 88.0f;
        } else {
            f = z ? i4 : i;
        }
        float f7 = ((this.currentHeight - 70) / 2) + 13;
        if (z2) {
            f2 = z ? i4 : i;
        } else {
            f2 = 88.0f;
        }
        addView(textView2, LayoutHelper.createFrame(-1, -2.0f, i5, f, f7, f2, 0.0f));
        AnimatedTextView animatedTextView = new AnimatedTextView(context);
        this.valueTextView = animatedTextView;
        animatedTextView.setAnimationProperties(0.55f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        AnimatedTextView animatedTextView2 = this.valueTextView;
        int i6 = Theme.key_windowBackgroundWhiteGrayText2;
        animatedTextView2.setTextColor(Theme.getColor(i6, resourcesProvider));
        this.valueTextView.setTextSize(AndroidUtilities.m1124dp(13.0f));
        this.valueTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.valueTextView.setPadding(0, 0, 0, 0);
        this.valueTextView.setEllipsizeByGradient(true);
        AnimatedTextView animatedTextView3 = this.valueTextView;
        boolean z3 = LocaleController.isRTL;
        int i7 = (z3 ? 5 : 3) | 48;
        if (z3) {
            f3 = 88.0f;
        } else {
            f3 = z ? i4 : i;
        }
        float f8 = (29 - (z ? 2 : 0)) + ((this.currentHeight - 70) / 2);
        if (z3) {
            f4 = z ? i4 : i;
        } else {
            f4 = 88.0f;
        }
        addView(animatedTextView3, LayoutHelper.createFrame(-1, -2.0f, i7, f3, f8, f4, 0.0f));
        TextView textView3 = new TextView(context);
        this.multilineValueTextView = textView3;
        textView3.setTextColor(Theme.getColor(i6, resourcesProvider));
        this.multilineValueTextView.setTextSize(1, 13.0f);
        this.multilineValueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.multilineValueTextView.setLines(0);
        this.multilineValueTextView.setMaxLines(0);
        this.multilineValueTextView.setSingleLine(false);
        this.multilineValueTextView.setEllipsize(null);
        this.multilineValueTextView.setPadding(0, 0, 0, 0);
        this.multilineValueTextView.setVisibility(8);
        TextView textView4 = this.multilineValueTextView;
        boolean z4 = LocaleController.isRTL;
        int i8 = (z4 ? 5 : 3) | 48;
        if (z4) {
            f5 = 88.0f;
        } else {
            f5 = z ? i4 : i;
        }
        float f9 = (38 - (z ? 2 : 0)) + ((this.currentHeight - 70) / 2);
        if (z4) {
            f6 = z ? i4 : i;
        }
        addView(textView4, LayoutHelper.createFrame(-2, -2.0f, i8, f5, f9, f6, 0.0f));
        Switch r3 = new Switch(context, resourcesProvider) { // from class: org.telegram.ui.Cells.NotificationsCheckCell.1
            @Override // org.telegram.p029ui.Components.Switch
            protected int processColor(int i9) {
                return NotificationsCheckCell.this.processColor(i9);
            }
        };
        this.checkBox = r3;
        int i9 = Theme.key_switchTrack;
        int i10 = Theme.key_switchTrackChecked;
        int i11 = Theme.key_windowBackgroundWhite;
        r3.setColors(i9, i10, i11, i11);
        addView(this.checkBox, LayoutHelper.createFrame(37, 40.0f, (LocaleController.isRTL ? 3 : 5) | 16, 22.0f, 0.0f, 22.0f, 0.0f));
        this.checkBox.setFocusable(false);
        setClipChildren(false);
    }

    public Switch getCheckBox() {
        return this.checkBox;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.isMultiline) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(this.currentHeight), TLObject.FLAG_30));
        }
    }

    public void setTextAndValueAndCheck(CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        setTextAndValueAndCheck(charSequence, charSequence2, z, 0, false, z2);
    }

    public void setTextAndValueAndCheck(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, boolean z2, boolean z3) {
        setTextAndValueAndIconAndCheck(charSequence, charSequence2, 0, z, i, z2, z3);
    }

    public void setTextAndValueAndIconAndCheck(CharSequence charSequence, CharSequence charSequence2, int i, boolean z, int i2, boolean z2, boolean z3) {
        setTextAndValueAndIconAndCheck(charSequence, charSequence2, i, z, i2, z2, z3, false);
    }

    public void setTextAndValueAndIconAndCheck(CharSequence charSequence, CharSequence charSequence2, int i, boolean z, int i2, boolean z2, boolean z3, boolean z4) {
        this.textView.setText(charSequence);
        ImageView imageView = this.imageView;
        if (imageView != null) {
            imageView.setImageResource(i);
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogIcon), PorterDuff.Mode.MULTIPLY));
        }
        this.checkBox.setChecked(z, i2, this.animationsEnabled);
        setMultiline(z2);
        if (this.isMultiline) {
            this.multilineValueTextView.setText(charSequence2);
        } else {
            this.valueTextView.setText(charSequence2, z4);
        }
        (this.isMultiline ? this.multilineValueTextView : this.valueTextView).setVisibility(0);
        this.checkBox.setContentDescription(charSequence);
        this.needDivider = z3;
    }

    public void setMultiline(boolean z) {
        this.isMultiline = z;
        if (z) {
            this.multilineValueTextView.setVisibility(0);
            this.valueTextView.setVisibility(8);
            this.multilineValueTextView.setPadding(0, 0, 0, AndroidUtilities.m1124dp(8.0f));
        } else {
            this.multilineValueTextView.setVisibility(8);
            this.valueTextView.setVisibility(0);
            this.valueTextView.setPadding(0, 0, 0, 0);
        }
    }

    public void setValue(CharSequence charSequence) {
        if (this.isMultiline) {
            this.multilineValueTextView.setText(charSequence);
        } else {
            this.valueTextView.setText(charSequence, true);
        }
    }

    public void setDrawLine(boolean z) {
        this.drawLine = z;
    }

    public void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public void setChecked(boolean z, int i) {
        this.checkBox.setChecked(z, i, true);
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fM1124dp;
        int iM1124dp;
        if (this.needDivider) {
            if (LocaleController.isRTL) {
                fM1124dp = 0.0f;
            } else {
                fM1124dp = AndroidUtilities.m1124dp(this.imageView != null ? this.textOffset - AndroidUtilities.m1124dp(2.0f) : 20.0f);
            }
            float f = fM1124dp;
            float measuredHeight = getMeasuredHeight() - 1;
            int measuredWidth = getMeasuredWidth();
            if (LocaleController.isRTL) {
                iM1124dp = AndroidUtilities.m1124dp(this.imageView != null ? this.textOffset - AndroidUtilities.m1124dp(2.0f) : 20.0f);
            } else {
                iM1124dp = 0;
            }
            canvas.drawLine(f, measuredHeight, measuredWidth - iM1124dp, getMeasuredHeight() - 1, Theme.dividerPaint);
        }
        if (this.drawLine) {
            int iM1124dp2 = LocaleController.isRTL ? AndroidUtilities.m1124dp(76.0f) : (getMeasuredWidth() - AndroidUtilities.m1124dp(76.0f)) - 1;
            canvas.drawRect(iM1124dp2, (getMeasuredHeight() - AndroidUtilities.m1124dp(22.0f)) / 2, iM1124dp2 + 2, r2 + AndroidUtilities.m1124dp(22.0f), Theme.dividerPaint);
        }
    }

    public void setAnimationsEnabled(boolean z) {
        this.animationsEnabled = z;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        StringBuilder sb = new StringBuilder();
        sb.append(this.textView.getText());
        if (this.isMultiline) {
            TextView textView = this.multilineValueTextView;
            if (textView != null && !TextUtils.isEmpty(textView.getText())) {
                sb.append("\n");
                sb.append(this.multilineValueTextView.getText());
            }
        } else {
            AnimatedTextView animatedTextView = this.valueTextView;
            if (animatedTextView != null && !TextUtils.isEmpty(animatedTextView.getText())) {
                sb.append("\n");
                sb.append(this.valueTextView.getText());
            }
        }
        accessibilityNodeInfo.setContentDescription(sb);
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
    }

    public TextView getMultilineValue() {
        return this.multilineValueTextView;
    }

    public ImageView getImageView() {
        return this.imageView;
    }
}
