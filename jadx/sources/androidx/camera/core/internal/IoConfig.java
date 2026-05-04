package androidx.camera.core.internal;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ReadableConfig;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public interface IoConfig extends ReadableConfig {
    public static final Config.Option OPTION_IO_EXECUTOR = Config.Option.create("camerax.core.io.ioExecutor", Executor.class);
}
