package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import androidx.core.graphics.PathParser;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.C1349R;
import com.google.android.material.resources.MaterialAttributes;

/* JADX INFO: loaded from: classes5.dex */
public class MotionUtils {
    private static final String EASING_TYPE_CUBIC_BEZIER = "cubic-bezier";
    private static final String EASING_TYPE_FORMAT_END = ")";
    private static final String EASING_TYPE_FORMAT_START = "(";
    private static final String EASING_TYPE_PATH = "path";

    private MotionUtils() {
    }

    public static SpringForce resolveThemeSpringForce(Context context, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes;
        TypedValue typedValueResolve = MaterialAttributes.resolve(context, i);
        if (typedValueResolve == null) {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, C1349R.styleable.MaterialSpring, 0, i2);
        } else {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(typedValueResolve.resourceId, C1349R.styleable.MaterialSpring);
        }
        SpringForce springForce = new SpringForce();
        try {
            float f = typedArrayObtainStyledAttributes.getFloat(C1349R.styleable.MaterialSpring_stiffness, Float.MIN_VALUE);
            if (f == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f2 = typedArrayObtainStyledAttributes.getFloat(C1349R.styleable.MaterialSpring_damping, Float.MIN_VALUE);
            if (f2 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            springForce.setStiffness(f);
            springForce.setDampingRatio(f2);
            return springForce;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int resolveThemeDuration(Context context, int i, int i2) {
        return MaterialAttributes.resolveInteger(context, i, i2);
    }

    public static TimeInterpolator resolveThemeInterpolator(Context context, int i, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (isLegacyEasingAttribute(strValueOf)) {
            return getLegacyThemeInterpolator(strValueOf);
        }
        return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
    }

    private static TimeInterpolator getLegacyThemeInterpolator(String str) {
        if (isLegacyEasingType(str, EASING_TYPE_CUBIC_BEZIER)) {
            String[] strArrSplit = getLegacyEasingContent(str, EASING_TYPE_CUBIC_BEZIER).split(",");
            if (strArrSplit.length != 4) {
                throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + strArrSplit.length);
            }
            return new PathInterpolator(getLegacyControlPoint(strArrSplit, 0), getLegacyControlPoint(strArrSplit, 1), getLegacyControlPoint(strArrSplit, 2), getLegacyControlPoint(strArrSplit, 3));
        }
        if (isLegacyEasingType(str, EASING_TYPE_PATH)) {
            return new PathInterpolator(PathParser.createPathFromPathData(getLegacyEasingContent(str, EASING_TYPE_PATH)));
        }
        throw new IllegalArgumentException("Invalid motion easing type: " + str);
    }

    private static boolean isLegacyEasingAttribute(String str) {
        return isLegacyEasingType(str, EASING_TYPE_CUBIC_BEZIER) || isLegacyEasingType(str, EASING_TYPE_PATH);
    }

    private static boolean isLegacyEasingType(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(EASING_TYPE_FORMAT_START);
        return str.startsWith(sb.toString()) && str.endsWith(EASING_TYPE_FORMAT_END);
    }

    private static String getLegacyEasingContent(String str, String str2) {
        return str.substring(str2.length() + 1, str.length() - 1);
    }

    private static float getLegacyControlPoint(String[] strArr, int i) {
        float f = Float.parseFloat(strArr[i]);
        if (f >= 0.0f && f <= 1.0f) {
            return f;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f);
    }
}
