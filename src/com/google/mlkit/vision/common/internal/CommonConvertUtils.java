package com.google.mlkit.vision.common.internal;

import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CommonConvertUtils {
    public static int convertToMVRotation(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 90) {
            return 1;
        }
        if (i == 180) {
            return 2;
        }
        if (i == 270) {
            return 3;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Invalid rotation: ", i);
        return 0;
    }
}
