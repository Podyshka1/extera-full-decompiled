package androidx.car.app;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes3.dex */
public interface SurfaceCallback {
    default void onClick(float f, float f2) {
    }

    default void onFling(float f, float f2) {
    }

    default void onScale(float f, float f2, float f3) {
    }

    default void onScroll(float f, float f2) {
    }

    void onStableAreaChanged(Rect rect);

    void onSurfaceAvailable(SurfaceContainer surfaceContainer);

    void onSurfaceDestroyed(SurfaceContainer surfaceContainer);

    void onVisibleAreaChanged(Rect rect);
}
