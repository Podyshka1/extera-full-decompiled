package org.telegram.ui.Wallet;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes8.dex */
class WalletTransactionAmountView extends FrameLayout {
    final TextView amount;
    private WalletDiamondView diamond;
    private final ImageView flatDiamond;
    private boolean flying;
    private float press;
    private float progress;

    public WalletTransactionAmountView(Context context) {
        super(context);
        setClipChildren(false);
        setClipToPadding(false);
        TextView textView = new TextView(context);
        this.amount = textView;
        textView.setSingleLine(true);
        textView.setIncludeFontPadding(false);
        textView.setGravity(21);
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(textView);
        ImageView imageView = new ImageView(context);
        this.flatDiamond = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImportantForAccessibility(2);
        addView(imageView, LayoutHelper.createFrame(16, 16.0f));
    }

    public void setAmount(CharSequence charSequence, Drawable drawable) {
        this.amount.setText(charSequence);
        this.amount.setCompoundDrawablesRelative(null, null, null, null);
        this.flatDiamond.setImageDrawable(drawable);
    }

    public void setColor(int i) {
        this.amount.setTextColor(i);
    }

    public void setPendingProgress(float f) {
        this.progress = f;
        if (f > 0.0f && this.diamond == null) {
            WalletDiamondView walletDiamondView = new WalletDiamondView(getContext(), 40, true);
            this.diamond = walletDiamondView;
            walletDiamondView.setContinuousRotation(300.0f);
            addView(this.diamond, LayoutHelper.createFrame(40, 40.0f));
        }
        WalletDiamondView walletDiamondView2 = this.diamond;
        if (walletDiamondView2 != null && f == 0.0f) {
            walletDiamondView2.setPaused(true);
            removeView(this.diamond);
            this.diamond = null;
        }
        applyMotion();
        requestLayout();
    }

    public void setLandingPress(float f) {
        this.press = f;
        applyMotion();
    }

    private float textScale() {
        return (this.progress * 0.42857146f) + 1.0f;
    }

    private float slotWidth() {
        return AndroidUtilities.dp(16.0f) + ((AndroidUtilities.dp(23.0f) - AndroidUtilities.dp(16.0f)) * this.progress);
    }

    private float gap() {
        return AndroidUtilities.dp(2.0f) + ((AndroidUtilities.dp(7.0f) - AndroidUtilities.dp(2.0f)) * this.progress);
    }

    private void applyMotion() {
        float fDp = AndroidUtilities.dp(19.0f) + (((getHeight() * 0.5f) - AndroidUtilities.dp(19.0f)) * this.progress);
        float width = getWidth() - (slotWidth() * 0.5f);
        this.amount.setPivotX(r2.getWidth());
        this.amount.setPivotY(r2.getHeight() * 0.5f);
        this.amount.setScaleX(textScale());
        this.amount.setScaleY(textScale());
        this.amount.setTranslationX(((getWidth() - slotWidth()) - gap()) - this.amount.getWidth());
        this.amount.setTranslationY(fDp - (r2.getHeight() * 0.5f));
        this.flatDiamond.setTranslationX(width - AndroidUtilities.dp(8.0f));
        this.flatDiamond.setTranslationY(fDp - AndroidUtilities.dp(8.0f));
        this.flatDiamond.setAlpha(1.0f - this.progress);
        WalletDiamondView walletDiamondView = this.diamond;
        if (walletDiamondView != null) {
            walletDiamondView.setTranslationX(width - AndroidUtilities.dp(20.0f));
            this.diamond.setTranslationY(fDp - AndroidUtilities.dp(20.0f));
            this.diamond.setPivotX(AndroidUtilities.dp(20.0f));
            this.diamond.setPivotY(AndroidUtilities.dp(20.0f));
            this.diamond.setScaleX(((this.press * 0.12f) + 1.0f) * ((this.progress * 0.4f) + 0.6f));
            this.diamond.setScaleY((1.0f - (this.press * 0.18f)) * ((this.progress * 0.4f) + 0.6f));
            this.diamond.setAlpha(this.flying ? 0.0f : this.progress);
        }
    }

    public WalletDiamondView getDiamond() {
        return this.diamond;
    }

    public void setFlying(boolean z) {
        this.flying = z;
        applyMotion();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        this.amount.measure(View.MeasureSpec.makeMeasureSpec((int) (Math.max(0, View.MeasureSpec.getSize(i) - Math.round(slotWidth() + gap())) / textScale()), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(16.0f), TLObject.FLAG_30));
        this.flatDiamond.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(16.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(16.0f), TLObject.FLAG_30));
        WalletDiamondView walletDiamondView = this.diamond;
        if (walletDiamondView != null) {
            walletDiamondView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(40.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(40.0f), TLObject.FLAG_30));
        }
        setMeasuredDimension(View.resolveSize((int) Math.ceil((this.amount.getMeasuredWidth() * textScale()) + gap() + slotWidth()), i), View.resolveSize(AndroidUtilities.dp(40.0f), i2));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TextView textView = this.amount;
        textView.layout(0, 0, textView.getMeasuredWidth(), this.amount.getMeasuredHeight());
        this.flatDiamond.layout(0, 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
        WalletDiamondView walletDiamondView = this.diamond;
        if (walletDiamondView != null) {
            walletDiamondView.layout(0, 0, AndroidUtilities.dp(40.0f), AndroidUtilities.dp(40.0f));
        }
        applyMotion();
    }
}
