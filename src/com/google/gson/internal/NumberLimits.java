package com.google.gson.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NumberLimits {
    private static void checkNumberStringLength(String str) {
        if (str.length() <= 10000) {
            return;
        }
        throw new NumberFormatException("Number string too large: " + str.substring(0, 30) + "...");
    }

    public static BigDecimal parseBigDecimal(String str) {
        checkNumberStringLength(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
            return bigDecimal;
        }
        throw new NumberFormatException("Number has unsupported scale: " + str);
    }

    public static BigInteger parseBigInteger(String str) {
        checkNumberStringLength(str);
        return new BigInteger(str);
    }
}
