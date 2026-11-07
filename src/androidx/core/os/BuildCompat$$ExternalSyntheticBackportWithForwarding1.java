package androidx.core.os;

import android.os.Build;
import com.android.dx.AppDataDirGuesser;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class BuildCompat$$ExternalSyntheticBackportWithForwarding1 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ int m101m() {
        int i = Build.VERSION.SDK_INT;
        return i < 36 ? i * AppDataDirGuesser.PER_USER_RANGE : Build.VERSION.SDK_INT_FULL;
    }
}
