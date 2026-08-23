package androidx.core.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;

/* JADX INFO: loaded from: classes3.dex */
public final class DisplayManagerCompat {
    private final Context mContext;

    private DisplayManagerCompat(Context context) {
        this.mContext = context;
    }

    public static DisplayManagerCompat getInstance(Context context) {
        return new DisplayManagerCompat(context);
    }

    public Display getDisplay(int i) {
        return ((DisplayManager) this.mContext.getSystemService("display")).getDisplay(i);
    }
}
