package org.telegram.ui.Wallet;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;

/* JADX INFO: loaded from: classes8.dex */
final class WalletDiamondSprite extends Drawable {
    private static Bitmap outlineShadow;
    private static float[] referenceTint;
    private static Bitmap softShadow;
    private final Drawable diamond;
    private final int intrinsicHeight;
    private final int intrinsicWidth;
    private float tintB;
    private float tintG;
    private static final float[] LUMA = {0.2126f, 0.7152f, 0.0722f};
    private static final int[] softOffset = new int[2];
    private static final int[] outlineOffset = new int[2];
    private final Paint shadowPaint = new Paint(3);
    private float tintR = -1.0f;
    private int alpha = 255;
    private float shadowAlpha = 1.0f;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setShadowAlpha(float f) {
        this.shadowAlpha = f;
    }

    public WalletDiamondSprite(int i, int i2) {
        this.intrinsicWidth = i;
        this.intrinsicHeight = i2;
        Drawable drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2807R.drawable.wallet_card_diamond).mutate();
        this.diamond = drawableMutate;
        loadShadows(drawableMutate);
    }

    private static void loadShadows(Drawable drawable) {
        if (softShadow != null) {
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(84, 84, Bitmap.Config.ARGB_8888);
        drawable.setBounds(0, 0, 84, 84);
        drawable.draw(new Canvas(bitmapCreateBitmap));
        Paint paint = new Paint();
        BlurMaskFilter.Blur blur = BlurMaskFilter.Blur.NORMAL;
        paint.setMaskFilter(new BlurMaskFilter(15.0f, blur));
        softShadow = bitmapCreateBitmap.extractAlpha(paint, softOffset);
        paint.setMaskFilter(new BlurMaskFilter(4.5f, blur));
        outlineShadow = bitmapCreateBitmap.extractAlpha(paint, outlineOffset);
        bitmapCreateBitmap.recycle();
    }

    private static float[] capSaturation(float f, float f2, float f3) {
        float fMax = Math.max(f, Math.max(f2, f3));
        float fMin = fMax - Math.min(f, Math.min(f2, f3));
        float f4 = 0.55f * fMax;
        if (fMin > f4) {
            float f5 = f4 / fMin;
            f = ((f - fMax) * f5) + fMax;
            f2 = ((f2 - fMax) * f5) + fMax;
            f3 = ((f3 - fMax) * f5) + fMax;
        }
        return new float[]{f, f2, f3};
    }

    public void setTint(float f, float f2, float f3) {
        float[] fArrCapSaturation = capSaturation(f, f2, f3);
        float f4 = fArrCapSaturation[0];
        float f5 = fArrCapSaturation[1];
        float f6 = fArrCapSaturation[2];
        if (f4 == this.tintR && f5 == this.tintG && f6 == this.tintB) {
            return;
        }
        this.tintR = f4;
        this.tintG = f5;
        this.tintB = f6;
        float f7 = 1.0f;
        if (referenceTint == null) {
            referenceTint = capSaturation(0.0f, 0.47809f, 1.0f);
        }
        float[] fArr = referenceTint;
        double dSqrt = ((double) (fArr[0] - fArr[1])) / Math.sqrt(2.0d);
        double dSqrt2 = ((double) ((fArr[0] + fArr[1]) - (fArr[2] * 2.0f))) / Math.sqrt(6.0d);
        double dSqrt3 = ((double) (f4 - f5)) / Math.sqrt(2.0d);
        double dSqrt4 = ((double) ((f4 + f5) - (f6 * 2.0f))) / Math.sqrt(6.0d);
        double dIEEEremainder = Math.IEEEremainder(Math.atan2(dSqrt4, dSqrt3) - Math.atan2(dSqrt2, dSqrt), 6.283185307179586d);
        double dHypot = (Math.hypot(dSqrt3, dSqrt4) / Math.hypot(dSqrt, dSqrt2)) * ((Math.min(1.0d, Math.abs(dIEEEremainder) / 1.0471975511965976d) * (-0.30000001192092896d)) + 1.0d);
        double dCos = Math.cos(dIEEEremainder);
        double dSin = Math.sin(dIEEEremainder) / Math.sqrt(3.0d);
        double d = ((dCos - (dCos * 0.3333333333333333d)) * dHypot) + 0.3333333333333333d;
        double d2 = 0.3333333333333333d - ((dCos * dHypot) * 0.3333333333333333d);
        float[] fArr2 = new float[20];
        int i = 0;
        while (i < 3) {
            int i2 = 0;
            while (i2 < 3) {
                double d3 = i == i2 ? d : d2;
                float f8 = f7;
                if (i2 == (i + 1) % 3) {
                    d3 -= dHypot * dSin;
                } else if (i2 == (i + 2) % 3) {
                    d3 += dHypot * dSin;
                }
                fArr2[(i * 5) + i2] = (float) d3;
                i2++;
                f7 = f8;
            }
            i++;
        }
        float f9 = f7;
        for (int i3 = 0; i3 < 3; i3++) {
            float[] fArr3 = LUMA;
            float f10 = (fArr3[0] * fArr2[i3]) + (fArr3[1] * fArr2[i3 + 5]) + (fArr3[2] * fArr2[i3 + 10]);
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = (i4 * 5) + i3;
                fArr2[i5] = fArr2[i5] + (LUMA[i3] - f10);
            }
        }
        fArr2[18] = f9;
        this.diamond.setColorFilter(new ColorMatrixColorFilter(fArr2));
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.alpha <= 0 || this.tintR < 0.0f) {
            return;
        }
        Rect bounds = getBounds();
        if (this.shadowAlpha > 0.0f) {
            float fWidth = bounds.width() / 84.0f;
            canvas.save();
            canvas.translate(bounds.left, bounds.top);
            canvas.scale(fWidth, bounds.height() / 84.0f);
            this.shadowPaint.setColor(-16777216);
            this.shadowPaint.setAlpha((int) (this.alpha * 0.35f * this.shadowAlpha));
            Bitmap bitmap = softShadow;
            int[] iArr = softOffset;
            canvas.drawBitmap(bitmap, iArr[0], iArr[1] + (AndroidUtilities.dp(1.0f) / fWidth), this.shadowPaint);
            this.shadowPaint.setAlpha((int) (this.alpha * 0.55f * this.shadowAlpha));
            Bitmap bitmap2 = outlineShadow;
            int[] iArr2 = outlineOffset;
            canvas.drawBitmap(bitmap2, iArr2[0], iArr2[1], this.shadowPaint);
            canvas.restore();
        }
        this.diamond.setBounds(bounds);
        this.diamond.setAlpha(this.alpha);
        this.diamond.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.intrinsicWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.intrinsicHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }
}
