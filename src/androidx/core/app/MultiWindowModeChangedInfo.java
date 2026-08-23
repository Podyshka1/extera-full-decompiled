package androidx.core.app;

import android.content.res.Configuration;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MultiWindowModeChangedInfo {
    private final boolean isInMultiWindowMode;
    private Configuration newConfiguration;

    public MultiWindowModeChangedInfo(boolean z) {
        this.isInMultiWindowMode = z;
    }

    public final boolean isInMultiWindowMode() {
        return this.isInMultiWindowMode;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiWindowModeChangedInfo(boolean z, Configuration newConfig) {
        this(z);
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        this.newConfiguration = newConfig;
    }
}
