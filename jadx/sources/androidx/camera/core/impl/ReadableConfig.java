package androidx.camera.core.impl;

import androidx.camera.core.impl.Config;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface ReadableConfig extends Config {
    @Override // androidx.camera.core.impl.Config
    boolean containsOption(Config.Option option);

    Config getConfig();

    @Override // androidx.camera.core.impl.Config
    Set listOptions();

    @Override // androidx.camera.core.impl.Config
    Object retrieveOption(Config.Option option);

    @Override // androidx.camera.core.impl.Config
    Object retrieveOption(Config.Option option, Object obj);

    /* JADX INFO: renamed from: androidx.camera.core.impl.ReadableConfig$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}
