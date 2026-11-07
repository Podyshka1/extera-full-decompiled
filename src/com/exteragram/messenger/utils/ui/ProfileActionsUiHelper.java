package com.exteragram.messenger.utils.ui;

import android.graphics.Paint;
import android.text.TextUtils;
import androidx.core.graphics.ColorUtils;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.ExteraConfig;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.Text;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ProfileActionsUiHelper {
    private static final int MATERIAL3_BAND_HEIGHT_DP = Math.round(102.0f);

    public static boolean isMaterial3Style() {
        return ExteraConfig.getNewProfileActionsStyle();
    }

    public static int getBandHeight() {
        return AndroidUtilities.dp(isMaterial3Style() ? MATERIAL3_BAND_HEIGHT_DP : 74.0f);
    }

    public static float getSidePadding() {
        return AndroidUtilities.dpf2(12.0f);
    }

    public static float getContainerGap(float f, int i) {
        float fDpf2 = AndroidUtilities.dpf2(12.0f);
        if (i < 2) {
            return fDpf2;
        }
        return Math.max(AndroidUtilities.dpf2(8.0f), Math.min(fDpf2, (f - (AndroidUtilities.dpf2(64.0f) * i)) / (i - 1)));
    }

    public static float getContainerHeight() {
        return AndroidUtilities.dpf2(56.0f);
    }

    public static float getCornerRadius(float f) {
        return Math.max(0.0f, AndroidUtilities.lerp(getContainerHeight() / 2.0f, AndroidUtilities.dpf2(12.0f), f));
    }

    public static int getIconSize() {
        return AndroidUtilities.dp(24.0f);
    }

    public static int getStateLayerColor(int i) {
        return ColorUtils.setAlphaComponent(i, Math.round(25.5f));
    }

    public static float getLabelAlpha(float f) {
        return Utilities.clamp01((f - 0.6f) / 0.39999998f);
    }

    public static Text createLabel(CharSequence charSequence) {
        return new Text(charSequence, 14.0f, AndroidUtilities.bold());
    }

    public static float getLabelTopOffset(Text text) {
        Paint.FontMetricsInt fontMetricsInt = text.getFontMetricsInt();
        return (AndroidUtilities.dpf2(6.0f) + fontMetricsInt.ascent) - fontMetricsInt.top;
    }

    public static float fitLabel(Text text, CharSequence charSequence, float f) {
        text.setText(charSequence);
        float fDpf2 = f - AndroidUtilities.dpf2(8.0f);
        float currentWidth = text.getCurrentWidth();
        if (currentWidth <= fDpf2 || fDpf2 <= 0.0f) {
            return 1.0f;
        }
        float f2 = fDpf2 / currentWidth;
        if (f2 >= 0.8f) {
            return f2;
        }
        text.setText(TextUtils.ellipsize(charSequence, text.paint, fDpf2 / 0.8f, TextUtils.TruncateAt.END));
        return 0.8f;
    }

    public static <K> SpringAnimation createPressSpring(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        return new SpringAnimation(k, floatPropertyCompat).setMinimumVisibleChange(0.001f).setSpring(new SpringForce().setDampingRatio(0.6f).setStiffness(800.0f));
    }
}
