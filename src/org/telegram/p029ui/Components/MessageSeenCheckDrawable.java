package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.DialogCell;

/* JADX INFO: loaded from: classes7.dex */
public class MessageSeenCheckDrawable {
    private int colorKey;
    private Drawable drawable;

    /* JADX INFO: renamed from: h */
    private int f1978h;
    private int lastColor;
    private float lastDensity;
    private CharSequence lastSpanned;

    /* JADX INFO: renamed from: oy */
    private float f1979oy;
    private int resId;

    /* JADX INFO: renamed from: w */
    private int f1980w;

    public MessageSeenCheckDrawable(int i, int i2) {
        this.f1980w = -1;
        this.f1978h = -1;
        this.f1979oy = 4.66f;
        this.resId = i;
        this.colorKey = i2;
    }

    public MessageSeenCheckDrawable(int i, int i2, int i3, int i4, float f) {
        this(i, i2);
        this.f1980w = i3;
        this.f1978h = i4;
        this.f1979oy = f;
    }

    public CharSequence getSpanned(Context context, Theme.ResourcesProvider resourcesProvider) {
        if (this.lastSpanned != null && this.drawable != null && AndroidUtilities.density == this.lastDensity) {
            if (this.lastColor != Theme.getColor(this.colorKey, resourcesProvider)) {
                Drawable drawable = this.drawable;
                int color = Theme.getColor(this.colorKey, resourcesProvider);
                this.lastColor = color;
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            }
            return this.lastSpanned;
        }
        if (context == null) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("v ");
        this.lastDensity = AndroidUtilities.density;
        Drawable drawableMutate = context.getResources().getDrawable(this.resId).mutate();
        this.drawable = drawableMutate;
        int color2 = Theme.getColor(this.colorKey, resourcesProvider);
        this.lastColor = color2;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.SRC_IN));
        int i = this.f1980w;
        int intrinsicWidth = i <= 0 ? this.drawable.getIntrinsicWidth() : AndroidUtilities.m1124dp(i);
        int i2 = this.f1978h;
        int intrinsicHeight = i2 <= 0 ? this.drawable.getIntrinsicHeight() : AndroidUtilities.m1124dp(i2);
        int iM1124dp = AndroidUtilities.m1124dp(this.f1979oy);
        this.drawable.setBounds(0, iM1124dp, intrinsicWidth, intrinsicHeight + iM1124dp);
        spannableStringBuilder.setSpan(new ImageSpan(this.drawable, 2), 0, 1, 33);
        spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(2.0f)), 1, 2, 33);
        this.lastSpanned = spannableStringBuilder;
        return spannableStringBuilder;
    }
}
