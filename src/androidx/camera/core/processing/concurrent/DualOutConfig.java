package androidx.camera.core.processing.concurrent;

import androidx.camera.core.processing.util.OutConfig;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DualOutConfig {
    public abstract OutConfig getPrimaryOutConfig();

    public abstract OutConfig getSecondaryOutConfig();

    /* JADX INFO: renamed from: of */
    public static DualOutConfig m99of(OutConfig outConfig, OutConfig outConfig2) {
        return new AutoValue_DualOutConfig(outConfig, outConfig2);
    }
}
