package com.exteragram.messenger.components.supporter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.ui.Components.Premium.StarParticlesView;

/* JADX INFO: loaded from: classes4.dex */
public class SupporterArrowView extends FrameLayout {
    private BadgeIconView badgeView;
    public final int color1;
    public final int color2;
    private boolean iconHidden;
    public final GLIconTextureView iconView;
    private final Theme.ResourcesProvider resourcesProvider;

    public SupporterArrowView(Context context, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setClipChildren(false);
        int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
        int i = 1;
        StarParticlesView starParticlesView = new StarParticlesView(context, devicePerformanceClass != 1 ? devicePerformanceClass != 2 ? 25 : 90 : 50) { // from class: com.exteragram.messenger.components.supporter.SupporterArrowView.1
            @Override // org.telegram.ui.Components.Premium.StarParticlesView
            public void configure() {
                super.configure();
                StarParticlesView.Drawable drawable = this.drawable;
                drawable.useGradient = false;
                drawable.useBlur = false;
                drawable.forceMaxAlpha = true;
                drawable.checkBounds = true;
                drawable.colorKey = Theme.key_featuredStickers_addButton;
                drawable.resourcesProvider = resourcesProvider;
                drawable.init();
            }
        };
        addView(starParticlesView, LayoutHelper.createFrame(-1, 190, 17));
        GLIconTextureView gLIconTextureView = new GLIconTextureView(context, i, 5) { // from class: com.exteragram.messenger.components.supporter.SupporterArrowView.2
            @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView, android.view.TextureView, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                setPaused(false);
            }

            @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView, android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                setPaused(true);
            }
        };
        this.iconView = gLIconTextureView;
        int color = Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(50, 50, Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawColor(ColorUtils.blendARGB(color, Theme.getColor(Theme.key_dialogBackground, resourcesProvider), 0.5f));
        gLIconTextureView.setBackgroundBitmap(bitmapCreateBitmap);
        gLIconTextureView.mRenderer.resourcesProvider = resourcesProvider;
        int iShiftColor = shiftColor(color, -10.0f, 0.75f, 1.15f);
        this.color1 = iShiftColor;
        int iShiftColor2 = shiftColor(color, 18.0f, 0.6f, 1.1f);
        this.color2 = iShiftColor2;
        gLIconTextureView.mRenderer.setColors(iShiftColor, iShiftColor2);
        gLIconTextureView.setStarParticlesView(starParticlesView);
        addView(gLIconTextureView, LayoutHelper.createFrame(160, 160, 17));
    }

    public void setBadge(int i, long j) {
        if (this.badgeView == null) {
            removeView(this.iconView);
            BadgeIconView badgeIconView = new BadgeIconView(getContext());
            this.badgeView = badgeIconView;
            addView(badgeIconView, LayoutHelper.createFrame(130, 130, 17));
        }
        this.badgeView.set(i, j, Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider));
    }

    public void setNumber(final String str) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterArrowView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setNumber$1(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setNumber$1(String str) {
        final Bitmap bitmapCreateMask = SupporterArrowEngraving.createMask(str);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterArrowView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setNumber$0(bitmapCreateMask);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setNumber$0(Bitmap bitmap) {
        this.iconView.mRenderer.setEngraving(bitmap);
    }

    public View getIconView() {
        BadgeIconView badgeIconView = this.badgeView;
        return badgeIconView != null ? badgeIconView : this.iconView;
    }

    public boolean hasBadge() {
        return this.badgeView != null;
    }

    public void setIconHidden(boolean z) {
        if (this.iconHidden != z) {
            this.iconHidden = z;
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        if (view == getIconView() && this.iconHidden) {
            return true;
        }
        return super.drawChild(canvas, view, j);
    }

    private static int shiftColor(int i, float f, float f2, float f3) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[0] = ((fArr[0] + f) + 360.0f) % 360.0f;
        fArr[1] = Math.min(1.0f, fArr[1] * f2);
        fArr[2] = Math.min(1.0f, fArr[2] * f3);
        return Color.HSVToColor(Color.alpha(i), fArr);
    }

    public static class BadgeIconView extends View {
        private PorterDuffColorFilter colorFilter;
        private AnimatedEmojiDrawable drawable;

        public BadgeIconView(Context context) {
            super(context);
        }

        public void set(int i, long j, int i2) {
            if (this.drawable != null && isAttachedToWindow()) {
                this.drawable.removeView(this);
            }
            this.drawable = AnimatedEmojiDrawable.make(i, 24, j);
            this.colorFilter = new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN);
            if (isAttachedToWindow()) {
                this.drawable.addView(this);
            }
            invalidate();
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.drawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this);
            }
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.drawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.drawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.setBounds(0, 0, getWidth(), getHeight());
                boolean zCanOverrideColor = this.drawable.canOverrideColor();
                if (zCanOverrideColor) {
                    this.drawable.setColorFilter(this.colorFilter);
                }
                this.drawable.draw(canvas);
                if (zCanOverrideColor) {
                    this.drawable.setColorFilter(null);
                }
            }
        }
    }
}
