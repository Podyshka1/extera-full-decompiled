package com.stripe.android.util;

import com.stripe.android.time.Clock;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DateUtils {
    public static boolean hasYearPassed(int i) {
        return normalizeYear(i) < Clock.getCalendarInstance().get(1);
    }

    public static boolean hasMonthPassed(int i, int i2) {
        if (hasYearPassed(i)) {
            return true;
        }
        Calendar calendarInstance = Clock.getCalendarInstance();
        return normalizeYear(i) == calendarInstance.get(1) && i2 < calendarInstance.get(2) + 1;
    }

    private static int normalizeYear(int i) {
        if (i >= 100 || i < 0) {
            return i;
        }
        return Integer.parseInt(String.format(Locale.US, "%s%02d", String.valueOf(Clock.getCalendarInstance().get(1)).substring(0, r0.length() - 2), Integer.valueOf(i)));
    }
}
