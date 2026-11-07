package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Wallet.GramWallet;

/* JADX INFO: loaded from: classes7.dex */
public class ProfileBalanceView extends ProfileMusicView {
    private Text amount;
    private final DecimalFormat balanceFormat;
    private final Path chevron;
    private final Paint chevronPaint;
    private float ejectProgress;
    private final Drawable gramColorIcon;
    private final Drawable gramIcon;
    private int gramIconColor;
    private final Text label;
    private final boolean monetGramIcon;
    private final Theme.ResourcesProvider resourcesProvider;

    public ProfileBalanceView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        Paint paint = new Paint(1);
        this.chevronPaint = paint;
        Path path = new Path();
        this.chevron = path;
        this.balanceFormat = new DecimalFormat("#,##0.#########", new DecimalFormatSymbols(Locale.US));
        this.resourcesProvider = resourcesProvider;
        boolean zIsCurrentThemeMonet = Theme.isCurrentThemeMonet();
        this.monetGramIcon = zIsCurrentThemeMonet;
        this.gramIcon = context.getResources().getDrawable(zIsCurrentThemeMonet ? C2807R.drawable.mini_gram_14 : C2807R.drawable.profile_balance_gram).mutate();
        this.gramColorIcon = context.getResources().getDrawable(C2807R.drawable.profile_balance_gram_color).mutate();
        this.label = new Text(LocaleController.getString(C2807R.string.StarsBalance) + ":", 11.0f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeWidth(AndroidUtilities.dpf2(1.16f));
        path.moveTo(0.0f, -AndroidUtilities.dpf2(3.33f));
        path.lineTo(AndroidUtilities.dpf2(3.16f), 0.0f);
        path.lineTo(0.0f, AndroidUtilities.dpf2(3.33f));
        setBalance(0L);
    }

    public void setBalance(long j) {
        String str = this.balanceFormat.format(new BigDecimal(GramWallet.formatGramsBalance(j, false)));
        this.amount = new Text(str, 11.0f, AndroidUtilities.bold());
        setContentDescription(LocaleController.getString(C2807R.string.StarsBalance) + ": " + str);
        invalidate();
    }

    public void setEjectProgress(float f) {
        if (this.ejectProgress == f) {
            return;
        }
        this.ejectProgress = f;
        invalidate();
    }

    @Override // org.telegram.ui.Components.ProfileMusicView
    public float getContentWidth(float f) {
        this.label.ellipsize(-1.0f);
        this.amount.ellipsize(-1.0f);
        float fMax = Math.max(0.0f, f - AndroidUtilities.dp(43.0f));
        this.label.ellipsize(Math.max(0.0f, fMax - this.amount.getWidth()));
        this.amount.ellipsize(Math.max(0.0f, fMax - this.label.getWidth()));
        return this.label.getWidth() + AndroidUtilities.dp(27.0f) + this.amount.getWidth();
    }

    @Override // org.telegram.ui.Components.ProfileMusicView
    public void drawContent(Canvas canvas, float f) {
        int color;
        float height = getHeight() / 2.0f;
        canvas.translate(0.0f, (-AndroidUtilities.dp(20.0f)) * this.ejectProgress);
        float f2 = f * 0.85f;
        this.label.draw(canvas, 0.0f, height, this.textColor, f2);
        canvas.translate(this.label.getWidth() + AndroidUtilities.dp(4.0f), 0.0f);
        Drawable drawable = (this.hasProfileColor || isOnProfilePhoto()) ? this.gramColorIcon : this.gramIcon;
        if (this.monetGramIcon && drawable == this.gramIcon && this.gramIconColor != (color = Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider))) {
            this.gramIconColor = color;
            drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        int iDp = AndroidUtilities.dp(13.0f);
        int i = ((int) height) - (iDp / 2);
        drawable.setBounds(0, i, iDp, i + iDp);
        drawable.setAlpha((int) (255.0f * f));
        drawable.draw(canvas);
        canvas.translate(iDp + AndroidUtilities.dp(2.0f), 0.0f);
        this.amount.draw(canvas, 0.0f, height, this.textColor, f);
        canvas.translate(this.amount.getWidth() + AndroidUtilities.dpf2(4.8f), height);
        this.chevronPaint.setColor(Theme.multAlpha(this.textColor, f2));
        canvas.drawPath(this.chevron, this.chevronPaint);
    }
}
