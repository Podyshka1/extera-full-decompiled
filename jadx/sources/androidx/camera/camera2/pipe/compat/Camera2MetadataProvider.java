package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.Set;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public interface Camera2MetadataProvider {
    /* JADX INFO: renamed from: awaitCameraExtensionMetadata-0r8Bogc */
    CameraExtensionMetadata mo1840awaitCameraExtensionMetadata0r8Bogc(String str, int i);

    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ */
    CameraMetadata mo1841awaitCameraMetadataEfqyGwQ(String str);

    /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc */
    Object mo1842getCameraMetadata0r8Bogc(String str, Continuation continuation);

    /* JADX INFO: renamed from: getSupportedCameraExtensions-EfqyGwQ */
    Set mo1843getSupportedCameraExtensionsEfqyGwQ(String str);
}
