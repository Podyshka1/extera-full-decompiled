package org.telegram.ui.Components.blur3;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.debug.DebugConfig;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSource;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceBitmap;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredBackgroundWithFadeDrawable extends Drawable {
    private int alpha;
    private final Matrix bitmapMatrix;
    private final Paint bitmapPaint;
    private BitmapShader bitmapShader;
    private int colorStaticLast;
    private final Paint colorStaticPaint;
    private Shader composeShader;
    private final BlurredBackgroundDrawable drawable;
    private int fadeHeight;
    private Shader gradientShader;
    private boolean ignoreFastWay;
    private Bitmap lastBitmap;
    private int lastOverrideFadeColor;
    private int lastOverrideFadeHeight;
    private final Paint maskFadeGradientPaint;
    private final Matrix matrix;
    private final Matrix matrixTmp;
    private boolean opacity;
    private Shader overrideComposeShader;
    private int overrideFadeColor;
    private boolean overrideFadeEnabled;
    private final Paint overrideFadePaint;
    private Shader overrideFadeShader;
    private Shader overrideMaskShader;
    private Shader shader;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public BlurredBackgroundWithFadeDrawable(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        Paint paint = new Paint(1);
        this.maskFadeGradientPaint = paint;
        this.matrix = new Matrix();
        this.matrixTmp = new Matrix();
        this.bitmapMatrix = new Matrix();
        Paint paint2 = new Paint(1);
        this.bitmapPaint = paint2;
        this.overrideFadePaint = new Paint(5);
        this.colorStaticPaint = new Paint(1);
        this.alpha = 255;
        this.drawable = blurredBackgroundDrawable;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        paint2.setFilterBitmap(true);
        setFadeHeight(AndroidUtilities.dp(40.0f), false);
    }

    public void setFadeHeight(int i, boolean z) {
        if (this.fadeHeight == i && this.opacity == z) {
            return;
        }
        this.fadeHeight = i;
        this.opacity = z;
        Paint paint = this.maskFadeGradientPaint;
        LinearGradient linearGradientCreateGradient = createGradient(-16777216, z);
        this.shader = linearGradientCreateGradient;
        paint.setShader(linearGradientCreateGradient);
        this.colorStaticPaint.setShader(null);
        this.matrix.reset();
        this.matrix.setScale(1.0f, i);
        if (i < 0) {
            this.matrix.postTranslate(0.0f, -i);
        }
        this.shader.setLocalMatrix(this.matrix);
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.drawable.setBounds(rect);
    }

    public void setIgnoreFastWay(boolean z) {
        this.ignoreFastWay = z;
    }

    public void setOverrideFadeColor(int i) {
        if (this.overrideFadeColor != i) {
            this.overrideFadeColor = i;
            this.overrideFadeShader = null;
        }
        this.overrideFadeEnabled = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iHeight;
        int i;
        boolean z;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || this.alpha == 0) {
            return;
        }
        if (this.overrideFadeEnabled) {
            drawOverrideFade(canvas, bounds);
            return;
        }
        BlurredBackgroundSource unwrappedSource = this.drawable.getUnwrappedSource();
        boolean z2 = this.ignoreFastWay;
        if (!z2 && (unwrappedSource instanceof BlurredBackgroundSourceColor)) {
            int color = ((BlurredBackgroundSourceColor) unwrappedSource).getColor();
            if (this.colorStaticLast != color || this.gradientShader == null) {
                LinearGradient linearGradientCreateGradient = createGradient(color, this.opacity);
                this.gradientShader = linearGradientCreateGradient;
                this.colorStaticLast = color;
                this.colorStaticPaint.setShader(linearGradientCreateGradient);
            }
            iHeight = this.fadeHeight < 0 ? bounds.height() + this.fadeHeight : 0;
            this.matrixTmp.set(this.matrix);
            this.matrixTmp.postTranslate(bounds.left, bounds.top + iHeight);
            this.gradientShader.setLocalMatrix(this.matrixTmp);
            this.colorStaticPaint.setAlpha(this.alpha);
            canvas.drawRect(bounds, this.colorStaticPaint);
            return;
        }
        if (!z2 && (unwrappedSource instanceof BlurredBackgroundSourceBitmap) && (i = Build.VERSION.SDK_INT) >= 28) {
            BlurredBackgroundSourceBitmap blurredBackgroundSourceBitmap = (BlurredBackgroundSourceBitmap) unwrappedSource;
            Bitmap bitmap = blurredBackgroundSourceBitmap.getBitmap();
            if (bitmap == null) {
                return;
            }
            boolean z3 = true;
            if (this.colorStaticLast != -16777216 || this.gradientShader == null) {
                this.gradientShader = createGradient(-16777216, this.opacity);
                this.colorStaticLast = -16777216;
                z = true;
            } else {
                z = false;
            }
            if (this.bitmapShader == null || this.lastBitmap != bitmap) {
                this.lastBitmap = bitmap;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                this.bitmapShader = bitmapShader;
                if (i >= 33) {
                    bitmapShader.setFilterMode(2);
                }
            } else {
                z3 = z;
            }
            if (z3 || this.composeShader == null) {
                ComposeShader composeShader = new ComposeShader(this.bitmapShader, this.gradientShader, PorterDuff.Mode.DST_IN);
                this.composeShader = composeShader;
                this.bitmapPaint.setShader(composeShader);
            }
            iHeight = this.fadeHeight < 0 ? this.fadeHeight + bounds.height() : 0;
            this.matrixTmp.set(this.matrix);
            this.matrixTmp.postTranslate(bounds.left, bounds.top + iHeight);
            this.gradientShader.setLocalMatrix(this.matrixTmp);
            this.bitmapMatrix.set(blurredBackgroundSourceBitmap.getMatrix());
            this.bitmapMatrix.postTranslate(-this.drawable.getSourceOffsetX(), -this.drawable.getSourceOffsetY());
            this.bitmapShader.setLocalMatrix(this.bitmapMatrix);
            this.bitmapPaint.setAlpha(this.alpha);
            canvas.drawRect(bounds, this.bitmapPaint);
            return;
        }
        int iSaveLayerAlpha = canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, this.alpha);
        iHeight = this.fadeHeight < 0 ? bounds.height() + this.fadeHeight : 0;
        this.drawable.draw(canvas);
        canvas.translate(bounds.left, bounds.top + iHeight);
        canvas.drawRect(0.0f, -iHeight, bounds.width(), bounds.height() - iHeight, this.maskFadeGradientPaint);
        canvas.restoreToCount(iSaveLayerAlpha);
    }

    private void drawOverrideFade(Canvas canvas, Rect rect) {
        Bitmap bitmap;
        int iMax = Math.max(1, rect.height());
        int i = this.lastOverrideFadeColor;
        int i2 = this.overrideFadeColor;
        if (i != i2 || this.lastOverrideFadeHeight != iMax || this.overrideFadeShader == null) {
            this.lastOverrideFadeColor = i2;
            this.lastOverrideFadeHeight = iMax;
            this.overrideFadeShader = createOverrideFadeGradient(i2, iMax, 1.0f);
            this.overrideMaskShader = createOverrideFadeGradient(-16777216, iMax, 0.75f);
            this.overrideComposeShader = null;
            this.overrideFadePaint.setShader(this.overrideFadeShader);
        }
        this.matrixTmp.reset();
        this.matrixTmp.postTranslate(rect.left, rect.top);
        BlurredBackgroundSource unwrappedSource = this.drawable.getUnwrappedSource();
        if (!this.ignoreFastWay && !DebugConfig.getDisableChatFadeWallpaperBlend() && (unwrappedSource instanceof BlurredBackgroundSourceBitmap)) {
            BlurredBackgroundSourceBitmap blurredBackgroundSourceBitmap = (BlurredBackgroundSourceBitmap) unwrappedSource;
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 28 && (bitmap = blurredBackgroundSourceBitmap.getBitmap()) != null) {
                if (this.bitmapShader == null || this.lastBitmap != bitmap) {
                    this.lastBitmap = bitmap;
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                    this.bitmapShader = bitmapShader;
                    if (i3 >= 33) {
                        bitmapShader.setFilterMode(2);
                    }
                    this.overrideComposeShader = null;
                }
                if (this.overrideComposeShader == null) {
                    ComposeShader composeShader = new ComposeShader(this.bitmapShader, this.overrideMaskShader, PorterDuff.Mode.DST_IN);
                    this.overrideComposeShader = composeShader;
                    this.bitmapPaint.setShader(composeShader);
                }
                this.overrideMaskShader.setLocalMatrix(this.matrixTmp);
                this.bitmapMatrix.set(blurredBackgroundSourceBitmap.getMatrix());
                this.bitmapMatrix.postTranslate(-this.drawable.getSourceOffsetX(), -this.drawable.getSourceOffsetY());
                this.bitmapShader.setLocalMatrix(this.bitmapMatrix);
                this.bitmapPaint.setAlpha(this.alpha);
                canvas.drawRect(rect, this.bitmapPaint);
                this.overrideFadeShader.setLocalMatrix(this.matrixTmp);
                this.overrideFadePaint.setAlpha(Math.round(this.alpha * 0.8f));
                canvas.drawRect(rect, this.overrideFadePaint);
                return;
            }
        }
        this.overrideFadeShader.setLocalMatrix(this.matrixTmp);
        this.overrideFadePaint.setAlpha(this.alpha);
        canvas.drawRect(rect, this.overrideFadePaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    private static LinearGradient createGradient(int i, boolean z) {
        int iAlpha = Color.alpha(i);
        if (z) {
            return new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{ColorUtils.setAlphaComponent(i, 0), ColorUtils.setAlphaComponent(i, (iAlpha * 96) / 285), ColorUtils.setAlphaComponent(i, (iAlpha * 176) / 285), ColorUtils.setAlphaComponent(i, (iAlpha * 232) / 285)}, (float[]) null, Shader.TileMode.CLAMP);
        }
        return new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{ColorUtils.setAlphaComponent(i, 0), ColorUtils.setAlphaComponent(i, (iAlpha * 96) / 255), ColorUtils.setAlphaComponent(i, (iAlpha * 176) / 255), ColorUtils.setAlphaComponent(i, (iAlpha * 232) / 255), ColorUtils.setAlphaComponent(i, (iAlpha * 255) / 255)}, (float[]) null, Shader.TileMode.CLAMP);
    }

    private static LinearGradient createOverrideFadeGradient(int i, int i2, float f) {
        boolean zIsCurrentThemeDark = Theme.isCurrentThemeDark();
        float[] fArr = {zIsCurrentThemeDark ? 0.95f : 1.0f, zIsCurrentThemeDark ? 0.9f : 0.93f, zIsCurrentThemeDark ? 0.78f : 0.83f, 0.62f, 0.4f, 0.18f, 0.05f, 0.0f};
        int[] iArr = new int[8];
        for (int i3 = 0; i3 < 8; i3++) {
            iArr[i3] = ColorUtils.setAlphaComponent(i, Math.round(fArr[i3] * 255.0f * f));
        }
        return new LinearGradient(0.0f, 0.0f, 0.0f, Math.max(1, i2), iArr, new float[]{0.0f, 0.5f, 0.65f, 0.75f, 0.84f, 0.92f, 0.97f, 1.0f}, Shader.TileMode.CLAMP);
    }
}
