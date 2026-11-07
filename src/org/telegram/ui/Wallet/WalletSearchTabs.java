package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes8.dex */
class WalletSearchTabs extends FrameLayout {
    private ValueAnimator animator;
    private final View button;
    private float buttonVisibility;
    private final EditTextBoldCursor field;
    private boolean keyboardDismissed;
    private final Utilities.Callback<Boolean> onOpen;
    private final Utilities.Callback<Float> onProgress;
    private boolean open;
    private final Paint paint;
    private float progress;
    private final RectF rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private final View tabs;
    private final TextPaint textPaint;

    public WalletSearchTabs(Context context, View view, Theme.ResourcesProvider resourcesProvider, Utilities.Callback<Boolean> callback, final Utilities.Callback<String> callback2, Utilities.Callback<Float> callback3) {
        super(context);
        this.paint = new Paint(1);
        this.textPaint = new TextPaint(1);
        this.rect = new RectF();
        this.buttonVisibility = 1.0f;
        this.tabs = view;
        this.resourcesProvider = resourcesProvider;
        this.onOpen = callback;
        this.onProgress = callback3;
        setWillNotDraw(false);
        addView(view, LayoutHelper.createFrame(-2, 40, 51));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.field = editTextBoldCursor;
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setTextSize(15.0f);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        editTextBoldCursor.setTextColor(Theme.getColor(i, resourcesProvider));
        editTextBoldCursor.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText, resourcesProvider));
        editTextBoldCursor.setCursorColor(Theme.getColor(i, resourcesProvider));
        editTextBoldCursor.setHint(LocaleController.getString(C2807R.string.WalletSearchGifts));
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setPadding(0, 0, 0, 0);
        editTextBoldCursor.setGravity(16);
        editTextBoldCursor.setImeOptions(3);
        editTextBoldCursor.setVisibility(4);
        editTextBoldCursor.setEnabled(false);
        editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Wallet.WalletSearchTabs$$ExternalSyntheticLambda1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return this.f$0.lambda$new$0(textView, i2, keyEvent);
            }
        });
        editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Wallet.WalletSearchTabs.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                callback2.run(charSequence.toString());
            }
        });
        addView(editTextBoldCursor, LayoutHelper.createFrame(-1, 40.0f, 48, 40.0f, 0.0f, 44.0f, 0.0f));
        View view2 = new View(context);
        this.button = view2;
        view2.setContentDescription(LocaleController.getString(C2807R.string.Search));
        view2.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 1));
        view2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSearchTabs$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$new$1(view3);
            }
        });
        addView(view2, LayoutHelper.createFrame(40, 40, 53));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$0(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 3) {
            return false;
        }
        AndroidUtilities.hideKeyboard(this.field);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        setOpen(!this.open);
    }

    public boolean isOpen() {
        return this.open;
    }

    public void setButtonVisibility(float f) {
        if (this.buttonVisibility == f) {
            return;
        }
        this.buttonVisibility = f;
        this.button.setVisibility(f > 0.0f ? 0 : 8);
        invalidate();
    }

    public void dismissKeyboard() {
        if (this.open) {
            this.keyboardDismissed = true;
            AndroidUtilities.hideKeyboard(this.field);
            this.field.clearFocus();
        }
    }

    public void setOpen(boolean z) {
        if (this.open == z) {
            return;
        }
        this.open = z;
        this.keyboardDismissed = false;
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            this.animator = null;
            valueAnimator.cancel();
        }
        this.field.setEnabled(z);
        this.field.setVisibility(0);
        this.button.setContentDescription(LocaleController.getString(z ? C2807R.string.Close : C2807R.string.Search));
        if (!z) {
            AndroidUtilities.hideKeyboard(this.field);
            this.field.clearFocus();
            this.field.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        }
        this.onOpen.run(Boolean.valueOf(z));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progress, z ? 1.0f : 0.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(z ? 380L : 300L);
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.tabs.setVisibility(0);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletSearchTabs$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$setOpen$2(valueAnimator2);
            }
        });
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletSearchTabs.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (WalletSearchTabs.this.animator != animator) {
                    return;
                }
                WalletSearchTabs.this.animator = null;
                WalletSearchTabs.this.tabs.setVisibility(WalletSearchTabs.this.open ? 4 : 0);
                WalletSearchTabs.this.field.setVisibility(WalletSearchTabs.this.open ? 0 : 4);
                if (!WalletSearchTabs.this.open || WalletSearchTabs.this.keyboardDismissed) {
                    return;
                }
                WalletSearchTabs.this.field.requestFocus();
                AndroidUtilities.showKeyboard(WalletSearchTabs.this.field);
            }
        });
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpen$2(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.progress = fFloatValue;
        this.onProgress.run(Float.valueOf(fFloatValue));
        this.tabs.setAlpha(1.0f - smooth(0.05f, 0.45f, this.progress));
        this.tabs.setScaleX(1.0f - (this.progress * 0.06f));
        this.field.setAlpha(smooth(0.3f, 0.9f, this.progress));
        this.field.setTranslationX((1.0f - this.progress) * Math.max(0, getWidth() - AndroidUtilities.dp(80.0f)));
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        this.textPaint.setTextSize(AndroidUtilities.dp(14.0f));
        this.textPaint.setTypeface(AndroidUtilities.bold());
        int iDp = AndroidUtilities.dp(62.0f) + ((int) Math.ceil(this.textPaint.measureText(LocaleController.getString(C2807R.string.WalletTransactions)))) + ((int) Math.ceil(this.textPaint.measureText(LocaleController.getString(C2807R.string.WalletCollectibles))));
        int size = View.MeasureSpec.getSize(i);
        int iMin = Math.min(iDp, Math.max(0, size - AndroidUtilities.dp(48.0f)));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.tabs.getLayoutParams();
        layoutParams.width = iMin;
        layoutParams.leftMargin = Math.max(0, Math.min((size - iMin) / 2, (size - AndroidUtilities.dp(48.0f)) - iMin));
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        super.onDraw(canvas);
        float fMax = Math.max(this.buttonVisibility, this.progress);
        if (fMax <= 0.0f) {
            return;
        }
        if (fMax < 1.0f) {
            canvas2 = canvas;
            canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), Math.round(255.0f * fMax));
            float f = (fMax * 0.2f) + 0.8f;
            float fDp = AndroidUtilities.dp(40.0f) / 2.0f;
            canvas2.scale(f, f, getWidth() - fDp, fDp);
        } else {
            canvas2 = canvas;
        }
        drawButton(canvas2);
        if (fMax < 1.0f) {
            canvas2.restore();
        }
    }

    private void drawButton(Canvas canvas) {
        float fDp = AndroidUtilities.dp(40.0f);
        float f = fDp / 2.0f;
        float width = getWidth() - f;
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
        this.rect.set((getWidth() - fDp) * (1.0f - this.progress), 0.0f, getWidth(), fDp);
        canvas.drawRoundRect(this.rect, f, f, this.paint);
        this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(AndroidUtilities.dp(1.9f));
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        float fSmooth = smooth(0.08f, 0.85f, this.progress);
        float f2 = 1.0f - fSmooth;
        float fDp2 = AndroidUtilities.dp(6.0f) * f2;
        if (fDp2 > 0.3f) {
            canvas.drawCircle(width - (AndroidUtilities.dp(1.5f) * f2), f - (AndroidUtilities.dp(1.5f) * f2), fDp2, this.paint);
        }
        float fDp3 = (AndroidUtilities.dp(2.6f) * f2) - (AndroidUtilities.dp(5.0f) * fSmooth);
        float fDp4 = (AndroidUtilities.dp(6.5f) * f2) + (AndroidUtilities.dp(5.0f) * fSmooth);
        canvas.drawLine(width + fDp3, fDp3 + f, width + fDp4, fDp4 + f, this.paint);
        float fDp5 = AndroidUtilities.dp(5.0f) * fSmooth;
        if (fDp5 > 0.3f) {
            canvas.drawLine(width + fDp5, f - fDp5, width - fDp5, f + fDp5, this.paint);
        }
        this.paint.setAlpha(Math.round(smooth(0.3f, 0.9f, this.progress) * 255.0f));
        float fDp6 = AndroidUtilities.dp(22.0f) + ((1.0f - this.progress) * Math.max(0, getWidth() - AndroidUtilities.dp(80.0f)));
        canvas.drawCircle(fDp6 - AndroidUtilities.dp(1.0f), f - AndroidUtilities.dp(1.0f), AndroidUtilities.dp(5.0f), this.paint);
        canvas.drawLine(AndroidUtilities.dp(3.0f) + fDp6, AndroidUtilities.dp(3.0f) + f, fDp6 + AndroidUtilities.dp(7.0f), AndroidUtilities.dp(7.0f) + f, this.paint);
        this.paint.setAlpha(255);
    }

    private static float smooth(float f, float f2, float f3) {
        float fMax = Math.max(0.0f, Math.min(1.0f, (f3 - f) / (f2 - f)));
        return fMax * fMax * (3.0f - (fMax * 2.0f));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            this.animator = null;
            valueAnimator.cancel();
        }
        float f = this.open ? 1.0f : 0.0f;
        this.progress = f;
        this.onProgress.run(Float.valueOf(f));
        this.tabs.setAlpha(this.open ? 0.0f : 1.0f);
        this.tabs.setScaleX(this.open ? 0.94f : 1.0f);
        this.tabs.setVisibility(this.open ? 4 : 0);
        this.field.setAlpha(this.open ? 1.0f : 0.0f);
        this.field.setTranslationX(0.0f);
        this.field.setVisibility(this.open ? 0 : 4);
        super.onDetachedFromWindow();
    }
}
