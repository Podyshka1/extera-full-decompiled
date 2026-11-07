package org.chromium.net.telemetry;

import com.google.android.gms.cast.MediaError;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SizeBuckets {
    private static boolean isInClosedOpenRange(double d, int i, int i2) {
        return d >= ((double) i) && d < ((double) i2);
    }

    public static int calcRequestHeadersSizeBucket(long j) {
        checkSizeIsValid(j, "Request header size is negative");
        double d = j / 1024.0d;
        if (isInClosedOpenRange(d, 0, 1)) {
            return 1;
        }
        if (isInClosedOpenRange(d, 1, 10)) {
            return 2;
        }
        if (isInClosedOpenRange(d, 10, 25)) {
            return 3;
        }
        if (isInClosedOpenRange(d, 25, 50)) {
            return 4;
        }
        return isInClosedOpenRange(d, 50, 100) ? 5 : 6;
    }

    public static int calcResponseHeadersSizeBucket(long j) {
        checkSizeIsValid(j, "Response header size is negative");
        double d = j / 1024.0d;
        if (isInClosedOpenRange(d, 0, 1)) {
            return 1;
        }
        if (isInClosedOpenRange(d, 1, 10)) {
            return 2;
        }
        if (isInClosedOpenRange(d, 10, 25)) {
            return 3;
        }
        if (isInClosedOpenRange(d, 25, 50)) {
            return 4;
        }
        return isInClosedOpenRange(d, 50, 100) ? 5 : 6;
    }

    public static int calcRequestBodySizeBucket(long j) {
        checkSizeIsValid(j, "Request body size is negative");
        double d = j / 1024.0d;
        if (d == 0.0d) {
            return 1;
        }
        if (d > 0.0d && d < 10.0d) {
            return 2;
        }
        if (isInClosedOpenRange(d, 10, 50)) {
            return 3;
        }
        if (isInClosedOpenRange(d, 50, 200)) {
            return 4;
        }
        if (isInClosedOpenRange(d, 200, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN)) {
            return 5;
        }
        if (isInClosedOpenRange(d, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, 1000)) {
            return 6;
        }
        return isInClosedOpenRange(d, 1000, 5000) ? 7 : 8;
    }

    public static int calcResponseBodySizeBucket(long j) {
        checkSizeIsValid(j, "Response body size is negative");
        double d = j / 1024.0d;
        if (d == 0.0d) {
            return 1;
        }
        if (d > 0.0d && d < 10.0d) {
            return 2;
        }
        if (isInClosedOpenRange(d, 10, 50)) {
            return 3;
        }
        if (isInClosedOpenRange(d, 50, 200)) {
            return 4;
        }
        if (isInClosedOpenRange(d, 200, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN)) {
            return 5;
        }
        if (isInClosedOpenRange(d, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, 1000)) {
            return 6;
        }
        return isInClosedOpenRange(d, 1000, 5000) ? 7 : 8;
    }

    private static void checkSizeIsValid(long j, String str) {
        if (j >= 0) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m(str);
    }
}
