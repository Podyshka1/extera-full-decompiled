package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.media.ImageReaderImageSources;
import androidx.camera.camera2.pipe.media.ImageSources;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeModule_Companion_ConfigureImageSourcesFactory implements Provider {
    public static ImageSources configureImageSources(ImageReaderImageSources imageReaderImageSources, CameraPipe.Config config) {
        return (ImageSources) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.configureImageSources(imageReaderImageSources, config));
    }
}
