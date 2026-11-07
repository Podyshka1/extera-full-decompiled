package org.telegram.ui.Wallet;

import android.graphics.Path;

/* JADX INFO: loaded from: classes8.dex */
abstract class WalletCardGeometry {
    public static float radiusX(float f) {
        return (f * 0.15f) / 2.0f;
    }

    public static float radiusY(float f) {
        return (f * 0.15f) / 1.212122f;
    }

    public static void setFacePath(Path path, float f, float f2) {
        path.rewind();
        path.addRoundRect(0.0f, 0.0f, f, f2, radiusX(f), radiusY(f2), Path.Direction.CW);
    }
}
