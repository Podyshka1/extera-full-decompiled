package androidx.transition;

import android.os.Build;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes4.dex */
abstract class ViewGroupUtils {
    private static boolean sTryHiddenSuppressLayout = true;

    static void suppressLayout(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.suppressLayout(viewGroup, z);
        } else {
            hiddenSuppressLayout(viewGroup, z);
        }
    }

    private static void hiddenSuppressLayout(ViewGroup viewGroup, boolean z) {
        if (sTryHiddenSuppressLayout) {
            try {
                Api29Impl.suppressLayout(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    static class Api29Impl {
        static void suppressLayout(ViewGroup viewGroup, boolean z) {
            viewGroup.suppressLayout(z);
        }

        static int getChildDrawingOrder(ViewGroup viewGroup, int i) {
            return viewGroup.getChildDrawingOrder(i);
        }
    }
}
