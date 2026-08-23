package org.telegram.p029ui.Components.blur3.capture;

import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public interface IBlur3Hash {
    void add(long j);

    void add(View view);

    void add(boolean z);

    void add(float[] fArr);

    void addF(float f);

    void unsupported();

    /* JADX INFO: renamed from: org.telegram.ui.Components.blur3.capture.IBlur3Hash$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$add(IBlur3Hash iBlur3Hash, View view) {
            if (Build.VERSION.SDK_INT >= 29) {
                iBlur3Hash.add(view.getUniqueDrawingId());
            } else {
                iBlur3Hash.unsupported();
            }
        }

        public static void $default$add(IBlur3Hash iBlur3Hash, float[] fArr) {
            for (float f : fArr) {
                iBlur3Hash.addF(f);
            }
        }
    }
}
