package com.google.android.material.resources;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import androidx.camera.core.CameraSelector$$ExternalSyntheticBUOutline0;
import com.google.android.material.C1339R;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialAttributes {
    public static TypedValue resolve(Context context, int i) {
        return resolve(context.getTheme(), i);
    }

    public static TypedValue resolve(Resources.Theme theme, int i) {
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static TypedValue resolveTypedValueOrThrow(View view, int i) {
        return resolveTypedValueOrThrow(view.getContext(), i, view.getClass().getCanonicalName());
    }

    public static TypedValue resolveTypedValueOrThrow(Context context, int i, String str) {
        TypedValue typedValueResolve = resolve(context, i);
        if (typedValueResolve != null) {
            return typedValueResolve;
        }
        CameraSelector$$ExternalSyntheticBUOutline0.m72m("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", new Object[]{str, context.getResources().getResourceName(i)});
        return null;
    }

    public static int resolveOrThrow(Context context, int i, String str) {
        return resolveTypedValueOrThrow(context, i, str).data;
    }

    public static int resolveOrThrow(View view, int i) {
        return resolveTypedValueOrThrow(view, i).data;
    }

    public static boolean resolveBooleanOrThrow(Context context, int i, String str) {
        return resolveOrThrow(context, i, str) != 0;
    }

    public static boolean resolveBoolean(Context context, int i, boolean z) {
        return resolveBoolean(context.getTheme(), i, z);
    }

    public static boolean resolveBoolean(Resources.Theme theme, int i, boolean z) {
        TypedValue typedValueResolve = resolve(theme, i);
        return (typedValueResolve == null || typedValueResolve.type != 18) ? z : typedValueResolve.data != 0;
    }

    public static int resolveInteger(Context context, int i, int i2) {
        return resolveInteger(context.getTheme(), i, i2);
    }

    public static int resolveInteger(Resources.Theme theme, int i, int i2) {
        TypedValue typedValueResolve = resolve(theme, i);
        return (typedValueResolve == null || typedValueResolve.type != 16) ? i2 : typedValueResolve.data;
    }

    public static int resolveMinimumAccessibleTouchTarget(Context context) {
        return resolveDimension(context, C1339R.attr.minTouchTargetSize, C1339R.dimen.mtrl_min_touch_target_size);
    }

    public static int resolveDimension(Context context, int i, int i2) {
        float fResolveDimension = resolveDimension(context.getTheme(), i, Float.NaN);
        return Float.isNaN(fResolveDimension) ? (int) context.getResources().getDimension(i2) : (int) fResolveDimension;
    }

    public static float resolveDimension(Resources.Theme theme, int i, float f) {
        TypedValue typedValueResolve = resolve(theme, i);
        return (typedValueResolve == null || typedValueResolve.type != 5) ? f : typedValueResolve.getDimension(theme.getResources().getDisplayMetrics());
    }
}
