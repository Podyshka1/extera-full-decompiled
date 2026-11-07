package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"LogConditional"})
public abstract class Debug {
    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }
}
