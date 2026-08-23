package androidx.camera.camera2.pipe.media;

import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ImageReaderImageSources implements ImageSources {
    private final Threads threads;

    public ImageReaderImageSources(Threads threads, CameraPipe.Config cameraPipeConfig) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(cameraPipeConfig, "cameraPipeConfig");
        this.threads = threads;
        cameraPipeConfig.getPlatformApiCompat();
    }
}
