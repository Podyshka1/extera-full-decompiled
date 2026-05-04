package org.telegram.p029ui.Components;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SvgHelper;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class LoadingStickerDrawable extends Drawable {
    private Bitmap bitmap;
    int currentColor0;
    int currentColor1;
    private float gradientWidth;
    private long lastUpdateTime;
    private View parentView;
    private LinearGradient placeholderGradient;
    private float totalTranslation;
    private Paint placeholderPaint = new Paint(2);
    private Matrix placeholderMatrix = new Matrix();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public LoadingStickerDrawable(View view, String str, int i, int i2) {
        this.bitmap = SvgHelper.getBitmapByPathOnly(str, 512, 512, i, i2);
        this.parentView = view;
    }

    public void setColors(int i, int i2) {
        int color = Theme.getColor(i);
        int color2 = Theme.getColor(i2);
        if (this.currentColor0 == color && this.currentColor1 == color2) {
            return;
        }
        this.currentColor0 = color;
        this.currentColor1 = color2;
        int averageColor = AndroidUtilities.getAverageColor(color2, color);
        this.placeholderPaint.setColor(color2);
        float fM1124dp = AndroidUtilities.m1124dp(500.0f);
        this.gradientWidth = fM1124dp;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, fM1124dp, 0.0f, new int[]{color2, averageColor, color2}, new float[]{0.0f, 0.18f, 0.36f}, Shader.TileMode.REPEAT);
        this.placeholderGradient = linearGradient;
        linearGradient.setLocalMatrix(this.placeholderMatrix);
        Bitmap bitmap = this.bitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.placeholderPaint.setShader(new ComposeShader(this.placeholderGradient, new BitmapShader(bitmap, tileMode, tileMode), PorterDuff.Mode.MULTIPLY));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.bitmap == null) {
            return;
        }
        setColors(Theme.key_dialogBackground, Theme.key_dialogBackgroundGray);
        Rect bounds = getBounds();
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.placeholderPaint);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jAbs = Math.abs(this.lastUpdateTime - jElapsedRealtime);
        if (jAbs > 17) {
            jAbs = 16;
        }
        this.lastUpdateTime = jElapsedRealtime;
        this.totalTranslation += (jAbs * this.gradientWidth) / 1800.0f;
        while (true) {
            float f = this.totalTranslation;
            float f2 = this.gradientWidth;
            if (f >= f2 * 2.0f) {
                this.totalTranslation = f - (f2 * 2.0f);
            } else {
                this.placeholderMatrix.setTranslate(f, 0.0f);
                this.placeholderGradient.setLocalMatrix(this.placeholderMatrix);
                this.parentView.invalidate();
                return;
            }
        }
    }
}
