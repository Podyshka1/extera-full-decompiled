package androidx.core.app;

import android.content.res.Configuration;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PictureInPictureModeChangedInfo {
    private final boolean isInPictureInPictureMode;
    private Configuration newConfiguration;

    public PictureInPictureModeChangedInfo(boolean z) {
        this.isInPictureInPictureMode = z;
    }

    public final boolean isInPictureInPictureMode() {
        return this.isInPictureInPictureMode;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PictureInPictureModeChangedInfo(boolean z, Configuration newConfig) {
        this(z);
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        this.newConfiguration = newConfig;
    }
}
