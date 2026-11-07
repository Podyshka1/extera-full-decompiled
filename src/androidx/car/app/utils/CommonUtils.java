package androidx.car.app.utils;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CommonUtils {
    public static boolean isAutomotiveOS(Context context) {
        Objects.requireNonNull(context);
        return context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }
}
