package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes4.dex */
abstract class ViewGroupUtils {
    private static boolean sTryHiddenSuppressLayout = true;

    public static void suppressLayout(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.suppressLayout(viewGroup, z);
        } else {
            hiddenSuppressLayout(viewGroup, z);
        }
    }

    @SuppressLint({"NewApi"})
    private static void hiddenSuppressLayout(ViewGroup viewGroup, boolean z) {
        if (sTryHiddenSuppressLayout) {
            try {
                Api29Impl.suppressLayout(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    public static class Api29Impl {
        public static void suppressLayout(ViewGroup viewGroup, boolean z) {
            viewGroup.suppressLayout(z);
        }

        public static int getChildDrawingOrder(ViewGroup viewGroup, int i) {
            return viewGroup.getChildDrawingOrder(i);
        }
    }
}
