package androidx.transition;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
abstract class ViewUtilsApi21 extends ViewUtilsApi19 {
    private static boolean sTryHiddenTransformMatrixToGlobal = true;
    private static boolean sTryHiddenTransformMatrixToLocal = true;

    ViewUtilsApi21() {
    }

    @Override // androidx.transition.ViewUtilsApi19
    public void transformMatrixToGlobal(View view, Matrix matrix) {
        if (sTryHiddenTransformMatrixToGlobal) {
            try {
                Api29Impl.transformMatrixToGlobal(view, matrix);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransformMatrixToGlobal = false;
            }
        }
    }

    @Override // androidx.transition.ViewUtilsApi19
    public void transformMatrixToLocal(View view, Matrix matrix) {
        if (sTryHiddenTransformMatrixToLocal) {
            try {
                Api29Impl.transformMatrixToLocal(view, matrix);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransformMatrixToLocal = false;
            }
        }
    }

    static class Api29Impl {
        static void transformMatrixToGlobal(View view, Matrix matrix) {
            view.transformMatrixToGlobal(matrix);
        }

        static void transformMatrixToLocal(View view, Matrix matrix) {
            view.transformMatrixToLocal(matrix);
        }

        static void setAnimationMatrix(View view, Matrix matrix) {
            view.setAnimationMatrix(matrix);
        }
    }
}
