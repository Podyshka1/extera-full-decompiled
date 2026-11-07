package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
abstract class ViewUtilsApi19 {
    private static boolean sTryHiddenTransitionAlpha = true;
    private static Field sViewFlagsField;
    private static boolean sViewFlagsFieldFetched;

    public void clearNonTransitionAlpha(View view) {
    }

    public void saveNonTransitionAlpha(View view) {
    }

    @SuppressLint({"BanUncheckedReflection"})
    public abstract void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4);

    public abstract void transformMatrixToGlobal(View view, Matrix matrix);

    public abstract void transformMatrixToLocal(View view, Matrix matrix);

    @SuppressLint({"NewApi"})
    public void setTransitionAlpha(View view, float f) {
        if (sTryHiddenTransitionAlpha) {
            try {
                Api29Impl.setTransitionAlpha(view, f);
                return;
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        view.setAlpha(f);
    }

    @SuppressLint({"NewApi"})
    public float getTransitionAlpha(View view) {
        if (sTryHiddenTransitionAlpha) {
            try {
                return Api29Impl.getTransitionAlpha(view);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        return view.getAlpha();
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    public void setTransitionVisibility(View view, int i) {
        if (!sViewFlagsFieldFetched) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                sViewFlagsField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            sViewFlagsFieldFetched = true;
        }
        Field field = sViewFlagsField;
        if (field != null) {
            try {
                sViewFlagsField.setInt(view, (field.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public static class Api29Impl {
        public static void setTransitionAlpha(View view, float f) {
            view.setTransitionAlpha(f);
        }

        public static float getTransitionAlpha(View view) {
            return view.getTransitionAlpha();
        }
    }
}
