package org.telegram.p029ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.android.p003dx.p006io.Opcodes;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextSettingsCell;
import org.telegram.p029ui.Components.voip.CellFlickerDrawable;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class StorageUsageView extends FrameLayout {
    private Paint bgPaint;
    private boolean calculating;
    float calculatingProgress;
    boolean calculatingProgressIncrement;
    TextView calculatingTextView;
    CellFlickerDrawable cellFlickerDrawable;
    View divider;
    EllipsizeSpanAnimator ellipsizeSpanAnimator;
    TextView freeSizeTextView;
    int lastProgressColor;
    public ViewGroup legendLayout;
    private Paint paintCalculcating;
    private Paint paintFill;
    private Paint paintProgress;
    private Paint paintProgress2;
    float progress;
    float progress2;
    ProgressView progressView;
    TextView telegramCacheTextView;
    TextView telegramDatabaseTextView;
    TextSettingsCell textSettingsCell;
    private long totalDeviceFreeSize;
    private long totalDeviceSize;
    private long totalSize;
    TextView totlaSizeTextView;
    ValueAnimator valueAnimator;
    ValueAnimator valueAnimator2;

    public StorageUsageView(Context context) {
        super(context);
        this.paintFill = new Paint(1);
        this.paintCalculcating = new Paint(1);
        this.paintProgress = new Paint(1);
        this.paintProgress2 = new Paint(1);
        this.bgPaint = new Paint();
        this.cellFlickerDrawable = new CellFlickerDrawable(Opcodes.REM_INT_LIT8, 255);
        setWillNotDraw(false);
        this.cellFlickerDrawable.drawFrame = false;
        this.paintFill.setStrokeWidth(AndroidUtilities.m1124dp(6.0f));
        this.paintCalculcating.setStrokeWidth(AndroidUtilities.m1124dp(6.0f));
        this.paintProgress.setStrokeWidth(AndroidUtilities.m1124dp(6.0f));
        this.paintProgress2.setStrokeWidth(AndroidUtilities.m1124dp(6.0f));
        Paint paint = this.paintFill;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        this.paintCalculcating.setStrokeCap(cap);
        this.paintProgress.setStrokeCap(cap);
        this.paintProgress2.setStrokeCap(cap);
        ProgressView progressView = new ProgressView(context);
        this.progressView = progressView;
        addView(progressView, LayoutHelper.createFrame(-1, -2.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.StorageUsageView.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
                int childCount = getChildCount();
                int measuredHeight = 0;
                int measuredWidth = 0;
                int measuredHeight2 = 0;
                for (int i3 = 0; i3 < childCount; i3++) {
                    if (getChildAt(i3).getVisibility() != 8) {
                        if (getChildAt(i3).getMeasuredWidth() + measuredWidth > View.MeasureSpec.getSize(i)) {
                            measuredHeight2 += getChildAt(i3).getMeasuredHeight() + AndroidUtilities.m1124dp(8.0f);
                            measuredWidth = 0;
                        }
                        measuredWidth += getChildAt(i3).getMeasuredWidth() + AndroidUtilities.m1124dp(16.0f);
                        measuredHeight = getChildAt(i3).getMeasuredHeight() + measuredHeight2;
                    }
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int childCount = getChildCount();
                int measuredWidth = 0;
                int measuredHeight = 0;
                for (int i5 = 0; i5 < childCount; i5++) {
                    if (getChildAt(i5).getVisibility() != 8) {
                        if (getChildAt(i5).getMeasuredWidth() + measuredWidth > getMeasuredWidth()) {
                            measuredHeight += getChildAt(i5).getMeasuredHeight() + AndroidUtilities.m1124dp(8.0f);
                            measuredWidth = 0;
                        }
                        getChildAt(i5).layout(measuredWidth, measuredHeight, getChildAt(i5).getMeasuredWidth() + measuredWidth, getChildAt(i5).getMeasuredHeight() + measuredHeight);
                        measuredWidth += getChildAt(i5).getMeasuredWidth() + AndroidUtilities.m1124dp(16.0f);
                    }
                }
            }
        };
        this.legendLayout = frameLayout;
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 21.0f, 40.0f, 21.0f, 16.0f));
        TextView textView = new TextView(context);
        this.calculatingTextView = textView;
        int i = Theme.key_windowBackgroundWhiteGrayText;
        textView.setTextColor(Theme.getColor(i));
        String string = LocaleController.getString("CalculatingSize", C2888R.string.CalculatingSize);
        int iIndexOf = string.indexOf("...");
        if (iIndexOf >= 0) {
            SpannableString spannableString = new SpannableString(string);
            EllipsizeSpanAnimator ellipsizeSpanAnimator = new EllipsizeSpanAnimator(this.calculatingTextView);
            this.ellipsizeSpanAnimator = ellipsizeSpanAnimator;
            ellipsizeSpanAnimator.wrap(spannableString, iIndexOf);
            this.calculatingTextView.setText(spannableString);
        } else {
            this.calculatingTextView.setText(string);
        }
        TextView textView2 = new TextView(context);
        this.telegramCacheTextView = textView2;
        textView2.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        this.telegramCacheTextView.setTextColor(Theme.getColor(i));
        TextView textView3 = new TextView(context);
        this.telegramDatabaseTextView = textView3;
        textView3.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        this.telegramDatabaseTextView.setTextColor(Theme.getColor(i));
        TextView textView4 = new TextView(context);
        this.freeSizeTextView = textView4;
        textView4.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        this.freeSizeTextView.setTextColor(Theme.getColor(i));
        TextView textView5 = new TextView(context);
        this.totlaSizeTextView = textView5;
        textView5.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        this.totlaSizeTextView.setTextColor(Theme.getColor(i));
        this.lastProgressColor = Theme.getColor(Theme.key_player_progress);
        this.telegramCacheTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m1124dp(10.0f), this.lastProgressColor), (Drawable) null, (Drawable) null, (Drawable) null);
        this.telegramCacheTextView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        this.freeSizeTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m1124dp(10.0f), ColorUtils.setAlphaComponent(this.lastProgressColor, 64)), (Drawable) null, (Drawable) null, (Drawable) null);
        this.freeSizeTextView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        this.totlaSizeTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m1124dp(10.0f), ColorUtils.setAlphaComponent(this.lastProgressColor, 127)), (Drawable) null, (Drawable) null, (Drawable) null);
        this.totlaSizeTextView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        this.telegramDatabaseTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m1124dp(10.0f), this.lastProgressColor), (Drawable) null, (Drawable) null, (Drawable) null);
        this.telegramDatabaseTextView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        this.legendLayout.addView(this.calculatingTextView, LayoutHelper.createFrame(-2, -2.0f));
        this.legendLayout.addView(this.telegramDatabaseTextView, LayoutHelper.createFrame(-2, -2.0f));
        this.legendLayout.addView(this.telegramCacheTextView, LayoutHelper.createFrame(-2, -2.0f));
        this.legendLayout.addView(this.totlaSizeTextView, LayoutHelper.createFrame(-2, -2.0f));
        this.legendLayout.addView(this.freeSizeTextView, LayoutHelper.createFrame(-2, -2.0f));
        View view = new View(getContext());
        this.divider = view;
        linearLayout.addView(view, LayoutHelper.createLinear(-1, -2, 0, 21, 0, 0, 0));
        this.divider.getLayoutParams().height = 1;
        this.divider.setBackgroundColor(Theme.getColor(Theme.key_divider));
        TextSettingsCell textSettingsCell = new TextSettingsCell(getContext());
        this.textSettingsCell = textSettingsCell;
        linearLayout.addView(textSettingsCell, LayoutHelper.createLinear(-1, -2));
    }

    public void setStorageUsage(boolean z, long j, long j2, long j3, long j4) {
        this.calculating = z;
        this.totalSize = j2;
        this.totalDeviceFreeSize = j3;
        this.totalDeviceSize = j4;
        this.freeSizeTextView.setText(LocaleController.formatString("TotalDeviceFreeSize", C2888R.string.TotalDeviceFreeSize, AndroidUtilities.formatFileSize(j3)));
        long j5 = j4 - j3;
        this.totlaSizeTextView.setText(LocaleController.formatString("TotalDeviceSize", C2888R.string.TotalDeviceSize, AndroidUtilities.formatFileSize(j5)));
        if (z) {
            this.calculatingTextView.setVisibility(0);
            this.telegramCacheTextView.setVisibility(8);
            this.freeSizeTextView.setVisibility(8);
            this.totlaSizeTextView.setVisibility(8);
            this.telegramDatabaseTextView.setVisibility(8);
            this.divider.setVisibility(8);
            this.textSettingsCell.setVisibility(8);
            this.progress = 0.0f;
            this.progress2 = 0.0f;
            EllipsizeSpanAnimator ellipsizeSpanAnimator = this.ellipsizeSpanAnimator;
            if (ellipsizeSpanAnimator != null) {
                ellipsizeSpanAnimator.addView(this.calculatingTextView);
            }
        } else {
            EllipsizeSpanAnimator ellipsizeSpanAnimator2 = this.ellipsizeSpanAnimator;
            if (ellipsizeSpanAnimator2 != null) {
                ellipsizeSpanAnimator2.removeView(this.calculatingTextView);
            }
            this.calculatingTextView.setVisibility(8);
            if (j2 > 0) {
                this.divider.setVisibility(0);
                this.textSettingsCell.setVisibility(0);
                this.telegramCacheTextView.setVisibility(0);
                this.telegramDatabaseTextView.setVisibility(8);
                this.textSettingsCell.setTextAndValue(LocaleController.getString(C2888R.string.ClearTelegramCache), AndroidUtilities.formatFileSize(j2), true);
                this.telegramCacheTextView.setText(LocaleController.formatString("TelegramCacheSize", C2888R.string.TelegramCacheSize, AndroidUtilities.formatFileSize(j2 + j)));
            } else {
                this.telegramCacheTextView.setVisibility(8);
                this.telegramDatabaseTextView.setVisibility(0);
                this.telegramDatabaseTextView.setText(LocaleController.formatString("LocalDatabaseSize", C2888R.string.LocalDatabaseSize, AndroidUtilities.formatFileSize(j)));
                this.divider.setVisibility(8);
                this.textSettingsCell.setVisibility(8);
            }
            this.freeSizeTextView.setVisibility(0);
            this.totlaSizeTextView.setVisibility(0);
            float f = j2 + j;
            float f2 = j4;
            float f3 = f / f2;
            float f4 = j5 / f2;
            if (this.progress != f3) {
                ValueAnimator valueAnimator = this.valueAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progress, f3);
                this.valueAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StorageUsageView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setStorageUsage$0(valueAnimator2);
                    }
                });
                this.valueAnimator.start();
            }
            if (this.progress2 != f4) {
                ValueAnimator valueAnimator2 = this.valueAnimator2;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.progress2, f4);
                this.valueAnimator2 = valueAnimatorOfFloat2;
                valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StorageUsageView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        this.f$0.lambda$setStorageUsage$1(valueAnimator3);
                    }
                });
                this.valueAnimator2.start();
            }
        }
        this.textSettingsCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStorageUsage$0(ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStorageUsage$1(ValueAnimator valueAnimator) {
        this.progress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.progressView.invalidate();
        int i = this.lastProgressColor;
        int i2 = Theme.key_player_progress;
        if (i != Theme.getColor(i2)) {
            this.lastProgressColor = Theme.getColor(i2);
            this.telegramCacheTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m1124dp(10.0f), this.lastProgressColor), (Drawable) null, (Drawable) null, (Drawable) null);
            this.telegramCacheTextView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
            this.telegramDatabaseTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m1124dp(10.0f), this.lastProgressColor), (Drawable) null, (Drawable) null, (Drawable) null);
            this.telegramDatabaseTextView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
            this.freeSizeTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m1124dp(10.0f), ColorUtils.setAlphaComponent(this.lastProgressColor, 64)), (Drawable) null, (Drawable) null, (Drawable) null);
            this.freeSizeTextView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
            this.totlaSizeTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m1124dp(10.0f), ColorUtils.setAlphaComponent(this.lastProgressColor, 127)), (Drawable) null, (Drawable) null, (Drawable) null);
            this.totlaSizeTextView.setCompoundDrawablePadding(AndroidUtilities.m1124dp(6.0f));
        }
        this.textSettingsCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.divider.setBackgroundColor(Theme.getColor(Theme.key_divider));
    }

    private class ProgressView extends View {
        public ProgressView(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(40.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int color = Theme.getColor(Theme.key_player_progress);
            StorageUsageView.this.paintFill.setColor(color);
            StorageUsageView.this.paintProgress.setColor(color);
            StorageUsageView.this.paintProgress2.setColor(color);
            StorageUsageView.this.paintProgress.setAlpha(255);
            StorageUsageView.this.paintProgress2.setAlpha(82);
            StorageUsageView.this.paintFill.setAlpha(46);
            StorageUsageView.this.bgPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            canvas.drawLine(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(20.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(20.0f), StorageUsageView.this.paintFill);
            if (StorageUsageView.this.calculating || StorageUsageView.this.calculatingProgress != 0.0f) {
                if (StorageUsageView.this.calculating) {
                    StorageUsageView storageUsageView = StorageUsageView.this;
                    if (storageUsageView.calculatingProgressIncrement) {
                        float f = storageUsageView.calculatingProgress + 0.024615385f;
                        storageUsageView.calculatingProgress = f;
                        if (f > 1.0f) {
                            storageUsageView.calculatingProgress = 1.0f;
                            storageUsageView.calculatingProgressIncrement = false;
                        }
                    } else {
                        float f2 = storageUsageView.calculatingProgress - 0.024615385f;
                        storageUsageView.calculatingProgress = f2;
                        if (f2 < 0.0f) {
                            storageUsageView.calculatingProgress = 0.0f;
                            storageUsageView.calculatingProgressIncrement = true;
                        }
                    }
                } else {
                    StorageUsageView storageUsageView2 = StorageUsageView.this;
                    float f3 = storageUsageView2.calculatingProgress - 0.10666667f;
                    storageUsageView2.calculatingProgress = f3;
                    if (f3 < 0.0f) {
                        storageUsageView2.calculatingProgress = 0.0f;
                    }
                }
                invalidate();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(17.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(23.0f));
                StorageUsageView.this.cellFlickerDrawable.setParentWidth(getMeasuredWidth());
                StorageUsageView.this.cellFlickerDrawable.draw(canvas, rectF, AndroidUtilities.m1124dp(3.0f), null);
            }
            int iM1124dp = AndroidUtilities.m1124dp(24.0f);
            if (!StorageUsageView.this.calculating) {
                int iM1124dp2 = AndroidUtilities.m1124dp(24.0f) + ((int) ((getMeasuredWidth() - (AndroidUtilities.m1124dp(24.0f) * 2)) * StorageUsageView.this.progress2));
                canvas.drawLine(iM1124dp, AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(24.0f) + r3, AndroidUtilities.m1124dp(20.0f), StorageUsageView.this.paintProgress2);
                canvas.drawRect(iM1124dp2, AndroidUtilities.m1124dp(20.0f) - AndroidUtilities.m1124dp(3.0f), iM1124dp2 + AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(20.0f) + AndroidUtilities.m1124dp(3.0f), StorageUsageView.this.bgPaint);
            }
            if (StorageUsageView.this.calculating) {
                return;
            }
            int measuredWidth = (int) ((getMeasuredWidth() - (AndroidUtilities.m1124dp(24.0f) * 2)) * StorageUsageView.this.progress);
            if (measuredWidth < AndroidUtilities.m1124dp(1.0f)) {
                measuredWidth = AndroidUtilities.m1124dp(1.0f);
            }
            int iM1124dp3 = AndroidUtilities.m1124dp(24.0f) + measuredWidth;
            canvas.drawLine(iM1124dp, AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(24.0f) + measuredWidth, AndroidUtilities.m1124dp(20.0f), StorageUsageView.this.paintProgress);
            canvas.drawRect(iM1124dp3, AndroidUtilities.m1124dp(20.0f) - AndroidUtilities.m1124dp(3.0f), iM1124dp3 + AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(20.0f) + AndroidUtilities.m1124dp(3.0f), StorageUsageView.this.bgPaint);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EllipsizeSpanAnimator ellipsizeSpanAnimator = this.ellipsizeSpanAnimator;
        if (ellipsizeSpanAnimator != null) {
            ellipsizeSpanAnimator.onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EllipsizeSpanAnimator ellipsizeSpanAnimator = this.ellipsizeSpanAnimator;
        if (ellipsizeSpanAnimator != null) {
            ellipsizeSpanAnimator.onDetachedFromWindow();
        }
    }
}
