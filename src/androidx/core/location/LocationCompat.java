package androidx.core.location;

import android.location.Location;
import android.os.Build;
import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LocationCompat {
    public static long getElapsedRealtimeMillis(Location location) {
        return location.getElapsedRealtimeNanos() / 1000000;
    }

    public static boolean hasVerticalAccuracy(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasVerticalAccuracy(location);
        }
        return containsExtra(location, "verticalAccuracy");
    }

    public static float getVerticalAccuracyMeters(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getVerticalAccuracyMeters(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat("verticalAccuracy", 0.0f);
    }

    public static boolean hasSpeedAccuracy(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasSpeedAccuracy(location);
        }
        return containsExtra(location, "speedAccuracy");
    }

    public static float getSpeedAccuracyMetersPerSecond(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getSpeedAccuracyMetersPerSecond(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat("speedAccuracy", 0.0f);
    }

    public static boolean hasBearingAccuracy(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasBearingAccuracy(location);
        }
        return containsExtra(location, "bearingAccuracy");
    }

    public static float getBearingAccuracyDegrees(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getBearingAccuracyDegrees(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat("bearingAccuracy", 0.0f);
    }

    public static boolean isMock(Location location) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.isMock(location);
        }
        return location.isFromMockProvider();
    }

    public static class Api26Impl {
        public static boolean hasVerticalAccuracy(Location location) {
            return location.hasVerticalAccuracy();
        }

        public static float getVerticalAccuracyMeters(Location location) {
            return location.getVerticalAccuracyMeters();
        }

        public static boolean hasSpeedAccuracy(Location location) {
            return location.hasSpeedAccuracy();
        }

        public static float getSpeedAccuracyMetersPerSecond(Location location) {
            return location.getSpeedAccuracyMetersPerSecond();
        }

        public static boolean hasBearingAccuracy(Location location) {
            return location.hasBearingAccuracy();
        }

        public static float getBearingAccuracyDegrees(Location location) {
            return location.getBearingAccuracyDegrees();
        }
    }

    private static boolean containsExtra(Location location, String str) {
        Bundle extras = location.getExtras();
        return extras != null && extras.containsKey(str);
    }

    public static class Api31Impl {
        public static boolean isMock(Location location) {
            return location.isMock();
        }
    }
}
