package com.exteragram.messenger.utils.ui;

import android.content.Context;
import android.content.res.ColorStateList;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.math.MathUtils;
import com.google.android.material.C1451R;
import com.google.android.material.slider.Slider;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MaterialSliderUiHelper {
    public static Slider create(Context context) {
        Slider slider = new Slider(new ContextThemeWrapper(context, C1451R.style.Theme_Material3_DayNight));
        slider.setTrackHeight(AndroidUtilities.dp(8.0f));
        slider.setThumbHeight(AndroidUtilities.dp(24.0f));
        slider.setThumbWidth(AndroidUtilities.dp(3.0f));
        slider.setTrackStopIndicatorSize(0);
        slider.setHaloRadius(0);
        slider.setLabelBehavior(2);
        return slider;
    }

    public static void applyContinuousStyle(Slider slider) {
        if (slider.getTickVisibilityMode() != 2) {
            slider.setTickVisibilityMode(2);
        }
        if (slider.getContinuousModeTickCount() != 0) {
            slider.setContinuousModeTickCount(0);
        }
    }

    public static void applyDiscreteStyle(Slider slider, int i) {
        if (slider.getTickVisibilityMode() != 0) {
            slider.setTickVisibilityMode(0);
        }
        if (slider.getTickActiveRadius() != AndroidUtilities.dp(2.0f)) {
            slider.setTickActiveRadius(AndroidUtilities.dp(2.0f));
        }
        if (slider.getTickInactiveRadius() != AndroidUtilities.dp(2.0f)) {
            slider.setTickInactiveRadius(AndroidUtilities.dp(2.0f));
        }
        if (slider.getContinuousModeTickCount() != i) {
            slider.setContinuousModeTickCount(i);
        }
    }

    public static void setValue(Slider slider, float f) {
        float fClamp = MathUtils.clamp(f, slider.getValueFrom(), slider.getValueTo());
        if (Math.abs(slider.getValue() - fClamp) > 1.0E-4f) {
            slider.setValue(fClamp);
        }
    }

    public static void applyColors(Slider slider, int i, int i2) {
        if (!hasColor(slider.getTrackActiveTintList(), i)) {
            slider.setTrackActiveTintList(ColorStateList.valueOf(i));
        }
        if (!hasColor(slider.getThumbTintList(), i)) {
            slider.setThumbTintList(ColorStateList.valueOf(i));
        }
        if (hasColor(slider.getTrackInactiveTintList(), i2)) {
            return;
        }
        slider.setTrackInactiveTintList(ColorStateList.valueOf(i2));
    }

    public static void applyDiscreteColors(Slider slider, int i, int i2, int i3) {
        applyColors(slider, i, i2);
        if (!hasColor(slider.getTickActiveTintList(), i3)) {
            slider.setTickActiveTintList(ColorStateList.valueOf(i3));
        }
        if (hasColor(slider.getTickInactiveTintList(), i3)) {
            return;
        }
        slider.setTickInactiveTintList(ColorStateList.valueOf(i3));
    }

    private static boolean hasColor(ColorStateList colorStateList, int i) {
        return colorStateList != null && colorStateList.getDefaultColor() == i;
    }
}
