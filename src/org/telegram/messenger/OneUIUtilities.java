package org.telegram.messenger;

import android.os.Build;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public class OneUIUtilities {
    public static final int ONE_UI_4_0 = 40000;
    private static Boolean isOneUI;
    private static int oneUIEncodedVersion;

    public static boolean isOneUI() {
        Boolean bool = isOneUI;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Field declaredField = Build.VERSION.class.getDeclaredField("SEM_PLATFORM_INT");
            declaredField.setAccessible(true);
            int iIntValue = ((Integer) declaredField.get(null)).intValue();
            if (iIntValue < 100000) {
                return false;
            }
            oneUIEncodedVersion = iIntValue - 90000;
            isOneUI = Boolean.TRUE;
        } catch (Exception unused) {
            isOneUI = Boolean.FALSE;
        }
        return isOneUI.booleanValue();
    }

    public static boolean hasBuiltInClipboardToasts() {
        return isOneUI() && getOneUIEncodedVersion() == 40000;
    }

    public static int getOneUIEncodedVersion() {
        if (isOneUI()) {
            return oneUIEncodedVersion;
        }
        return 0;
    }
}
