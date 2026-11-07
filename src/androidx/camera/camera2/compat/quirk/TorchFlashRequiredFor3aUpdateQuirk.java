package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.Quirk;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;", "Landroidx/camera/core/impl/Quirk;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;)V", "Landroidx/camera/camera2/pipe/CameraMetadata;", "Companion", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"CameraXQuirksClassDetector"})
public final class TorchFlashRequiredFor3aUpdateQuirk implements Quirk {
    private final CameraMetadata cameraMetadata;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> AFFECTED_PIXEL_MODELS = CollectionsKt.mutableListOf("PIXEL 6A", "PIXEL 6 PRO", "PIXEL 7", "PIXEL 7A", "PIXEL 7 PRO", "PIXEL 8", "PIXEL 8 PRO");

    public TorchFlashRequiredFor3aUpdateQuirk(CameraMetadata cameraMetadata) {
        this.cameraMetadata = cameraMetadata;
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\bH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u00020\b*\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "AFFECTED_PIXEL_MODELS", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "isAffectedModel", "isAffectedPixelModel", "isFrontCamera", "(Landroidx/camera/camera2/pipe/CameraMetadata;)Z", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nTorchFlashRequiredFor3aUpdateQuirk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TorchFlashRequiredFor3aUpdateQuirk.kt\nandroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n1869#2,2:86\n*S KotlinDebug\n*F\n+ 1 TorchFlashRequiredFor3aUpdateQuirk.kt\nandroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion\n*L\n73#1:86,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            return isAffectedModel(cameraMetadata);
        }

        private final boolean isAffectedModel(CameraMetadata cameraMetadata) {
            return isAffectedPixelModel() && isFrontCamera(cameraMetadata);
        }

        private final boolean isAffectedPixelModel() {
            Iterator it = TorchFlashRequiredFor3aUpdateQuirk.AFFECTED_PIXEL_MODELS.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(Build.MODEL.toUpperCase(Locale.ROOT), (String) it.next())) {
                    return true;
                }
            }
            return false;
        }

        private final boolean isFrontCamera(CameraMetadata cameraMetadata) {
            Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.LENS_FACING);
            return num != null && num.intValue() == 0;
        }
    }
}
