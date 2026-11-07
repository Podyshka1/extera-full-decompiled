package androidx.camera.core.impl.utils;

import androidx.camera.core.Logger;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraOrientationUtil {
    public static int getRelativeImageRotation(int i, int i2, boolean z) {
        int i3;
        if (z) {
            i3 = ((i2 - i) + 360) % 360;
        } else {
            i3 = (i2 + i) % 360;
        }
        if (Logger.isVerboseEnabled("CameraOrientationUtil")) {
            Logger.m74d("CameraOrientationUtil", String.format("getRelativeImageRotation: destRotationDegrees=%s, sourceRotationDegrees=%s, isOppositeFacing=%s, result=%s", Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z), Integer.valueOf(i3)));
        }
        return i3;
    }

    public static int surfaceRotationToDegrees(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 90;
        }
        if (i == 2) {
            return 180;
        }
        if (i == 3) {
            return 270;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m860m("Unsupported surface rotation: ", i);
        return 0;
    }
}
