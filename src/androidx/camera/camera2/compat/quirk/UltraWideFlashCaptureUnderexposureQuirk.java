package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;", "Landroidx/camera/camera2/compat/quirk/UseTorchAsFlashQuirk;", "<init>", "()V", "Companion", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"CameraXQuirksClassDetector"})
public final class UltraWideFlashCaptureUnderexposureQuirk implements UseTorchAsFlashQuirk {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> BUILD_MODEL_PREFIXES = CollectionsKt.listOf("sm-s921");

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "BUILD_MODEL_PREFIXES", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "getBUILD_MODEL_PREFIXES", "()Ljava/util/List;", "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nUltraWideFlashCaptureUnderexposureQuirk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UltraWideFlashCaptureUnderexposureQuirk.kt\nandroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1761#2,3:52\n*S KotlinDebug\n*F\n+ 1 UltraWideFlashCaptureUnderexposureQuirk.kt\nandroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion\n*L\n46#1:52,3\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<String> getBUILD_MODEL_PREFIXES() {
            return UltraWideFlashCaptureUnderexposureQuirk.BUILD_MODEL_PREFIXES;
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            List<String> build_model_prefixes = getBUILD_MODEL_PREFIXES();
            if (!(build_model_prefixes instanceof Collection) || !build_model_prefixes.isEmpty()) {
                Iterator<T> it = build_model_prefixes.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (StringsKt.startsWith$default(Build.MODEL.toLowerCase(Locale.ROOT), (String) it.next(), false, 2, (Object) null)) {
                        Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.LENS_FACING);
                        if (num != null && num.intValue() == 1) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
    }
}
