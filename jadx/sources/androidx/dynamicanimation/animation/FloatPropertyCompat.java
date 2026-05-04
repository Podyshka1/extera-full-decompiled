package androidx.dynamicanimation.animation;

import android.util.FloatProperty;

/* JADX INFO: loaded from: classes.dex */
public abstract class FloatPropertyCompat {
    final String mPropertyName;

    public abstract float getValue(Object obj);

    public abstract void setValue(Object obj, float f);

    public FloatPropertyCompat(String str) {
        this.mPropertyName = str;
    }

    public static <T> FloatPropertyCompat createFloatPropertyCompat(final FloatProperty floatProperty) {
        return new FloatPropertyCompat(floatProperty.getName()) { // from class: androidx.dynamicanimation.animation.FloatPropertyCompat.1
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public float getValue(Object obj) {
                return ((Float) floatProperty.get(obj)).floatValue();
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public void setValue(Object obj, float f) {
                floatProperty.setValue(obj, f);
            }
        };
    }
}
