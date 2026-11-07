package androidx.mediarouter.app;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.R$attr;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.mediarouter.C0854R;

/* JADX INFO: loaded from: classes4.dex */
final class MediaRouterThemeHelper {
    static final int COLOR_DARK_ON_LIGHT_BACKGROUND = -570425344;
    private static final int COLOR_DARK_ON_LIGHT_BACKGROUND_RES_ID = C0854R.color.mr_dynamic_dialog_icon_light;
    static final int COLOR_WHITE_ON_DARK_BACKGROUND = -1;
    private static final float MIN_CONTRAST = 3.0f;

    private MediaRouterThemeHelper() {
    }

    public static Drawable getMuteButtonDrawableIcon(Context context) {
        return getIconByDrawableId(context, C0854R.drawable.mr_cast_mute_button);
    }

    public static Drawable getCheckBoxDrawableIcon(Context context) {
        return getIconByDrawableId(context, C0854R.drawable.mr_cast_checkbox);
    }

    public static Drawable getDefaultDrawableIcon(Context context) {
        return getIconByAttrId(context, C0854R.attr.mediaRouteDefaultIconDrawable);
    }

    public static Drawable getTvDrawableIcon(Context context) {
        return getIconByAttrId(context, C0854R.attr.mediaRouteTvIconDrawable);
    }

    public static Drawable getSpeakerDrawableIcon(Context context) {
        return getIconByAttrId(context, C0854R.attr.mediaRouteSpeakerIconDrawable);
    }

    public static Drawable getSpeakerGroupDrawableIcon(Context context) {
        return getIconByAttrId(context, C0854R.attr.mediaRouteSpeakerGroupIconDrawable);
    }

    private static Drawable getIconByDrawableId(Context context, int i) {
        Drawable drawableWrap = DrawableCompat.wrap(AppCompatResources.getDrawable(context, i));
        if (isLightTheme(context)) {
            DrawableCompat.setTint(drawableWrap, ContextCompat.getColor(context, COLOR_DARK_ON_LIGHT_BACKGROUND_RES_ID));
        }
        return drawableWrap;
    }

    private static Drawable getIconByAttrId(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        Drawable drawableWrap = DrawableCompat.wrap(AppCompatResources.getDrawable(context, typedArrayObtainStyledAttributes.getResourceId(0, 0)));
        if (isLightTheme(context)) {
            DrawableCompat.setTint(drawableWrap, ContextCompat.getColor(context, COLOR_DARK_ON_LIGHT_BACKGROUND_RES_ID));
        }
        typedArrayObtainStyledAttributes.recycle();
        return drawableWrap;
    }

