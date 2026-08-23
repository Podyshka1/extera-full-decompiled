package org.telegram.ui.Components;

import android.graphics.CornerPathEffect;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import java.lang.ref.WeakReference;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes3.dex */
public class LinkPath extends CornerPath {
    private static CornerPathEffect roundedEffect;
    private static int roundedEffectRadius;
    private int baselineShift;
    public float centerX;
    public float centerY;
    private WeakReference currentLayout;
    private int currentLine;
    private float insetHoriz;
    private float insetVert;
    private int lineHeight;
    private float maxX;
    private float maxY;
    private boolean useRoundRect;
    private float xOffset;
    private float yOffset;
    private float lastTop = -1.0f;
    private boolean allowReset = true;
    private float minX = Float.MAX_VALUE;
    private float minY = Float.MAX_VALUE;

    public static int getRadius() {
        return AndroidUtilities.dp(5.0f);
    }

    public static CornerPathEffect getRoundedEffect() {
        if (roundedEffect == null || roundedEffectRadius != getRadius()) {
            int radius = getRadius();
            roundedEffectRadius = radius;
            roundedEffect = new CornerPathEffect(radius);
        }
        return roundedEffect;
    }

    public LinkPath() {
        this.useCornerPathImplementation = false;
    }

    public LinkPath(boolean z) {
        this.useRoundRect = z;
        this.useCornerPathImplementation = false;
    }

    public void setCurrentLayout(Layout layout, int i, float f) {
        setCurrentLayout(layout, i, 0.0f, f);
    }

    public void setCurrentLayout(Layout layout, int i, float f, float f2) {
        int lineCount;
        if (layout == null) {
            this.currentLayout = new WeakReference(null);
            this.currentLine = 0;
            this.lastTop = -1.0f;
            this.xOffset = f;
            this.yOffset = f2;
            return;
        }
        this.currentLayout = new WeakReference(layout);
        this.currentLine = layout.getLineForOffset(i);
        this.lastTop = -1.0f;
        this.xOffset = f;
        this.yOffset = f2;
        if (Build.VERSION.SDK_INT < 28 || (lineCount = layout.getLineCount()) <= 0) {
            return;
        }
        int i2 = lineCount - 1;
        this.lineHeight = layout.getLineBottom(i2) - layout.getLineTop(i2);
    }

    public void setAllowReset(boolean z) {
        this.allowReset = z;
    }

    public void setBaselineShift(int i) {
        this.baselineShift = i;
    }

    public void setInset(float f, float f2) {
        this.insetVert = f;
        this.insetHoriz = f2;
    }

    @Override // org.telegram.ui.Components.CornerPath, android.graphics.Path
    public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
        WeakReference weakReference = this.currentLayout;
        if (weakReference == null || weakReference.get() == null) {
            superAddRect(f, f2, f3, f4, direction);
            return;
        }
        try {
            float f5 = this.yOffset;
            float f6 = f2 + f5;
            float spacingAdd = f5 + f4;
            float f7 = this.lastTop;
            if (f7 == -1.0f) {
                this.lastTop = f6;
            } else if (f7 != f6) {
                this.lastTop = f6;
                this.currentLine++;
            }
            float lineRight = ((Layout) this.currentLayout.get()).getLineRight(this.currentLine);
            float lineLeft = ((Layout) this.currentLayout.get()).getLineLeft(this.currentLine);
            if (f < lineRight) {
                if (f > lineLeft || f3 > lineLeft) {
                    if (f3 <= lineRight) {
                        lineRight = f3;
                    }
                    if (f >= lineLeft) {
                        lineLeft = f;
                    }
                    float f8 = this.xOffset;
                    float f9 = lineLeft + f8;
                    float f10 = lineRight + f8;
                    if (Build.VERSION.SDK_INT < 28) {
                        spacingAdd -= spacingAdd != ((float) ((Layout) this.currentLayout.get()).getHeight()) ? ((Layout) this.currentLayout.get()).getSpacingAdd() : 0.0f;
                    } else if (spacingAdd - f6 > this.lineHeight) {
                        spacingAdd = this.yOffset + (spacingAdd != ((float) ((Layout) this.currentLayout.get()).getHeight()) ? ((Layout) this.currentLayout.get()).getLineBottom(this.currentLine) - ((Layout) this.currentLayout.get()).getSpacingAdd() : 0.0f);
                    }
                    int i = this.baselineShift;
                    if (i < 0) {
                        spacingAdd += i;
                    } else if (i > 0) {
                        f6 += i;
                    }
                    this.centerX = (f10 + f9) / 2.0f;
                    this.centerY = (spacingAdd + f6) / 2.0f;
                    if (this.useRoundRect) {
                        superAddRect(f9 - (getRadius() / 2.0f), f6, f10 + (getRadius() / 2.0f), spacingAdd, direction);
                    } else {
                        superAddRect(f9, f6, f10, spacingAdd, direction);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    private void superAddRect(float f, float f2, float f3, float f4, Path.Direction direction) {
        float f5 = this.insetHoriz;
        float f6 = f - f5;
        float f7 = this.insetVert;
        float f8 = f2 - f7;
        float f9 = f3 + f5;
        float f10 = f4 + f7;
        this.minX = Math.min(this.minX, Math.min(f6, f9));
        this.minY = Math.min(this.minY, Math.min(f8, f10));
        this.maxX = Math.max(this.maxX, Math.max(f6, f9));
        this.maxY = Math.max(this.maxY, Math.max(f8, f10));
        super.addRect(f6, f8, f9, f10, direction);
    }

    public void getBounds(RectF rectF) {
        rectF.set(this.minX, this.minY, this.maxX, this.maxY);
    }

    @Override // org.telegram.ui.Components.CornerPath, android.graphics.Path
    public void reset() {
        if (this.allowReset) {
            super.reset();
        }
    }
}
