package com.google.android.material.color;

import android.content.Context;
import android.os.Build;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface ColorResourcesOverride {
    boolean applyIfPossible(Context context, Map<Integer, Integer> map);

    Context wrapContextIfPossible(Context context, Map<Integer, Integer> map);

    /* JADX INFO: renamed from: com.google.android.material.color.ColorResourcesOverride$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static ColorResourcesOverride getInstance() {
            int i = Build.VERSION.SDK_INT;
            if (30 <= i && i <= 33) {
                return ResourcesLoaderColorResourcesOverride.getInstance();
            }
            if (i >= 34) {
                return ResourcesLoaderColorResourcesOverride.getInstance();
            }
            return null;
        }
    }
}