    public static Context createThemedButtonContext(Context context) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, getRouterThemeId(context));
        int themeResource = getThemeResource(contextThemeWrapper, C0854R.attr.mediaRouteTheme);
        return themeResource != 0 ? new ContextThemeWrapper(contextThemeWrapper, themeResource) : contextThemeWrapper;
    }

    public static Context createThemedDialogContext(Context context, int i, boolean z) {
        int i2;
        if (i == 0) {
            if (!z) {
                i2 = R$attr.dialogTheme;
            } else {
                i2 = R$attr.alertDialogTheme;
            }
            i = getThemeResource(context, i2);
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        return getThemeResource(contextThemeWrapper, C0854R.attr.mediaRouteTheme) != 0 ? new ContextThemeWrapper(contextThemeWrapper, getRouterThemeId(contextThemeWrapper)) : contextThemeWrapper;
    }

    public static int createThemedDialogStyle(Context context) {
        int themeResource = getThemeResource(context, C0854R.attr.mediaRouteTheme);
        return themeResource == 0 ? getRouterThemeId(context) : themeResource;
    }

    public static int getThemeResource(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public static float getDisabledAlpha(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true)) {
            return typedValue.getFloat();
        }
        return 0.5f;
    }

    public static int getControllerColor(Context context, int i) {
        if (ColorUtils.calculateContrast(-1, getThemeColor(context, i, R$attr.colorPrimary)) >= 3.0d) {
            return -1;
        }
        return COLOR_DARK_ON_LIGHT_BACKGROUND;
    }

    public static int getButtonTextColor(Context context) {
        int themeColor = getThemeColor(context, 0, R$attr.colorPrimary);
        return ColorUtils.calculateContrast(themeColor, getThemeColor(context, 0, R.attr.colorBackground)) < 3.0d ? getThemeColor(context, 0, R$attr.colorAccent) : themeColor;
    }

    public static TypedArray getStyledAttributes(Context context) {
        return context.obtainStyledAttributes(new int[]{C0854R.attr.mediaRouteDefaultIconDrawable, C0854R.attr.mediaRouteTvIconDrawable, C0854R.attr.mediaRouteSpeakerIconDrawable, C0854R.attr.mediaRouteSpeakerGroupIconDrawable});
    }

    public static void setDialogBackgroundColor(Context context, Dialog dialog) {
        int i;
        View decorView = dialog.getWindow().getDecorView();
        if (isLightTheme(context)) {
            i = C0854R.color.mr_dynamic_dialog_background_light;
        } else {
            i = C0854R.color.mr_dynamic_dialog_background_dark;
        }
        decorView.setBackgroundColor(ContextCompat.getColor(context, i));
    }

    public static void setMediaControlsBackgroundColor(Context context, View view, View view2, boolean z) {
        int themeColor = getThemeColor(context, 0, R$attr.colorPrimary);
        int themeColor2 = getThemeColor(context, 0, R$attr.colorPrimaryDark);
        if (z && getControllerColor(context, 0) == COLOR_DARK_ON_LIGHT_BACKGROUND) {
            themeColor2 = themeColor;
            themeColor = -1;
        }
        view.setBackgroundColor(themeColor);
        view2.setBackgroundColor(themeColor2);
        view.setTag(Integer.valueOf(themeColor));
        view2.setTag(Integer.valueOf(themeColor2));
    }

    public static void setVolumeSliderColor(Context context, MediaRouteVolumeSlider mediaRouteVolumeSlider, View view) {
        int controllerColor = getControllerColor(context, 0);
        if (Color.alpha(controllerColor) != 255) {
            controllerColor = ColorUtils.compositeColors(controllerColor, ((Integer) view.getTag()).intValue());
        }
        mediaRouteVolumeSlider.setColor(controllerColor);
    }

    public static void setVolumeSliderColor(Context context, MediaRouteVolumeSlider mediaRouteVolumeSlider) {
        int color;
        int color2;
        if (isLightTheme(context)) {
            color = ContextCompat.getColor(context, C0854R.color.mr_cast_progressbar_progress_and_thumb_light);
            color2 = ContextCompat.getColor(context, C0854R.color.mr_cast_progressbar_background_light);
        } else {
            color = ContextCompat.getColor(context, C0854R.color.mr_cast_progressbar_progress_and_thumb_dark);
            color2 = ContextCompat.getColor(context, C0854R.color.mr_cast_progressbar_background_dark);
        }
        mediaRouteVolumeSlider.setColor(color, color2);
    }

    public static void setIndeterminateProgressBarColor(Context context, ProgressBar progressBar) {
        int i;
        if (progressBar.isIndeterminate()) {
            if (isLightTheme(context)) {
                i = C0854R.color.mr_cast_progressbar_progress_and_thumb_light;
            } else {
                i = C0854R.color.mr_cast_progressbar_progress_and_thumb_dark;
            }
            progressBar.getIndeterminateDrawable().setColorFilter(ContextCompat.getColor(context, i), PorterDuff.Mode.SRC_IN);
        }
    }

    private static boolean isLightTheme(Context context) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R$attr.isLightTheme, typedValue, true) && typedValue.data != 0;
    }

    private static int getThemeColor(Context context, int i, int i2) {
        if (i != 0) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{i2});
            int color = typedArrayObtainStyledAttributes.getColor(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            if (color != 0) {
                return color;
            }
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i2, typedValue, true);
        if (typedValue.resourceId != 0) {
            return context.getResources().getColor(typedValue.resourceId);
        }
        return typedValue.data;
    }

    private static int getRouterThemeId(Context context) {
        if (isLightTheme(context)) {
            if (getControllerColor(context, 0) == COLOR_DARK_ON_LIGHT_BACKGROUND) {
                return C0854R.style.Theme_MediaRouter_Light;
            }
            return C0854R.style.Theme_MediaRouter_Light_DarkControlPanel;
        }
        if (getControllerColor(context, 0) == COLOR_DARK_ON_LIGHT_BACKGROUND) {
            return C0854R.style.Theme_MediaRouter_LightControlPanel;
        }
        return C0854R.style.Theme_MediaRouter;
    }
}
