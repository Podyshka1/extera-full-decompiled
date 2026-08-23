package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import androidx.core.R$id;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ViewGroupCompat {
    private static final WindowInsets CONSUMED = WindowInsetsCompat.CONSUMED.toWindowInsets();
    static boolean sCompatInsetsDispatchInstalled = false;

    public static boolean isTransitionGroup(ViewGroup viewGroup) {
        return Api21Impl.isTransitionGroup(viewGroup);
    }

    static WindowInsets dispatchApplyWindowInsets(View view, WindowInsets windowInsets) {
        final View.OnApplyWindowInsetsListener onApplyWindowInsetsListener;
        Object tag = view.getTag(R$id.tag_on_apply_window_listener);
        Object tag2 = view.getTag(R$id.tag_window_insets_animation_callback);
        if (tag instanceof View.OnApplyWindowInsetsListener) {
            onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) tag;
        } else {
            onApplyWindowInsetsListener = tag2 instanceof View.OnApplyWindowInsetsListener ? (View.OnApplyWindowInsetsListener) tag2 : null;
        }
        final WindowInsets[] windowInsetsArr = {CONSUMED};
        view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.ViewGroupCompat$$ExternalSyntheticLambda0
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets2) {
                return ViewGroupCompat.m2054$r8$lambda$Lnvt8czxDhWTdEYEcOIJD_YUAE(windowInsetsArr, onApplyWindowInsetsListener, view2, windowInsets2);
            }
        });
        view.dispatchApplyWindowInsets(windowInsets);
        Object tag3 = view.getTag(R$id.tag_compat_insets_dispatch);
        if (tag3 instanceof View.OnApplyWindowInsetsListener) {
            onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) tag3;
        }
        view.setOnApplyWindowInsetsListener(onApplyWindowInsetsListener);
        WindowInsets windowInsets2 = windowInsetsArr[0];
        if (windowInsets2 != null && !windowInsets2.isConsumed() && (view instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                dispatchApplyWindowInsets(viewGroup.getChildAt(i), windowInsetsArr[0]);
            }
        }
        WindowInsets windowInsets3 = windowInsetsArr[0];
        return windowInsets3 != null ? windowInsets3 : CONSUMED;
    }

    /* JADX INFO: renamed from: $r8$lambda$Lnvt8czxDhWTdEYEcOIJD_YU-AE, reason: not valid java name */
    public static /* synthetic */ WindowInsets m2054$r8$lambda$Lnvt8czxDhWTdEYEcOIJD_YUAE(WindowInsets[] windowInsetsArr, View.OnApplyWindowInsetsListener onApplyWindowInsetsListener, View view, WindowInsets windowInsets) {
        WindowInsets windowInsetsOnApplyWindowInsets;
        if (onApplyWindowInsetsListener != null) {
            windowInsetsOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        } else {
            windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        }
        windowInsetsArr[0] = windowInsetsOnApplyWindowInsets;
        return CONSUMED;
    }

    static class Api21Impl {
        static boolean isTransitionGroup(ViewGroup viewGroup) {
            return viewGroup.isTransitionGroup();
        }
    }
}
