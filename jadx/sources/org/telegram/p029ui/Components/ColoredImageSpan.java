package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class ColoredImageSpan extends ReplacementSpan {
    private float alpha;
    private Runnable checkColorDelegate;
    int colorKey;
    public boolean draw;
    public Drawable drawable;
    int drawableColor;
    private Paint.FontMetricsInt fontMetrics;
    private boolean isRelativeSize;
    private int overrideColor;
    public boolean recolorDrawable;
    public float rotate;
    private float scaleX;
    private float scaleY;
    private int size;
    private int sizeWidth;
    public float spaceScaleX;
    private int topOffset;
    public float translateX;
    public float translateY;
    public boolean useLinkPaintColor;
    boolean usePaintColor;
    private final int verticalAlignment;

    public ColoredImageSpan(int i) {
        this(i, 0);
    }

    public ColoredImageSpan(Drawable drawable) {
        this(drawable, 0);
    }

    public ColoredImageSpan(int i, int i2) {
        this(ContextCompat.getDrawable(ApplicationLoader.applicationContext, i).mutate(), i2);
    }

    public ColoredImageSpan(Drawable drawable, int i) {
        this.draw = true;
        this.recolorDrawable = true;
        this.usePaintColor = true;
        this.useLinkPaintColor = false;
        this.topOffset = 0;
        this.alpha = 1.0f;
        this.spaceScaleX = 1.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.drawable = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        this.verticalAlignment = i;
    }

    public void setRelativeSize(Paint.FontMetricsInt fontMetricsInt) {
        this.isRelativeSize = true;
        this.fontMetrics = fontMetricsInt;
        if (fontMetricsInt != null) {
            setSize(Math.abs(fontMetricsInt.descent) + Math.abs(this.fontMetrics.ascent));
            if (this.size == 0) {
                setSize(AndroidUtilities.m1124dp(20.0f));
            }
        }
    }

    public void setSize(int i) {
        this.size = i;
        this.drawable.setBounds(0, 0, i, i);
    }

    public void setTranslateX(float f) {
        this.translateX = f;
    }

    public void setTranslateY(float f) {
        this.translateY = f;
    }

    public void translate(float f, float f2) {
        this.translateX = f;
        this.translateY = f2;
    }

    public void rotate(float f) {
        this.rotate = f;
    }

    public void setWidth(int i) {
        this.sizeWidth = i;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        float fAbs;
        int intrinsicWidth;
        if (this.isRelativeSize && this.fontMetrics != null) {
            if (fontMetricsInt == null) {
                fontMetricsInt = new Paint.FontMetricsInt();
            }
            Paint.FontMetricsInt fontMetricsInt2 = this.fontMetrics;
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
            fAbs = Math.abs(this.scaleX) * Math.abs(this.spaceScaleX);
            intrinsicWidth = this.size;
        } else if (this.sizeWidth != 0) {
            fAbs = Math.abs(this.scaleX);
            intrinsicWidth = this.sizeWidth;
        } else {
            fAbs = Math.abs(this.scaleX) * Math.abs(this.spaceScaleX);
            intrinsicWidth = this.size;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.drawable.getIntrinsicWidth();
            }
        }
        return (int) (fAbs * intrinsicWidth);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (this.draw) {
            Runnable runnable = this.checkColorDelegate;
            if (runnable != null) {
                runnable.run();
            }
            if (this.recolorDrawable) {
                int color = this.overrideColor;
                if (color == 0) {
                    if (this.useLinkPaintColor && (paint instanceof TextPaint)) {
                        color = ((TextPaint) paint).linkColor;
                    } else if (this.usePaintColor) {
                        color = paint.getColor();
                    } else {
                        color = Theme.getColor(this.colorKey);
                    }
                }
                int alphaComponent = ColorUtils.setAlphaComponent(color, (int) (this.alpha * Color.alpha(color)));
                if (this.drawableColor != alphaComponent) {
                    this.drawableColor = alphaComponent;
                    this.drawable.setColorFilter(new PorterDuffColorFilter(this.drawableColor, PorterDuff.Mode.SRC_IN));
                }
            }
            canvas.save();
            Drawable drawable = this.drawable;
            int iM1124dp = i5 - (drawable != null ? drawable.getBounds().bottom : i5);
            int i6 = this.verticalAlignment;
            if (i6 != 1) {
                if (i6 == 2) {
                    int i7 = i3 + ((i5 - i3) / 2);
                    Drawable drawable2 = this.drawable;
                    iM1124dp = i7 - (drawable2 != null ? drawable2.getBounds().height() / 2 : 0);
                } else if (i6 == 0) {
                    int i8 = i5 - i3;
                    int intrinsicHeight = this.size;
                    if (intrinsicHeight == 0) {
                        intrinsicHeight = this.drawable.getIntrinsicHeight();
                    }
                    iM1124dp = AndroidUtilities.m1124dp(this.topOffset) + i3 + ((i8 - intrinsicHeight) / 2);
                }
            }
            canvas.translate(f + this.translateX, iM1124dp + this.translateY);
            if (this.drawable != null) {
                float f2 = this.scaleX;
                if (f2 != 1.0f || this.scaleY != 1.0f) {
                    canvas.scale(f2, this.scaleY, 0.0f, r2.getBounds().centerY());
                }
                float f3 = this.rotate;
                if (f3 != 1.0f) {
                    canvas.rotate(f3, this.drawable.getBounds().centerX(), this.drawable.getBounds().centerY());
                }
                this.drawable.draw(canvas);
            }
            canvas.restore();
        }
    }

    public void setColorKey(int i) {
        this.colorKey = i;
        this.usePaintColor = i < 0;
    }

    public void setTopOffset(int i) {
        this.topOffset = i;
    }

    public void setScale(float f) {
        this.scaleX = f;
    }

    public void setScale(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public void setOverrideColor(int i) {
        this.overrideColor = i;
    }

    public void setAlpha(float f) {
        this.alpha = f;
    }
}
