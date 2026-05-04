package com.google.common.math;

/* JADX INFO: loaded from: classes5.dex */
abstract class MathPreconditions {
    static void checkRoundingUnnecessary(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }
}
