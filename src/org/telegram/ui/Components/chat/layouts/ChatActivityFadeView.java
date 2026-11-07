package org.telegram.ui.Components.chat.layouts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.math.MathUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.BlurredBackgroundWithFadeDrawable;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;

/* JADX INFO: loaded from: classes3.dex */
public class ChatActivityFadeView extends View implements Theme.Colorable {
    private static final Paint scrimFadeDimPaint;
    private static final Paint scrimFadeMaskPaint;
    private static float scrimViewDimBottom;
    private static final Paint scrimViewDimPaint;
    private static float scrimViewDimTop;
    private int colorKey;
    private BlurredBackgroundDrawableViewFactory factory;
    private BlurredBackgroundWithFadeDrawable fadeDrawableBottom;
    private BlurredBackgroundWithFadeDrawable fadeDrawableTop;
    private int fadeZoneBottom;
    private int fadeZoneTop;
    private BlurredBackgroundSourceColor sourceColor;
    private View topFadeAnchor;
    private int topFadeOffset;
    private final ViewTreeObserver.OnPreDrawListener topFadePositionListener;

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    static {
        Paint paint = new Paint();
        scrimFadeMaskPaint = paint;
        Paint paint2 = new Paint();
        scrimFadeDimPaint = paint2;
        Paint paint3 = new Paint();
        scrimViewDimPaint = paint3;
        scrimViewDimTop = Float.NaN;
        scrimViewDimBottom = Float.NaN;
        PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP);
        paint.setXfermode(porterDuffXfermode);
        paint2.setXfermode(porterDuffXfermode);
        paint2.setColor(-16777216);
        paint3.setXfermode(porterDuffXfermode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$0() {
        View view = this.topFadeAnchor;
        int iRound = (view == null || view.getParent() != getParent()) ? 0 : Math.round(this.topFadeAnchor.getY() - getY());
        if (this.topFadeOffset == iRound) {
            return true;
        }
        this.topFadeOffset = iRound;
        checkBounds();
        invalidate();
        return true;
    }

    public ChatActivityFadeView(Context context) {
        super(context);
        this.topFadePositionListener = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.chat.layouts.ChatActivityFadeView$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return this.f$0.lambda$new$0();
            }
        };
    }

    public void setTopFadeAnchor(View view) {
        this.topFadeAnchor = view;
        this.topFadePositionListener.onPreDraw();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnPreDrawListener(this.topFadePositionListener);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        getViewTreeObserver().removeOnPreDrawListener(this.topFadePositionListener);
        super.onDetachedFromWindow();
    }

    public void setupColorKey(int i) {
        this.colorKey = i;
        if (this.sourceColor == null) {
            BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
            this.sourceColor = blurredBackgroundSourceColor;
            blurredBackgroundSourceColor.setColor(Theme.getColor(i));
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(this.sourceColor);
            this.factory = blurredBackgroundDrawableViewFactory;
            setup(blurredBackgroundDrawableViewFactory);
        }
    }

    public void setup(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        setup(blurredBackgroundDrawableViewFactory, null);
    }

    public void setup(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory, BlurredBackgroundColorProvider blurredBackgroundColorProvider) {
        BlurredBackgroundWithFadeDrawable blurredBackgroundWithFadeDrawable = new BlurredBackgroundWithFadeDrawable(blurredBackgroundDrawableViewFactory.create(this).setColorProvider(blurredBackgroundColorProvider));
        this.fadeDrawableTop = blurredBackgroundWithFadeDrawable;
        blurredBackgroundWithFadeDrawable.setFadeHeight(-AndroidUtilities.dp(30.0f), true);
        BlurredBackgroundWithFadeDrawable blurredBackgroundWithFadeDrawable2 = new BlurredBackgroundWithFadeDrawable(blurredBackgroundDrawableViewFactory.create(this).setColorProvider(blurredBackgroundColorProvider));
        this.fadeDrawableBottom = blurredBackgroundWithFadeDrawable2;
        blurredBackgroundWithFadeDrawable2.setFadeHeight(AndroidUtilities.dp(30.0f), true);
    }

    public void setFadeHeightTop(int i, boolean z) {
        this.fadeDrawableTop.setFadeHeight(-i, z);
    }

    public void setFadeHeightTop(int i) {
        this.fadeDrawableTop.setFadeHeight(-i, true);
    }

    public void setFadeHeightBottom(int i) {
        this.fadeDrawableBottom.setFadeHeight(i, true);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        checkBounds();
    }

    public void setFadeZoneTop(int i) {
        if (this.fadeZoneTop != i) {
            this.fadeZoneTop = i;
            checkBounds();
            invalidate();
        }
    }

    public int getFadeZoneTop() {
        return this.topFadeOffset + this.fadeZoneTop;
    }

    public void setFadeZoneBottom(int i) {
        if (this.fadeZoneBottom != i) {
            this.fadeZoneBottom = i;
            checkBounds();
            invalidate();
        }
    }

    public void setFadeTopAlpha(int i) {
        if (this.fadeDrawableTop.getAlpha() != i) {
            this.fadeDrawableTop.setAlpha(i);
            invalidate();
        }
    }

    public void setTopFadeColor(int i) {
        this.fadeDrawableTop.setOverrideFadeColor(i);
        invalidate();
    }

    private void checkBounds() {
        this.fadeDrawableTop.setBounds(0, this.topFadeOffset, getMeasuredWidth(), this.topFadeOffset + this.fadeZoneTop);
        this.fadeDrawableBottom.setBounds(0, getMeasuredHeight() - this.fadeZoneBottom, getMeasuredWidth(), getMeasuredHeight());
    }

    public void setIgnoreFastWay(boolean z) {
        this.fadeDrawableTop.setIgnoreFastWay(z);
        this.fadeDrawableBottom.setIgnoreFastWay(z);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.fadeDrawableTop.draw(canvas);
        this.fadeDrawableBottom.draw(canvas);
    }

    public void drawOverScrim(Canvas canvas, float f, float f2, float f3, float f4, float f5, boolean z) {
        float f6;
        float fMax = Math.max(f2, this.topFadeOffset);
        float fadeZoneTop = getFadeZoneTop();
        float fMin = Math.min(f4, fadeZoneTop);
        if (fMax >= fMin || f >= f3) {
            return;
        }
        int iClamp = (int) (MathUtils.clamp(f5, 0.0f, 1.0f) * 255.0f);
        if (!z || iClamp <= 0) {
            f6 = fMin;
        } else {
            if (scrimViewDimTop != fMax || scrimViewDimBottom != fadeZoneTop) {
                scrimViewDimTop = fMax;
                scrimViewDimBottom = fadeZoneTop;
                scrimViewDimPaint.setShader(new LinearGradient(0.0f, fMax, 0.0f, fadeZoneTop, -16777216, 0, Shader.TileMode.CLAMP));
            }
            Paint paint = scrimViewDimPaint;
            paint.setAlpha(iClamp);
            f6 = fMin;
            canvas.drawRect(f, fMax, f3, f6, paint);
        }
        int iSaveLayer = canvas.saveLayer(f, fMax, f3, f6, scrimFadeMaskPaint);
        this.fadeDrawableTop.draw(canvas);
        if (iClamp > 0) {
            Paint paint2 = scrimFadeDimPaint;
            paint2.setAlpha(iClamp);
            canvas.drawRect(f, fMax, f3, f6, paint2);
        }
        canvas.restoreToCount(iSaveLayer);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        int i;
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = this.sourceColor;
        if (blurredBackgroundSourceColor == null || (i = this.colorKey) == -1) {
            return;
        }
        blurredBackgroundSourceColor.setColor(Theme.getColor(i));
        invalidate();
    }
}
