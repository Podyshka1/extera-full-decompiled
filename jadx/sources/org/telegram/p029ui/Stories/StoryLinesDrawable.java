package org.telegram.p029ui.Stories;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Stories.PeerStoriesView;

/* JADX INFO: loaded from: classes7.dex */
public class StoryLinesDrawable {
    float bufferingProgress;
    boolean incrementBuffering;
    int lastPosition;
    private final PeerStoriesView.SharedResources sharedResources;
    private final View view;
    private final StaticLayout zoomHintLayout;
    private final float zoomHintLayoutLeft;
    private final float zoomHintLayoutWidth;
    private final TextPaint zoomHintPaint;
    private final AnimatedFloat zoomT;

    public StoryLinesDrawable(View view, PeerStoriesView.SharedResources sharedResources) {
        this.view = view;
        this.sharedResources = sharedResources;
        this.zoomT = new AnimatedFloat(view, 0L, 360L, CubicBezierInterpolator.EASE_OUT_QUINT);
        TextPaint textPaint = new TextPaint(1);
        this.zoomHintPaint = textPaint;
        textPaint.setTextSize(AndroidUtilities.m1124dp(14.0f));
        textPaint.setColor(-1);
        textPaint.setShadowLayer(AndroidUtilities.m1124dp(3.0f), 0.0f, AndroidUtilities.m1124dp(1.0f), 805306368);
        StaticLayout staticLayout = new StaticLayout(LocaleController.getString(C2888R.string.StorySeekHelp), textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.zoomHintLayout = staticLayout;
        this.zoomHintLayoutLeft = staticLayout.getLineCount() > 0 ? staticLayout.getLineLeft(0) : 0.0f;
        this.zoomHintLayoutWidth = staticLayout.getLineCount() > 0 ? staticLayout.getLineWidth(0) : 0.0f;
    }

    public void draw(Canvas canvas, int i, int i2, float f, int i3, float f2, float f3, boolean z, boolean z2, float f4) {
        int iM1124dp;
        boolean z3;
        int i4;
        float f5;
        float f6;
        float f7;
        Paint paint;
        int i5;
        StoryLinesDrawable storyLinesDrawable = this;
        int i6 = i;
        int i7 = i3;
        if (i7 <= 0) {
            return;
        }
        boolean z4 = z && !z2;
        if (storyLinesDrawable.lastPosition != i2) {
            storyLinesDrawable.bufferingProgress = 0.0f;
            storyLinesDrawable.incrementBuffering = true;
        }
        storyLinesDrawable.lastPosition = i2;
        PeerStoriesView.SharedResources sharedResources = storyLinesDrawable.sharedResources;
        Paint paint2 = sharedResources.barPaint;
        Paint paint3 = sharedResources.selectedBarPaint;
        if (i7 > 100) {
            iM1124dp = 1;
        } else if (i7 >= 50) {
            iM1124dp = AndroidUtilities.m1124dp(1.0f);
        } else {
            iM1124dp = AndroidUtilities.m1124dp(2.0f);
        }
        float fM1124dp = ((i6 - AndroidUtilities.m1124dp(10.0f)) - ((i7 - 1) * iM1124dp)) / i7;
        AndroidUtilities.m1124dp(5.0f);
        float fMin = Math.min(fM1124dp / 2.0f, AndroidUtilities.m1124dp(1.0f));
        float f8 = storyLinesDrawable.zoomT.set(z2);
        if (f8 > 0.0f) {
            float fLerp = AndroidUtilities.lerp(f, f4, f8);
            canvas.save();
            storyLinesDrawable.zoomHintPaint.setAlpha((int) (f8 * 255.0f));
            f = fLerp;
            z3 = z4;
            i4 = iM1124dp;
            storyLinesDrawable.zoomHintPaint.setShadowLayer(AndroidUtilities.m1124dp(3.0f), 0.0f, AndroidUtilities.m1124dp(1.0f), Theme.multAlpha(805306368, f8));
            canvas.translate(((i6 - storyLinesDrawable.zoomHintLayoutWidth) / 2.0f) - storyLinesDrawable.zoomHintLayoutLeft, AndroidUtilities.lerp(AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(16.0f), f8));
            storyLinesDrawable.zoomHintLayout.draw(canvas);
            canvas.restore();
        } else {
            z3 = z4;
            i4 = iM1124dp;
        }
        float f9 = f;
        int i8 = 0;
        while (i8 < i7) {
            float fM1124dp2 = AndroidUtilities.m1124dp(5.0f) + (-0.0f) + (i4 * i8) + (i8 * fM1124dp);
            if (fM1124dp2 <= i6) {
                float f10 = fM1124dp2 + fM1124dp;
                if (f10 >= 0.0f && f3 > 0.0f) {
                    float fLerp2 = AndroidUtilities.lerp(fMin, AndroidUtilities.dpf2(2.0f), f8);
                    if (i8 > i2 || i8 != i2) {
                        f5 = f9;
                        f6 = fMin;
                        f7 = 1.0f;
                    } else {
                        RectF rectF = AndroidUtilities.rectTmp;
                        f5 = f9;
                        f6 = fMin;
                        rectF.set(fM1124dp2, 0.0f, f10, AndroidUtilities.lerp(AndroidUtilities.dpf2(2.0f), AndroidUtilities.dpf2(5.0f), (i2 == i8 ? 1 : 0) * f8));
                        if (z3) {
                            if (storyLinesDrawable.incrementBuffering) {
                                float f11 = storyLinesDrawable.bufferingProgress + 0.026666667f;
                                storyLinesDrawable.bufferingProgress = f11;
                                if (f11 > 0.5f) {
                                    storyLinesDrawable.incrementBuffering = false;
                                }
                            } else {
                                float f12 = storyLinesDrawable.bufferingProgress - 0.026666667f;
                                storyLinesDrawable.bufferingProgress = f12;
                                if (f12 < -0.5f) {
                                    storyLinesDrawable.incrementBuffering = true;
                                }
                            }
                            i5 = (int) (51.0f * f3 * f2 * storyLinesDrawable.bufferingProgress);
                        } else {
                            i5 = 0;
                        }
                        paint2.setAlpha(((int) (85.0f * f3 * f2)) + i5);
                        if (f8 > 0.0f) {
                            int i9 = i8 - i2;
                            rectF.left = Utilities.clamp(AndroidUtilities.lerp(rectF.left, (i9 * i) + AndroidUtilities.m1124dp(5.0f), f8), i - AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f));
                            rectF.right = Utilities.clamp(AndroidUtilities.lerp(rectF.right, ((i9 + 1) * i) - AndroidUtilities.m1124dp(5.0f), f8), i - AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f));
                        }
                        canvas.drawRoundRect(rectF, fLerp2, fLerp2, paint2);
                        f7 = f5;
                    }
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(fM1124dp2, 0.0f, f10, AndroidUtilities.lerp(AndroidUtilities.dpf2(2.0f), AndroidUtilities.dpf2(5.0f), (i2 == i8 ? 1 : 0) * f8));
                    if (f8 > 0.0f) {
                        int i10 = i8 - i2;
                        rectF2.left = Utilities.clamp(AndroidUtilities.lerp(rectF2.left, (i10 * i) + AndroidUtilities.m1124dp(5.0f), f8), i - AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f));
                        rectF2.right = Utilities.clamp(AndroidUtilities.lerp(rectF2.right, ((i10 + 1) * i) - AndroidUtilities.m1124dp(5.0f), f8), i - AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f));
                    }
                    rectF2.right = AndroidUtilities.lerp(rectF2.left, rectF2.right, f7);
                    if (i8 <= i2) {
                        paint3.setAlpha((int) (f3 * 255.0f * f2));
                        paint = paint3;
                    } else {
                        paint2.setAlpha((int) (85 * f3 * f2));
                        paint = paint2;
                    }
                    canvas.drawRoundRect(rectF2, fLerp2, fLerp2, paint);
                }
                f5 = f9;
                f6 = fMin;
            } else {
                f5 = f9;
                f6 = fMin;
            }
            i8++;
            storyLinesDrawable = this;
            i6 = i;
            f9 = f5;
            i7 = i3;
            fMin = f6;
        }
    }
}
