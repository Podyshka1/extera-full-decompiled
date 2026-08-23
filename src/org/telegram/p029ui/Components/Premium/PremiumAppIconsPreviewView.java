package org.telegram.p029ui.Components.Premium;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.p025ws.WebSocketProtocol;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.AppIconsSelectorCell;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.StarParticlesView;
import org.telegram.p029ui.LauncherIconController;

/* JADX INFO: loaded from: classes7.dex */
public class PremiumAppIconsPreviewView extends FrameLayout implements PagerHeaderView {
    private AdaptiveIconImageView bottomLeftIcon;
    private AdaptiveIconImageView bottomRightIcon;
    private List icons;
    boolean isEmpty;
    private final Theme.ResourcesProvider resourcesProvider;
    private AdaptiveIconImageView topIcon;

    public PremiumAppIconsPreviewView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.icons = new ArrayList();
        this.resourcesProvider = resourcesProvider;
        for (LauncherIconController.LauncherIcon launcherIcon : LauncherIconController.LauncherIcon.values()) {
            this.icons.add(launcherIcon);
            if (this.icons.size() == 3) {
                break;
            }
        }
        if (this.icons.size() < 3) {
            FileLog.m1136e(new IllegalArgumentException("There should be at least 3 premium icons!"));
            this.isEmpty = true;
        } else {
            this.topIcon = newIconView(context, 0);
            this.bottomLeftIcon = newIconView(context, 1);
            this.bottomRightIcon = newIconView(context, 2);
            setClipChildren(false);
        }
    }

    private AdaptiveIconImageView newIconView(Context context, int i) {
        LauncherIconController.LauncherIcon launcherIcon = (LauncherIconController.LauncherIcon) this.icons.get(i);
        AdaptiveIconImageView adaptiveIconImageView = new AdaptiveIconImageView(context, i);
        adaptiveIconImageView.setLayoutParams(LayoutHelper.createFrame(-2, -2.0f, 17, 0.0f, 52.0f, 0.0f, 0.0f));
        adaptiveIconImageView.setForeground(launcherIcon.foreground);
        adaptiveIconImageView.setBackgroundResource(launcherIcon.background);
        adaptiveIconImageView.setPadding(AndroidUtilities.m1124dp(8.0f));
        adaptiveIconImageView.setBackgroundOuterPadding(AndroidUtilities.m1124dp(32.0f));
        addView(adaptiveIconImageView);
        return adaptiveIconImageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.isEmpty) {
            return;
        }
        int iMin = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        int iM1124dp = AndroidUtilities.m1124dp(76.0f);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.topIcon.getLayoutParams();
        layoutParams.height = iM1124dp;
        layoutParams.width = iM1124dp;
        float f = iM1124dp;
        layoutParams.bottomMargin = (int) ((iMin * 0.1f) + f);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.bottomLeftIcon.getLayoutParams();
        layoutParams2.height = iM1124dp;
        layoutParams2.width = iM1124dp;
        int i3 = (int) (f * 0.95f);
        layoutParams2.rightMargin = i3;
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.bottomRightIcon.getLayoutParams();
        layoutParams3.height = iM1124dp;
        layoutParams3.width = iM1124dp;
        layoutParams3.leftMargin = i3;
    }

    @Override // org.telegram.p029ui.Components.Premium.PagerHeaderView
    public void setOffset(float f) {
        if (this.isEmpty) {
            return;
        }
        float fAbs = Math.abs(f / getMeasuredWidth());
        float interpolation = CubicBezierInterpolator.EASE_IN.getInterpolation(fAbs);
        this.bottomRightIcon.setTranslationX(((getRight() - this.bottomRightIcon.getRight()) + (this.bottomRightIcon.getWidth() * 1.5f) + AndroidUtilities.m1124dp(32.0f)) * interpolation);
        this.bottomRightIcon.setTranslationY(AndroidUtilities.m1124dp(16.0f) * interpolation);
        float fClamp = Utilities.clamp(AndroidUtilities.lerp(1.0f, 1.5f, interpolation), 1.0f, 0.0f);
        this.bottomRightIcon.setScaleX(fClamp);
        this.bottomRightIcon.setScaleY(fClamp);
        this.topIcon.setTranslationY((((getTop() - this.topIcon.getTop()) - (this.topIcon.getHeight() * 1.8f)) - AndroidUtilities.m1124dp(32.0f)) * fAbs);
        this.topIcon.setTranslationX(AndroidUtilities.m1124dp(16.0f) * fAbs);
        float fClamp2 = Utilities.clamp(AndroidUtilities.lerp(1.0f, 1.8f, fAbs), 1.0f, 0.0f);
        this.topIcon.setScaleX(fClamp2);
        this.topIcon.setScaleY(fClamp2);
        float interpolation2 = CubicBezierInterpolator.EASE_OUT.getInterpolation(fAbs);
        this.bottomLeftIcon.setTranslationX((((getLeft() - this.bottomLeftIcon.getLeft()) - (this.bottomLeftIcon.getWidth() * 2.5f)) + AndroidUtilities.m1124dp(32.0f)) * interpolation2);
        this.bottomLeftIcon.setTranslationY(interpolation2 * ((getBottom() - this.bottomLeftIcon.getBottom()) + (this.bottomLeftIcon.getHeight() * 2.5f) + AndroidUtilities.m1124dp(32.0f)));
        float fClamp3 = Utilities.clamp(AndroidUtilities.lerp(1.0f, 2.5f, fAbs), 1.0f, 0.0f);
        this.bottomLeftIcon.setScaleX(fClamp3);
        this.bottomLeftIcon.setScaleY(fClamp3);
        float f2 = fAbs < 0.4f ? fAbs / 0.4f : 1.0f;
        this.bottomRightIcon.particlesScale = f2;
        this.topIcon.particlesScale = f2;
        this.bottomLeftIcon.particlesScale = f2;
    }

    private class AdaptiveIconImageView extends AppIconsSelectorCell.AdaptiveIconImageView {
        StarParticlesView.Drawable drawable;
        Paint paint;
        float particlesScale;

        public AdaptiveIconImageView(Context context, int i) {
            super(context);
            this.drawable = new StarParticlesView.Drawable(20);
            this.paint = new Paint(1);
            StarParticlesView.Drawable drawable = this.drawable;
            drawable.size1 = 12;
            drawable.size2 = 8;
            drawable.size3 = 6;
            if (i == 1) {
                drawable.type = WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY;
            }
            if (i == 0) {
                drawable.type = 1002;
            }
            drawable.resourcesProvider = PremiumAppIconsPreviewView.this.resourcesProvider;
            StarParticlesView.Drawable drawable2 = this.drawable;
            drawable2.colorKey = Theme.key_premiumStartSmallStarsColor2;
            drawable2.init();
            this.paint.setColor(-1);
        }

        @Override // org.telegram.ui.Cells.AppIconsSelectorCell.AdaptiveIconImageView, android.view.View
        public void draw(Canvas canvas) {
            int iM1124dp = AndroidUtilities.m1124dp(10.0f);
            this.drawable.excludeRect.set(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(5.0f), getMeasuredHeight() - AndroidUtilities.m1124dp(5.0f));
            float f = -iM1124dp;
            this.drawable.rect.set(f, f, getWidth() + iM1124dp, getHeight() + iM1124dp);
            canvas.save();
            float f2 = this.particlesScale;
            canvas.scale(1.0f - f2, 1.0f - f2, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
            this.drawable.onDraw(canvas);
            canvas.restore();
            invalidate();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(0.0f, 0.0f, getWidth(), getHeight());
            canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), this.paint);
            super.draw(canvas);
        }
    }
}
