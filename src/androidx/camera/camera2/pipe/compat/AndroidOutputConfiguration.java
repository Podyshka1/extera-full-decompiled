package androidx.camera.camera2.pipe.compat;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.params.OutputConfiguration;
import android.media.MediaCodec;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.core.Log;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidOutputConfiguration implements OutputConfigurationWrapper {
    public static final Companion Companion = new Companion(null);
    private final int maxSharedSurfaceCount;
    private final OutputConfiguration output;
    private final String physicalCameraId;
    private final Surface surface;
    private final boolean surfaceSharing;

    public /* synthetic */ AndroidOutputConfiguration(OutputConfiguration outputConfiguration, boolean z, int i, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(outputConfiguration, z, i, str);
    }

    private AndroidOutputConfiguration(OutputConfiguration output, boolean z, int i, String str) {
        Intrinsics.checkNotNullParameter(output, "output");
        this.output = output;
        this.surfaceSharing = z;
        this.maxSharedSurfaceCount = i;
        this.physicalCameraId = str;
        this.surface = output.getSurface();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: create-gWWoySg$default, reason: not valid java name */
        public static /* synthetic */ OutputConfigurationWrapper m1806creategWWoySg$default(Companion companion, Surface surface, Integer num, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, List list, Size size, boolean z, int i, String str, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                num = null;
            }
            if ((i2 & 4) != 0) {
                outputType = OutputStream.OutputType.Companion.getSURFACE();
            }
            if ((i2 & 8) != 0) {
                mirrorMode = null;
            }
            if ((i2 & 16) != 0) {
                timestampBase = null;
            }
            if ((i2 & 32) != 0) {
                dynamicRangeProfile = null;
            }
            if ((i2 & 64) != 0) {
                streamUseCase = null;
            }
            if ((i2 & 128) != 0) {
                list = CollectionsKt.emptyList();
            }
            if ((i2 & 256) != 0) {
                size = null;
            }
            if ((i2 & 512) != 0) {
                z = false;
            }
            if ((i2 & 1024) != 0) {
                i = -1;
            }
            if ((i2 & 2048) != 0) {
                str = null;
            }
            return companion.m1808creategWWoySg(surface, num, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, list, size, z, i, str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r11v0, types: [androidx.camera.camera2.pipe.compat.AndroidOutputConfiguration$Companion] */
        /* JADX WARN: Type inference failed for: r12v0, types: [android.view.Surface] */
        /* JADX WARN: Type inference failed for: r12v12 */
        /* JADX WARN: Type inference failed for: r12v14 */
        /* JADX WARN: Type inference failed for: r12v22, types: [android.hardware.camera2.params.OutputConfiguration] */
        /* JADX WARN: Type inference failed for: r12v23 */
        /* JADX WARN: Type inference failed for: r12v24 */
        /* JADX WARN: Type inference failed for: r12v6, types: [android.hardware.camera2.params.OutputConfiguration] */
        /* JADX WARN: Type inference failed for: r12v9, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r13v9, types: [android.hardware.camera2.params.OutputConfiguration] */
        /* JADX INFO: renamed from: create-gWWoySg, reason: not valid java name */
        public final OutputConfigurationWrapper m1808creategWWoySg(Surface surface, Integer num, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, List sensorPixelModes, Size size, boolean z, int i, String str) {
            Intrinsics.checkNotNullParameter(outputType, "outputType");
            Intrinsics.checkNotNullParameter(sensorPixelModes, "sensorPixelModes");
            OutputStream.OutputType.Companion companion = OutputStream.OutputType.Companion;
            if (!Intrinsics.areEqual(outputType, companion.getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe()) || Build.VERSION.SDK_INT < 35) {
                if (!Intrinsics.areEqual(outputType, companion.getSURFACE())) {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 < 26) {
                        throw new IllegalStateException("Deferred OutputConfigurations are not supported on API " + i2 + " (requires API 26)");
                    }
                    if (size == null) {
                        throw new IllegalStateException("Size must defined when creating a deferred OutputConfiguration.");
                    }
                    surface = Api26Compat.newOutputConfiguration(size, toKlass(outputType));
                } else {
                    if (surface == 0) {
                        Objects.toString(companion.getSURFACE());
                        throw new IllegalStateException("non-null surface!");
                    }
                    try {
                        if (i != -1) {
                            AbstractC0186x5427388b.m52m();
                            surface = AbstractC0184x54273889.m50m(i, surface);
                        } else {
                            AbstractC0186x5427388b.m52m();
                            surface = AbstractC0185x5427388a.m51m(surface);
                        }
                    } catch (Throwable th) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to create an OutputConfiguration for " + surface + '!', th);
                        }
                        return null;
                    }
                }
            } else {
                if (num == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                if (size == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                surface = Api35Compat.newImageReaderOutputConfiguration(num.intValue(), size);
            }
            ?? r13 = surface;
            if (z) {
                enableSurfaceSharingCompat(r13);
            }
            if (str != null) {
                m1807setPhysicalCameraIdCompat8Ri2elo(r13, str);
            }
            if (mirrorMode != null) {
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 33) {
                    Api33Compat.setMirrorMode(r13, mirrorMode.m1714unboximpl());
                } else {
                    if (!OutputStream.MirrorMode.m1711equalsimpl0(mirrorMode.m1714unboximpl(), OutputStream.MirrorMode.Companion.m1715getMIRROR_MODE_AUTODrUKqn0()) && Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Cannot set mirrorMode to a non-default value on API " + i3 + ". This may result in unexpected behavior. Requested " + ((Object) OutputStream.MirrorMode.m1713toStringimpl(mirrorMode.m1714unboximpl())));
                    }
                }
            }
            if (dynamicRangeProfile != null) {
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 33) {
                    Api33Compat.setDynamicRangeProfile(r13, dynamicRangeProfile.m1706unboximpl());
                } else {
                    if (!OutputStream.DynamicRangeProfile.m1703equalsimpl0(dynamicRangeProfile.m1706unboximpl(), OutputStream.DynamicRangeProfile.Companion.m1707getSTANDARDfFAQAUE()) && Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Cannot set dynamicRangeProfile to a non-default value on API " + i4 + ". This may result in unexpected behavior. Requested " + ((Object) OutputStream.DynamicRangeProfile.m1705toStringimpl(dynamicRangeProfile.m1706unboximpl())));
                    }
                }
            }
            if (streamUseCase != null && Build.VERSION.SDK_INT >= 33) {
                Api33Compat.setStreamUseCase(r13, streamUseCase.m1722unboximpl());
            }
            if (!sensorPixelModes.isEmpty()) {
                int i5 = Build.VERSION.SDK_INT;
                if (i5 >= 31) {
                    Iterator it = sensorPixelModes.iterator();
                    if (it.hasNext()) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                        throw null;
                    }
                } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Cannot add sensorPixelModeUsed value on API " + i5 + ". This may result in unexpected behavior. Requested " + sensorPixelModes);
                }
            }
            return new AndroidOutputConfiguration(r13, z, Build.VERSION.SDK_INT >= 28 ? Api28Compat.getMaxSharedSurfaceCount(r13) : 1, str, null);
        }

        private final void enableSurfaceSharingCompat(OutputConfiguration outputConfiguration) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                if (i >= 26) {
                    Api26Compat.enableSurfaceSharing(outputConfiguration);
                    return;
                }
                return;
            }
            throw new IllegalStateException(("surfaceSharing is not supported on API " + i + " (requires API 24)").toString());
        }

        /* JADX INFO: renamed from: setPhysicalCameraIdCompat-8Ri2elo, reason: not valid java name */
        private final void m1807setPhysicalCameraIdCompat8Ri2elo(OutputConfiguration outputConfiguration, String str) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                if (i >= 28) {
                    Api28Compat.setPhysicalCameraId(outputConfiguration, str);
                    return;
                }
                return;
            }
            throw new IllegalStateException(("physicalCameraId is not supported on API " + i + " (requires API 28)").toString());
        }

        private final Class toKlass(OutputStream.OutputType outputType) {
            OutputStream.OutputType.Companion companion = OutputStream.OutputType.Companion;
            if (Intrinsics.areEqual(outputType, companion.getSURFACE_TEXTURE())) {
                return SurfaceTexture.class;
            }
            if (Intrinsics.areEqual(outputType, companion.getSURFACE_VIEW())) {
                return SurfaceHolder.class;
            }
            if (Intrinsics.areEqual(outputType, companion.getMEDIA_CODEC())) {
                if (Build.VERSION.SDK_INT < 35) {
                    throw new IllegalStateException("OutputType.MEDIA_CODEC requires API 35 or higher.");
                }
                return MediaCodec.class;
            }
            if (Intrinsics.areEqual(outputType, companion.getMEDIA_RECORDER())) {
                if (Build.VERSION.SDK_INT < 35) {
                    throw new IllegalStateException("OutputType.MEDIA_RECORDER requires API 35 or higher.");
                }
                return MediaRecorder.class;
            }
            throw new IllegalStateException("Unsupported OutputType: " + outputType);
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public void addSurface(Surface surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            if (i >= 26) {
                Api26Compat.addSurfaces(this.output, surface);
                return;
            }
            return;
        }
        throw new IllegalStateException(("addSurface is not supported on API " + i + " (requires API 26)").toString());
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0.m48m()))) {
            return null;
        }
        OutputConfiguration outputConfiguration = this.output;
        Intrinsics.checkNotNull(outputConfiguration, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.AndroidOutputConfiguration.unwrapAs");
        return outputConfiguration;
    }

    public String toString() {
        return this.output.toString();
    }
}
