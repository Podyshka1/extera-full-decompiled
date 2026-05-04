package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.material.progressindicator.CircularProgressIndicatorSpec;
import com.google.android.material.progressindicator.DeterminateDrawable;
import com.google.android.material.progressindicator.IndeterminateDrawable;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.MediaActionDrawable;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class RadialProgress2 implements Drawable.Callback {
    private int backgroundStroke;
    private float circleCheckProgress;
    private int circleColor;
    private int circleColorKey;
    private int circleCrossfadeColorKey;
    private float circleCrossfadeColorProgress;
    private Paint circleMiniPaint;
    public Paint circlePaint;
    private int circlePressedColor;
    private int circlePressedColorKey;
    private int circleRadius;
    private boolean drawBackground;
    private boolean drawMiniIcon;
    public int iconColor;
    public int iconColorKey;
    private int iconPressedColor;
    private int iconPressedColorKey;
    public float iconScale;
    private IndeterminateDrawable indeterminateDrawable;
    private int indicatorColor;
    private int indicatorPressedColor;
    private boolean invertColors;
    private boolean isPressed;
    private boolean isPressedMini;
    private int lastMainProgressLevel;
    private int lastMiniProgressLevel;
    private int maxIconSize;
    public MediaActionDrawable mediaActionDrawable;
    private Bitmap miniDrawBitmap;
    private Canvas miniDrawCanvas;
    private float miniIconScale;
    private IndeterminateDrawable miniIndeterminateDrawable;
    private MediaActionDrawable miniMediaActionDrawable;
    private Paint miniProgressBackgroundPaint;
    private DeterminateDrawable miniProgressDrawable;
    private CircularProgressIndicatorSpec miniProgressSpec;
    private boolean needDrawBackground;
    private float overlayImageAlpha;
    public ImageReceiver overlayImageView;
    private Paint overlayPaint;
    private float overrideAlpha;
    public float overrideCircleAlpha;
    private View parent;
    private int progressColor;
    private DeterminateDrawable progressDrawable;
    public RectF progressRect;
    private CircularProgressIndicatorSpec progressSpec;
    private Theme.ResourcesProvider resourcesProvider;
    protected int style;
    private int trackColor;
    private int trackPressedColor;
    private int waveAmplitude;

    private static boolean iconIsCancel(int i) {
        return i == 3 || i == 14 || i == 12 || i == 13;
    }

    public RadialProgress2(View view) {
        this(view, null);
    }

    public RadialProgress2(final View view, Theme.ResourcesProvider resourcesProvider) {
        this.progressRect = new RectF();
        this.progressColor = -1;
        this.overlayPaint = new Paint(1);
        this.circlePaint = new Paint(1);
        this.circleMiniPaint = new Paint(1);
        this.needDrawBackground = true;
        this.invertColors = false;
        this.lastMainProgressLevel = -1;
        this.lastMiniProgressLevel = -1;
        this.indicatorColor = -1;
        this.indicatorPressedColor = -1;
        this.trackColor = -1;
        this.trackPressedColor = -1;
        this.miniIconScale = 1.0f;
        this.circleColorKey = -1;
        this.circleCrossfadeColorKey = -1;
        this.circleCheckProgress = 1.0f;
        this.circlePressedColorKey = -1;
        this.iconColorKey = -1;
        this.iconPressedColorKey = -1;
        this.overrideCircleAlpha = 1.0f;
        this.drawBackground = true;
        this.overrideAlpha = 1.0f;
        this.overlayImageAlpha = 1.0f;
        this.iconScale = 1.0f;
        this.resourcesProvider = resourcesProvider;
        this.miniProgressBackgroundPaint = new Paint(1);
        this.parent = view;
        ImageReceiver imageReceiver = new ImageReceiver(view);
        this.overlayImageView = imageReceiver;
        imageReceiver.setInvalidateAll(true);
        MediaActionDrawable mediaActionDrawable = new MediaActionDrawable();
        this.mediaActionDrawable = mediaActionDrawable;
        Objects.requireNonNull(view);
        mediaActionDrawable.setDelegate(new MediaActionDrawable.MediaActionDrawableDelegate() { // from class: org.telegram.ui.Components.RadialProgress2$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.MediaActionDrawable.MediaActionDrawableDelegate
            public final void invalidate() {
                view.invalidate();
            }
        });
        MediaActionDrawable mediaActionDrawable2 = new MediaActionDrawable();
        this.miniMediaActionDrawable = mediaActionDrawable2;
        mediaActionDrawable2.setDelegate(new MediaActionDrawable.MediaActionDrawableDelegate() { // from class: org.telegram.ui.Components.RadialProgress2$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.MediaActionDrawable.MediaActionDrawableDelegate
            public final void invalidate() {
                view.invalidate();
            }
        });
        this.miniMediaActionDrawable.setMini(true);
        this.miniMediaActionDrawable.setIcon(4, false);
        int iM1124dp = AndroidUtilities.m1124dp(22.0f);
        this.circleRadius = iM1124dp;
        this.overlayImageView.setRoundRadius(iM1124dp);
        this.overlayPaint.setColor(1677721600);
    }

    @Keep
    public void setStyle(int i) {
        if (!ExteraConfig.newLoadingStyle && i != 0) {
            i = 0;
        }
        if (this.style == i) {
            return;
        }
        this.style = i;
        if (i == 0) {
            this.mediaActionDrawable.drawProgressCircle = true;
            this.miniMediaActionDrawable.drawProgressCircle = true;
            this.progressDrawable = null;
            this.indeterminateDrawable = null;
            this.miniProgressDrawable = null;
            this.miniIndeterminateDrawable = null;
            this.progressSpec = null;
            this.miniProgressSpec = null;
            return;
        }
        if (i == 1 || i == 2) {
            this.mediaActionDrawable.drawProgressCircle = false;
            this.miniMediaActionDrawable.drawProgressCircle = false;
            initMdcDrawables(this.parent.getContext());
            int i2 = this.lastMainProgressLevel;
            if (i2 >= 0) {
                this.progressDrawable.setLevel(i2);
            }
            int i3 = this.lastMiniProgressLevel;
            if (i3 >= 0) {
                this.miniProgressDrawable.setLevel(i3);
            }
            setWavy(i == 2);
        }
    }

    @Keep
    public int getStyle() {
        return this.style;
    }

    public boolean isMaterial3Style() {
        int i = this.style;
        return i == 1 || i == 2;
    }

    @Keep
    public void setSpecValues(int i, int i2, int i3, int i4) {
        if (isMaterial3Style()) {
            CircularProgressIndicatorSpec circularProgressIndicatorSpec = this.progressSpec;
            circularProgressIndicatorSpec.indicatorSize = i;
            circularProgressIndicatorSpec.trackThickness = i2;
            circularProgressIndicatorSpec.trackCornerRadius = i3;
            circularProgressIndicatorSpec.useRelativeTrackCornerRadius = true;
            circularProgressIndicatorSpec.trackCornerRadiusFraction = 0.5f;
            circularProgressIndicatorSpec.indicatorTrackGapSize = i4;
        }
    }

    @Keep
    public void setMiniSpecValues(int i, int i2, int i3, int i4) {
        if (isMaterial3Style()) {
            CircularProgressIndicatorSpec circularProgressIndicatorSpec = this.miniProgressSpec;
            circularProgressIndicatorSpec.indicatorSize = i;
            circularProgressIndicatorSpec.trackThickness = i2;
            circularProgressIndicatorSpec.trackCornerRadius = i3;
            circularProgressIndicatorSpec.useRelativeTrackCornerRadius = true;
            circularProgressIndicatorSpec.trackCornerRadiusFraction = 0.5f;
            circularProgressIndicatorSpec.indicatorTrackGapSize = i4;
        }
    }

    private void initMdcDrawables(Context context) {
        this.progressSpec = new CircularProgressIndicatorSpec(context, null);
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = new CircularProgressIndicatorSpec(context, null);
        this.miniProgressSpec = circularProgressIndicatorSpec;
        CircularProgressIndicatorSpec circularProgressIndicatorSpec2 = this.progressSpec;
        circularProgressIndicatorSpec2.hideAnimationBehavior = 1;
        circularProgressIndicatorSpec2.showAnimationBehavior = 2;
        circularProgressIndicatorSpec.hideAnimationBehavior = 1;
        circularProgressIndicatorSpec.showAnimationBehavior = 2;
        setSpecValues(this.circleRadius * 2, AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(4.0f));
        setMiniSpecValues(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f));
        DeterminateDrawable<CircularProgressIndicatorSpec> determinateDrawableCreateCircularDrawable = DeterminateDrawable.createCircularDrawable(context, this.progressSpec);
        this.progressDrawable = determinateDrawableCreateCircularDrawable;
        determinateDrawableCreateCircularDrawable.setCallback(this);
        this.progressDrawable.setVisible(false, false, false);
        IndeterminateDrawable<CircularProgressIndicatorSpec> indeterminateDrawableCreateCircularDrawable = IndeterminateDrawable.createCircularDrawable(context, this.progressSpec);
        this.indeterminateDrawable = indeterminateDrawableCreateCircularDrawable;
        indeterminateDrawableCreateCircularDrawable.setCallback(this);
        this.indeterminateDrawable.setVisible(false, false, false);
        DeterminateDrawable<CircularProgressIndicatorSpec> determinateDrawableCreateCircularDrawable2 = DeterminateDrawable.createCircularDrawable(context, this.miniProgressSpec);
        this.miniProgressDrawable = determinateDrawableCreateCircularDrawable2;
        determinateDrawableCreateCircularDrawable2.setCallback(this);
        this.miniProgressDrawable.setVisible(false, false, false);
        IndeterminateDrawable<CircularProgressIndicatorSpec> indeterminateDrawableCreateCircularDrawable2 = IndeterminateDrawable.createCircularDrawable(context, this.miniProgressSpec);
        this.miniIndeterminateDrawable = indeterminateDrawableCreateCircularDrawable2;
        indeterminateDrawableCreateCircularDrawable2.setCallback(this);
        this.miniIndeterminateDrawable.setVisible(false, false, false);
        updateM3Colors();
    }

    private void updateM3Colors() {
        int themedColor;
        int i;
        int alphaComponent;
        int themedColor2;
        int themedColor3;
        int i2;
        int alphaComponent2;
        if (isMaterial3Style()) {
            if (this.progressSpec != null) {
                if (this.isPressed) {
                    int i3 = this.iconPressedColorKey;
                    themedColor2 = i3 >= 0 ? getThemedColor(i3) : this.iconPressedColor;
                    int i4 = this.circlePressedColorKey;
                    themedColor3 = i4 >= 0 ? getThemedColor(i4) : this.circlePressedColor;
                } else {
                    int i5 = this.iconColorKey;
                    themedColor2 = i5 >= 0 ? getThemedColor(i5) : this.iconColor;
                    int i6 = this.circleColorKey;
                    themedColor3 = i6 >= 0 ? getThemedColor(i6) : this.circleColor;
                }
                if (this.overlayImageView.hasBitmapImage()) {
                    float currentAlpha = this.overlayImageView.getCurrentAlpha();
                    if (currentAlpha >= 1.0f) {
                        themedColor2 = -1;
                    } else {
                        int iRed = Color.red(themedColor2);
                        int iGreen = Color.green(themedColor2);
                        int iBlue = Color.blue(themedColor2);
                        themedColor2 = Color.argb(Color.alpha(themedColor2) + ((int) ((255 - r0) * currentAlpha)), iRed + ((int) ((255 - iRed) * currentAlpha)), iGreen + ((int) ((255 - iGreen) * currentAlpha)), iBlue + ((int) ((255 - iBlue) * currentAlpha)));
                    }
                }
                if ((this.isPressed && (i2 = this.indicatorPressedColor) != -1) || (i2 = this.indicatorColor) != -1) {
                    themedColor2 = i2;
                }
                boolean z = (!this.overlayImageView.hasBitmapImage() || this.overlayImageView.getCurrentAlpha() < 1.0f) && this.drawBackground && (!isMaterial3Style() || this.needDrawBackground);
                if (!this.invertColors || z) {
                    themedColor3 = themedColor2;
                }
                if ((!this.isPressed || (alphaComponent2 = this.trackPressedColor) == -1) && (alphaComponent2 = this.trackColor) == -1) {
                    alphaComponent2 = ColorUtils.setAlphaComponent(themedColor3, getTrackAlpha());
                }
                CircularProgressIndicatorSpec circularProgressIndicatorSpec = this.progressSpec;
                int[] iArr = circularProgressIndicatorSpec.indicatorColors;
                if (iArr.length == 0 || iArr[0] != themedColor3) {
                    circularProgressIndicatorSpec.indicatorColors = new int[]{themedColor3};
                    PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(themedColor3, PorterDuff.Mode.SRC_IN);
                    IndeterminateDrawable indeterminateDrawable = this.indeterminateDrawable;
                    if (indeterminateDrawable != null) {
                        indeterminateDrawable.setColorFilter(porterDuffColorFilter);
                    }
                    DeterminateDrawable determinateDrawable = this.progressDrawable;
                    if (determinateDrawable != null) {
                        determinateDrawable.setColorFilter(porterDuffColorFilter);
                    }
                }
                CircularProgressIndicatorSpec circularProgressIndicatorSpec2 = this.progressSpec;
                if (circularProgressIndicatorSpec2.trackColor != alphaComponent2) {
                    circularProgressIndicatorSpec2.trackColor = alphaComponent2;
                }
            }
            if (this.miniProgressSpec != null) {
                if (this.isPressedMini && this.circleCrossfadeColorKey < 0) {
                    int i7 = this.iconPressedColorKey;
                    themedColor = i7 >= 0 ? getThemedColor(i7) : this.iconPressedColor;
                } else {
                    int i8 = this.iconColorKey;
                    themedColor = i8 >= 0 ? getThemedColor(i8) : this.iconColor;
                }
                boolean z2 = this.isPressedMini;
                if ((z2 && (i = this.indicatorPressedColor) != -1) || (i = this.indicatorColor) != -1) {
                    themedColor = i;
                }
                if ((!z2 || (alphaComponent = this.trackPressedColor) == -1) && (alphaComponent = this.trackColor) == -1) {
                    alphaComponent = ColorUtils.setAlphaComponent(themedColor, getTrackAlpha());
                }
                CircularProgressIndicatorSpec circularProgressIndicatorSpec3 = this.miniProgressSpec;
                int[] iArr2 = circularProgressIndicatorSpec3.indicatorColors;
                if (iArr2.length == 0 || iArr2[0] != themedColor) {
                    circularProgressIndicatorSpec3.indicatorColors = new int[]{themedColor};
                }
                if (circularProgressIndicatorSpec3.trackColor != alphaComponent) {
                    circularProgressIndicatorSpec3.trackColor = alphaComponent;
                }
            }
        }
    }

    private int getTrackAlpha() {
        float f = Theme.isCurrentThemeDark() ? 0.2f : 0.15f;
        if (Theme.isCurrentThemeMonet()) {
            f += 0.125f;
        }
        return (int) (f * 255.0f);
    }

    @Keep
    public void setWavy(boolean z) {
        if (this.style != 2) {
            return;
        }
        if (z) {
            this.miniProgressSpec.indicatorInset = 0;
            this.progressSpec.indicatorInset = 0;
            setWavyValues(AndroidUtilities.m1124dp(15.0f), AndroidUtilities.m1124dp(1.6f), AndroidUtilities.m1124dp(5.0f), 0.05f);
        } else {
            this.progressSpec.indicatorInset = AndroidUtilities.m1124dp(4.0f);
            this.miniProgressSpec.indicatorInset = AndroidUtilities.m1124dp(4.0f);
            setWavyValues(0, 0, 0, 1.0f);
        }
    }

    public void setWavyValues(int i, int i2, int i3, float f) {
        if (this.style != 2) {
            return;
        }
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = this.progressSpec;
        circularProgressIndicatorSpec.wavelengthDeterminate = i;
        circularProgressIndicatorSpec.wavelengthIndeterminate = i;
        this.waveAmplitude = i2;
        circularProgressIndicatorSpec.waveAmplitude = i2;
        circularProgressIndicatorSpec.waveSpeed = i3;
        circularProgressIndicatorSpec.waveAmplitudeRampProgressMin = f;
        invalidateParent();
    }

    public void setNeedDrawBackground(boolean z) {
        this.needDrawBackground = z;
    }

    @Keep
    public boolean isNeedDrawBackground() {
        return this.needDrawBackground;
    }

    public void setInvertColors(boolean z) {
        this.invertColors = z;
    }

    @Keep
    public boolean isInvertColors() {
        return this.invertColors;
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    @Keep
    public void setAsMini() {
        this.mediaActionDrawable.setMini(true);
    }

    @Keep
    public void setCircleRadius(int i) {
        this.circleRadius = i;
        this.overlayImageView.setRoundRadius(i);
        if (isMaterial3Style()) {
            this.progressSpec.indicatorSize = this.circleRadius * 2;
        }
    }

    public int getRadius() {
        return this.circleRadius;
    }

    public void setBackgroundDrawable(Theme.MessageDrawable messageDrawable) {
        this.mediaActionDrawable.setBackgroundDrawable(messageDrawable);
        this.miniMediaActionDrawable.setBackgroundDrawable(messageDrawable);
    }

    @Keep
    public void setBackgroundGradientDrawable(LinearGradient linearGradient) {
        this.mediaActionDrawable.setBackgroundGradientDrawable(linearGradient);
        this.miniMediaActionDrawable.setBackgroundGradientDrawable(linearGradient);
    }

    public void setImageOverlay(TLRPC.PhotoSize photoSize, TLRPC.Document document, Object obj) {
        this.overlayImageView.setImage(ImageLocation.getForDocument(photoSize, document), String.format(Locale.US, "%d_%d", Integer.valueOf(this.circleRadius * 2), Integer.valueOf(this.circleRadius * 2)), null, null, obj, 1);
    }

    public void setImageOverlay(TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2, TLRPC.Document document, Object obj) {
        String str = String.format(Locale.US, "%d_%d", Integer.valueOf(this.circleRadius * 2), Integer.valueOf(this.circleRadius * 2));
        this.overlayImageView.setImage(photoSize == null ? null : ImageLocation.getForDocument(photoSize, document), str, photoSize2 != null ? ImageLocation.getForDocument(photoSize2, document) : null, str, null, 0L, null, obj, 1);
    }

    public void setImageOverlay(String str) {
        this.overlayImageView.setImage(str, str != null ? String.format(Locale.US, "%d_%d", Integer.valueOf(this.circleRadius * 2), Integer.valueOf(this.circleRadius * 2)) : null, null, null, -1L);
    }

    public void onAttachedToWindow() {
        this.overlayImageView.onAttachedToWindow();
    }

    public void onDetachedFromWindow() {
        this.overlayImageView.onDetachedFromWindow();
    }

    public void setColorKeys(int i, int i2, int i3, int i4) {
        this.circleColorKey = i;
        this.circlePressedColorKey = i2;
        this.iconColorKey = i3;
        this.iconPressedColorKey = i4;
    }

    @Keep
    public void setM3Colors(int i, int i2, int i3, int i4) {
        this.indicatorColor = i;
        this.indicatorPressedColor = i2;
        this.trackColor = i3;
        this.trackPressedColor = i4;
    }

    @Keep
    public void setM3Colors(int i, int i2) {
        setM3Colors(i, i, i2, i2);
    }

    @Keep
    public void setColors(int i, int i2, int i3, int i4) {
        this.circleColor = i;
        this.circlePressedColor = i2;
        this.iconColor = i3;
        this.iconPressedColor = i4;
        this.circleColorKey = -1;
        this.circlePressedColorKey = -1;
        this.iconColorKey = -1;
        this.iconPressedColorKey = -1;
    }

    public void setCircleCrossfadeColor(int i, float f, float f2) {
        this.circleCrossfadeColorKey = i;
        this.circleCrossfadeColorProgress = f;
        this.circleCheckProgress = f2;
        this.miniIconScale = 1.0f;
        if (i >= 0) {
            initMiniIcons();
        }
    }

    public void setDrawBackground(boolean z) {
        this.drawBackground = z;
    }

    public void setProgressRect(int i, int i2, int i3, int i4) {
        this.progressRect.set(i, i2, i3, i4);
    }

    public void setProgressRect(float f, float f2, float f3, float f4) {
        this.progressRect.set(f, f2, f3, f4);
    }

    public RectF getProgressRect() {
        return this.progressRect;
    }

    public void setProgressColor(int i) {
        this.progressColor = i;
    }

    public void setMiniProgressBackgroundColor(int i) {
        this.miniProgressBackgroundPaint.setColor(i);
    }

    public void setProgress(float f, boolean z) {
        setProgress(f, z, false);
    }

    public void setProgress(float f, boolean z, boolean z2) {
        if (z2 || !isMaterial3Style() || f != 0.0f || getProgress() <= 0.0f) {
            if (z2 || f != getProgress()) {
                int i = (int) (10000.0f * f);
                if (this.drawMiniIcon) {
                    this.miniMediaActionDrawable.setProgress(f, z);
                    if (isMaterial3Style()) {
                        this.miniProgressDrawable.setLevel(i);
                        updateM3Colors();
                        validateVisibleDrawables(f, getMiniIcon(), this.miniProgressDrawable, this.miniIndeterminateDrawable, z);
                    }
                    this.lastMiniProgressLevel = i;
                    return;
                }
                this.mediaActionDrawable.setProgress(f, z);
                if (isMaterial3Style()) {
                    this.progressDrawable.setLevel(i);
                    updateM3Colors();
                    validateVisibleDrawables(f, getIcon(), this.progressDrawable, this.indeterminateDrawable, z);
                }
                this.lastMainProgressLevel = i;
            }
        }
    }

    private static void validateVisibleDrawables(float f, int i, DeterminateDrawable determinateDrawable, IndeterminateDrawable indeterminateDrawable, boolean z) {
        if (f >= 1.0f || (!iconIsCancel(i) && (f <= 0.04f || i != 2))) {
            if (determinateDrawable.isVisible()) {
                determinateDrawable.setVisible(false, false, z);
            }
            if (indeterminateDrawable.isVisible()) {
                indeterminateDrawable.setVisible(false, false, z);
                return;
            }
            return;
        }
        if (f <= 0.04f) {
            if (!indeterminateDrawable.isVisible()) {
                indeterminateDrawable.setVisible(true, true, true);
            }
            if (determinateDrawable.isVisible()) {
                determinateDrawable.setVisible(false, false, z);
                return;
            }
            return;
        }
        if (indeterminateDrawable.isVisible()) {
            indeterminateDrawable.setVisible(false, false, false);
        }
        if (determinateDrawable.isVisible()) {
            return;
        }
        determinateDrawable.setVisible(true, false, false);
    }

    public float getProgress() {
        return (this.drawMiniIcon ? this.miniMediaActionDrawable : this.mediaActionDrawable).getProgress();
    }

    private void invalidateParent() {
        int iM1124dp = AndroidUtilities.m1124dp(2.0f);
        View view = this.parent;
        RectF rectF = this.progressRect;
        int i = ((int) rectF.left) - iM1124dp;
        int i2 = ((int) rectF.top) - iM1124dp;
        int i3 = iM1124dp * 2;
        view.invalidate(i, i2, ((int) rectF.right) + i3, ((int) rectF.bottom) + i3);
    }

    public int getIcon() {
        return this.mediaActionDrawable.getCurrentIcon();
    }

    public int getMiniIcon() {
        return this.miniMediaActionDrawable.getCurrentIcon();
    }

    @Keep
    public void setIcon(int i, boolean z, boolean z2) {
        int i2;
        boolean z3;
        boolean z4 = i == this.mediaActionDrawable.getCurrentIcon();
        if (z && z4) {
            return;
        }
        if (isMaterial3Style() && this.mediaActionDrawable.getProgress() > 0.999f && iconIsCancel(i)) {
            setProgress(0.0f, false, true);
        }
        if (!isMaterial3Style() || z4) {
            i2 = i;
            z3 = z2;
        } else {
            updateM3Colors();
            i2 = i;
            z3 = z2;
            validateVisibleDrawables(i2, this.mediaActionDrawable.getCurrentIcon(), getProgress(), this.progressDrawable, this.indeterminateDrawable, z3);
        }
        this.mediaActionDrawable.setIcon(i2, z3);
        if (!z3) {
            this.parent.invalidate();
        } else {
            invalidateParent();
        }
    }

    private static void validateVisibleDrawables(int i, int i2, float f, DeterminateDrawable determinateDrawable, IndeterminateDrawable indeterminateDrawable, boolean z) {
        if (iconIsCancel(i) || (f > 0.04f && f < 1.0f && iconIsCancel(i2) && i == 2)) {
            boolean z2 = f <= 0.04f;
            if (determinateDrawable.isVisible() == z2) {
                determinateDrawable.setVisible(!z2, false, false);
            }
            if (indeterminateDrawable.isVisible() != z2) {
                indeterminateDrawable.setVisible(z2, true, z2);
                return;
            }
            return;
        }
        if (determinateDrawable.isVisible()) {
            determinateDrawable.setVisible(false, false, z);
        }
        if (indeterminateDrawable.isVisible()) {
            indeterminateDrawable.setVisible(false, false, z);
        }
    }

    public void setMiniIconScale(float f) {
        this.miniIconScale = f;
    }

    public void setMiniIcon(int i, boolean z, boolean z2) {
        int i2;
        boolean z3;
        if (i == 2 || i == 3 || i == 4) {
            boolean z4 = i == this.miniMediaActionDrawable.getCurrentIcon();
            if (z && z4) {
                return;
            }
            if (this.drawMiniIcon && isMaterial3Style() && !z4) {
                updateM3Colors();
                i2 = i;
                z3 = z2;
                validateVisibleDrawables(i2, this.miniMediaActionDrawable.getCurrentIcon(), getProgress(), this.miniProgressDrawable, this.miniIndeterminateDrawable, z3);
            } else {
                i2 = i;
                z3 = z2;
            }
            this.miniMediaActionDrawable.setIcon(i2, z3);
            boolean z5 = i2 != 4 || this.miniMediaActionDrawable.getTransitionProgress() < 1.0f;
            this.drawMiniIcon = z5;
            if (z5) {
                initMiniIcons();
            }
            if (!z3) {
                this.parent.invalidate();
            } else {
                invalidateParent();
            }
        }
    }

    public void initMiniIcons() {
        if (this.miniDrawBitmap == null) {
            try {
                this.miniDrawBitmap = Bitmap.createBitmap(AndroidUtilities.m1124dp(48.0f), AndroidUtilities.m1124dp(48.0f), Bitmap.Config.ARGB_8888);
                this.miniDrawCanvas = new Canvas(this.miniDrawBitmap);
            } catch (Throwable unused) {
            }
        }
    }

    public void setPressed(boolean z, boolean z2) {
        if (z2) {
            this.isPressedMini = z;
        } else {
            this.isPressed = z;
        }
        updateM3Colors();
        invalidateParent();
    }

    public void setOverrideAlpha(float f) {
        this.overrideAlpha = f;
    }

    public float getOverrideAlpha() {
        return this.overrideAlpha;
    }

    @Keep
    public void draw(Canvas canvas) {
        float transitionProgress;
        float transitionProgress2;
        int themedColor;
        int iCeil;
        int iCeil2;
        float f;
        int i;
        int iSave;
        Canvas canvas2;
        boolean z;
        IndeterminateDrawable indeterminateDrawable;
        boolean z2;
        int i2;
        float f2;
        float fCenterX;
        int i3;
        float fM1124dp;
        int i4;
        float transitionProgress3;
        int iSave2;
        Canvas canvas3;
        boolean z3;
        IndeterminateDrawable indeterminateDrawable2;
        Canvas canvas4;
        Canvas canvas5;
        int iArgb;
        if ((this.mediaActionDrawable.getCurrentIcon() != 4 || this.mediaActionDrawable.getTransitionProgress() < 1.0f) && !this.progressRect.isEmpty()) {
            int currentIcon = this.mediaActionDrawable.getCurrentIcon();
            int previousIcon = this.mediaActionDrawable.getPreviousIcon();
            if (this.backgroundStroke != 0) {
                if (currentIcon == 3) {
                    transitionProgress2 = this.mediaActionDrawable.getTransitionProgress();
                    transitionProgress = 1.0f - transitionProgress2;
                } else {
                    transitionProgress = previousIcon == 3 ? this.mediaActionDrawable.getTransitionProgress() : 1.0f;
                }
            } else if ((currentIcon == 3 || currentIcon == 6 || currentIcon == 10 || currentIcon == 8 || currentIcon == 0) && previousIcon == 4) {
                transitionProgress = this.mediaActionDrawable.getTransitionProgress();
            } else {
                if (currentIcon == 4) {
                    transitionProgress2 = this.mediaActionDrawable.getTransitionProgress();
                    transitionProgress = 1.0f - transitionProgress2;
                }
            }
            if (this.isPressedMini && this.circleCrossfadeColorKey < 0) {
                int i5 = this.iconPressedColorKey;
                if (i5 >= 0) {
                    this.miniMediaActionDrawable.setColor(getThemedColor(i5));
                } else {
                    this.miniMediaActionDrawable.setColor(this.iconPressedColor);
                }
                int i6 = this.circlePressedColorKey;
                if (i6 >= 0) {
                    this.circleMiniPaint.setColor(getThemedColor(i6));
                } else {
                    this.circleMiniPaint.setColor(this.circlePressedColor);
                }
            } else {
                int i7 = this.iconColorKey;
                if (i7 >= 0) {
                    this.miniMediaActionDrawable.setColor(getThemedColor(i7));
                } else {
                    this.miniMediaActionDrawable.setColor(this.iconColor);
                }
                int i8 = this.circleColorKey;
                if (i8 >= 0) {
                    if (this.circleCrossfadeColorKey >= 0) {
                        this.circleMiniPaint.setColor(AndroidUtilities.getOffsetColor(getThemedColor(i8), getThemedColor(this.circleCrossfadeColorKey), this.circleCrossfadeColorProgress, this.circleCheckProgress));
                    } else {
                        this.circleMiniPaint.setColor(getThemedColor(i8));
                    }
                } else {
                    this.circleMiniPaint.setColor(this.circleColor);
                }
            }
            if (this.isPressed) {
                int i9 = this.iconPressedColorKey;
                if (i9 >= 0) {
                    MediaActionDrawable mediaActionDrawable = this.mediaActionDrawable;
                    themedColor = getThemedColor(i9);
                    mediaActionDrawable.setColor(themedColor);
                    this.mediaActionDrawable.setBackColor(getThemedColor(this.circlePressedColorKey));
                } else {
                    MediaActionDrawable mediaActionDrawable2 = this.mediaActionDrawable;
                    int i10 = this.iconPressedColor;
                    mediaActionDrawable2.setColor(i10);
                    this.mediaActionDrawable.setBackColor(this.circlePressedColor);
                    themedColor = i10;
                }
                int i11 = this.circlePressedColorKey;
                if (i11 >= 0) {
                    this.circlePaint.setColor(getThemedColor(i11));
                } else {
                    this.circlePaint.setColor(this.circlePressedColor);
                }
            } else {
                int i12 = this.iconColorKey;
                if (i12 >= 0) {
                    MediaActionDrawable mediaActionDrawable3 = this.mediaActionDrawable;
                    themedColor = getThemedColor(i12);
                    mediaActionDrawable3.setColor(themedColor);
                    this.mediaActionDrawable.setBackColor(getThemedColor(this.circleColorKey));
                } else {
                    MediaActionDrawable mediaActionDrawable4 = this.mediaActionDrawable;
                    int i13 = this.iconColor;
                    mediaActionDrawable4.setColor(i13);
                    this.mediaActionDrawable.setBackColor(this.circleColor);
                    themedColor = i13;
                }
                int i14 = this.circleColorKey;
                if (i14 >= 0) {
                    this.circlePaint.setColor(getThemedColor(i14));
                } else {
                    this.circlePaint.setColor(this.circleColor);
                }
            }
            boolean z4 = false;
            if ((this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) && this.miniDrawCanvas != null) {
                this.miniDrawBitmap.eraseColor(0);
            }
            this.circlePaint.setAlpha((int) (this.circlePaint.getAlpha() * transitionProgress * this.overrideAlpha * this.overrideCircleAlpha));
            this.circleMiniPaint.setAlpha((int) (this.circleMiniPaint.getAlpha() * transitionProgress * this.overrideAlpha));
            if ((this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) && this.miniDrawCanvas != null) {
                iCeil = (int) Math.ceil(this.progressRect.width() / 2.0f);
                iCeil2 = (int) Math.ceil(this.progressRect.height() / 2.0f);
            } else {
                iCeil = (int) this.progressRect.centerX();
                iCeil2 = (int) this.progressRect.centerY();
            }
            if (this.overlayImageView.hasBitmapImage()) {
                float currentAlpha = this.overlayImageView.getCurrentAlpha();
                f = 1.0f;
                this.overlayPaint.setAlpha((int) (100.0f * currentAlpha * transitionProgress * this.overrideAlpha));
                if (currentAlpha >= 1.0f) {
                    iArgb = -1;
                    i = 2;
                } else {
                    int iRed = Color.red(themedColor);
                    int iGreen = Color.green(themedColor);
                    int iBlue = Color.blue(themedColor);
                    i = 2;
                    iArgb = Color.argb(Color.alpha(themedColor) + ((int) ((255 - r7) * currentAlpha)), iRed + ((int) ((255 - iRed) * currentAlpha)), iGreen + ((int) ((255 - iGreen) * currentAlpha)), iBlue + ((int) ((255 - iBlue) * currentAlpha)));
                    z4 = true;
                }
                this.mediaActionDrawable.setColor(iArgb);
                ImageReceiver imageReceiver = this.overlayImageView;
                int i15 = this.circleRadius;
                imageReceiver.setImageCoords(iCeil - i15, iCeil2 - i15, i15 * 2, i15 * 2);
            } else {
                f = 1.0f;
                i = 2;
                z4 = true;
            }
            Canvas canvas6 = this.miniDrawCanvas;
            if (canvas6 == null || this.circleCrossfadeColorKey < 0 || this.circleCheckProgress == f) {
                iSave = Integer.MIN_VALUE;
            } else {
                iSave = canvas6.save();
                float f3 = f - ((f - this.circleCheckProgress) * 0.1f);
                this.miniDrawCanvas.scale(f3, f3, iCeil, iCeil2);
            }
            boolean z5 = z4 && this.drawBackground && (!isMaterial3Style() || this.needDrawBackground);
            if (z5) {
                if ((this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) && (canvas5 = this.miniDrawCanvas) != null) {
                    canvas5.drawCircle(iCeil, iCeil2, this.circleRadius, this.circlePaint);
                } else if (currentIcon != 4 || transitionProgress != 0.0f) {
                    if (this.backgroundStroke != 0) {
                        canvas.drawCircle(iCeil, iCeil2, this.circleRadius - AndroidUtilities.m1124dp(3.5f), this.circlePaint);
                    } else {
                        canvas.drawCircle(iCeil, iCeil2, this.circleRadius, this.circlePaint);
                    }
                }
            }
            if (this.overlayImageView.hasBitmapImage()) {
                this.overlayImageView.setAlpha(this.overrideAlpha * transitionProgress * this.overlayImageAlpha);
                if ((this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) && (canvas4 = this.miniDrawCanvas) != null) {
                    this.overlayImageView.draw(canvas4);
                    this.miniDrawCanvas.drawCircle(iCeil, iCeil2, this.circleRadius, this.overlayPaint);
                } else {
                    this.overlayImageView.draw(canvas);
                    canvas.drawCircle(iCeil, iCeil2, this.circleRadius, this.overlayPaint);
                }
            }
            int i16 = this.circleRadius;
            int i17 = this.maxIconSize;
            if (i17 > 0 && i16 > i17) {
                i16 = i17;
            }
            if (this.iconScale != f) {
                canvas.save();
                float f4 = this.iconScale;
                canvas.scale(f4, f4, iCeil, iCeil2);
            }
            int i18 = iCeil - i16;
            int i19 = iCeil2 - i16;
            int i20 = iCeil + i16;
            int i21 = iCeil2 + i16;
            this.mediaActionDrawable.setBounds(i18, i19, i20, i21);
            this.mediaActionDrawable.setHasOverlayImage(this.overlayImageView.hasBitmapImage());
            if ((!this.drawMiniIcon && this.circleCrossfadeColorKey < 0) || (canvas2 = this.miniDrawCanvas) == null) {
                canvas2 = canvas;
            }
            boolean z6 = ExteraConfig.newLoadingStyle && isMaterial3Style();
            float progress = getProgress();
            int currentIcon2 = this.miniMediaActionDrawable.getCurrentIcon();
            if (z6) {
                if ((this.drawMiniIcon || !iconIsCancel(currentIcon)) && (!this.drawMiniIcon || !iconIsCancel(currentIcon2))) {
                    if (progress > 0.04f && progress < f) {
                        boolean z7 = this.drawMiniIcon;
                        int i22 = i;
                        if ((!z7 || currentIcon2 != i22) && (z7 || currentIcon != i22)) {
                        }
                    }
                    z = false;
                }
                z = true;
            } else {
                z = false;
            }
            boolean z8 = !(this.drawMiniIcon || (indeterminateDrawable2 = this.indeterminateDrawable) == null || !indeterminateDrawable2.isVisible()) || (this.drawMiniIcon && (indeterminateDrawable = this.miniIndeterminateDrawable) != null && indeterminateDrawable.isVisible());
            if (z) {
                f2 = 255.0f;
                if (this.drawMiniIcon) {
                    z2 = z;
                    i2 = 2;
                } else {
                    updateM3Colors();
                    z2 = z;
                    i2 = 2;
                    if (this.style == 2) {
                        this.progressSpec.waveAmplitude = z5 ? 0 : (int) (this.waveAmplitude * getWaveScale(currentIcon, previousIcon));
                    }
                    int i23 = (int) (transitionProgress * 255.0f * this.overrideAlpha);
                    if (progress > 0.04f || z8) {
                        z3 = z8;
                    } else {
                        z3 = true;
                        this.indeterminateDrawable.setVisible(true, true, true);
                    }
                    if (!z3) {
                        this.progressDrawable.setBounds(i18, i19, i20, i21);
                        this.progressDrawable.setAlpha(i23);
                        this.progressDrawable.draw(canvas2);
                    } else {
                        this.indeterminateDrawable.setBounds(i18, i19, i20, i21);
                        this.indeterminateDrawable.setAlpha(i23);
                        this.indeterminateDrawable.draw(canvas2);
                    }
                }
            } else {
                z2 = z;
                i2 = 2;
                f2 = 255.0f;
            }
            if (this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) {
                Canvas canvas7 = this.miniDrawCanvas;
                if (canvas7 != null) {
                    this.mediaActionDrawable.draw(canvas7);
                } else {
                    this.mediaActionDrawable.draw(canvas);
                }
            } else {
                this.mediaActionDrawable.setOverrideAlpha(this.overrideAlpha);
                this.mediaActionDrawable.draw(canvas);
            }
            if (iSave != Integer.MIN_VALUE && (canvas3 = this.miniDrawCanvas) != null) {
                canvas3.restoreToCount(iSave);
            }
            if (this.drawMiniIcon || this.circleCrossfadeColorKey >= 0) {
                if (Math.abs(this.progressRect.width() - AndroidUtilities.m1124dp(44.0f)) < AndroidUtilities.density) {
                    float f5 = 16;
                    fCenterX = this.progressRect.centerX() + AndroidUtilities.m1124dp(f5);
                    fM1124dp = this.progressRect.centerY() + AndroidUtilities.m1124dp(f5);
                    i4 = 20;
                    i3 = 0;
                } else {
                    fCenterX = this.progressRect.centerX() + AndroidUtilities.m1124dp(18.0f);
                    i3 = i2;
                    fM1124dp = AndroidUtilities.m1124dp(18.0f) + this.progressRect.centerY();
                    i4 = 22;
                }
                int i24 = i4 / 2;
                if (this.drawMiniIcon) {
                    transitionProgress3 = this.miniMediaActionDrawable.getCurrentIcon() != 4 ? f : f - this.miniMediaActionDrawable.getTransitionProgress();
                    if (transitionProgress3 == 0.0f) {
                        this.drawMiniIcon = false;
                    }
                } else {
                    transitionProgress3 = f;
                }
                Canvas canvas8 = this.miniDrawCanvas;
                if (canvas8 != null) {
                    float f6 = i4 + 18 + i3;
                    canvas8.drawCircle(AndroidUtilities.m1124dp(f6), AndroidUtilities.m1124dp(f6), AndroidUtilities.m1124dp(i24 + 1) * transitionProgress3 * this.miniIconScale, Theme.checkboxSquare_eraserPaint);
                } else {
                    this.miniProgressBackgroundPaint.setColor(this.progressColor);
                    canvas.drawCircle(fCenterX, fM1124dp, AndroidUtilities.m1124dp(12.0f), this.miniProgressBackgroundPaint);
                }
                if (this.miniDrawCanvas != null) {
                    Bitmap bitmap = this.miniDrawBitmap;
                    RectF rectF = this.progressRect;
                    canvas.drawBitmap(bitmap, (int) rectF.left, (int) rectF.top, (Paint) null);
                }
                if (this.miniIconScale < f) {
                    iSave2 = canvas.save();
                    float f7 = this.miniIconScale;
                    canvas.scale(f7, f7, fCenterX, fM1124dp);
                } else {
                    iSave2 = Integer.MIN_VALUE;
                }
                float f8 = i24;
                canvas.drawCircle(fCenterX, fM1124dp, (AndroidUtilities.m1124dp(f8) * transitionProgress3) + (AndroidUtilities.m1124dp(f) * (f - this.circleCheckProgress)), this.circleMiniPaint);
                if (this.drawMiniIcon) {
                    this.miniMediaActionDrawable.setBounds((int) (fCenterX - (AndroidUtilities.m1124dp(f8) * transitionProgress3)), (int) (fM1124dp - (AndroidUtilities.m1124dp(f8) * transitionProgress3)), (int) ((AndroidUtilities.m1124dp(f8) * transitionProgress3) + fCenterX), (int) ((AndroidUtilities.m1124dp(f8) * transitionProgress3) + fM1124dp));
                    if (z2) {
                        updateM3Colors();
                        int iM1124dp = AndroidUtilities.m1124dp(12.0f);
                        if (progress <= 0.04f) {
                            float f9 = iM1124dp * transitionProgress3;
                            this.miniIndeterminateDrawable.setBounds((int) (fCenterX - f9), (int) (fM1124dp - f9), (int) (fCenterX + f9), (int) (fM1124dp + f9));
                            this.miniIndeterminateDrawable.setAlpha((int) (transitionProgress3 * f2));
                            this.miniIndeterminateDrawable.draw(canvas);
                        } else {
                            float f10 = iM1124dp * transitionProgress3;
                            this.miniProgressDrawable.setBounds((int) (fCenterX - f10), (int) (fM1124dp - f10), (int) (fCenterX + f10), (int) (fM1124dp + f10));
                            this.miniProgressDrawable.setAlpha((int) (transitionProgress3 * f2));
                            this.miniProgressDrawable.draw(canvas);
                        }
                    }
                    this.miniMediaActionDrawable.draw(canvas);
                }
                if (iSave2 != Integer.MIN_VALUE) {
                    canvas.restoreToCount(iSave2);
                }
            }
            if (this.iconScale != f) {
                canvas.restore();
            }
        }
    }

    private float getWaveScale(int i, int i2) {
        float f = iconIsCancel(i) ? 1.0f : 0.0f;
        float f2 = iconIsCancel(i2) ? 1.0f : 0.0f;
        return f2 + ((f - f2) * this.mediaActionDrawable.getTransitionProgress());
    }

    public int getCircleColorKey() {
        return this.circleColorKey;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setMaxIconSize(int i) {
        this.maxIconSize = i;
    }

    public void setOverlayImageAlpha(float f) {
        this.overlayImageAlpha = f;
    }

    public float getTransitionProgress() {
        return (this.drawMiniIcon ? this.miniMediaActionDrawable : this.mediaActionDrawable).getTransitionProgress();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateParent();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        View view = this.parent;
        if (view != null) {
            view.scheduleDrawable(drawable, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        View view = this.parent;
        if (view != null) {
            view.unscheduleDrawable(drawable, runnable);
        }
    }
}
