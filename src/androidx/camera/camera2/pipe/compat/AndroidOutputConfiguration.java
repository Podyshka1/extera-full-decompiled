package androidx.camera.camera2.pipe.compat;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.params.OutputConfiguration;
import android.media.MediaCodec;
import android.media.MediaRecorder;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat$$ExternalSyntheticBUOutline0;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.core.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticBUOutline0;
import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0001\u0018\u0000 &2\u00020\u0001:\u0001&B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0012*\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001aR\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0007\u001a\u00020\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001c\u0010\t\u001a\u0004\u0018\u00010\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010!\u001a\u0004\b\"\u0010\u0019R\u001c\u0010\r\u001a\u0004\u0018\u00010\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010#\u001a\u0004\b$\u0010%¨\u0006'"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "Landroid/hardware/camera2/params/OutputConfiguration;", "output", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceSharing", _UrlKt.FRAGMENT_ENCODE_SET, "maxSharedSurfaceCount", "Landroidx/camera/camera2/pipe/CameraId;", "physicalCameraId", "<init>", "(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroid/view/Surface;", "surface", _UrlKt.FRAGMENT_ENCODE_SET, "addSurface", "(Landroid/view/Surface;)V", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroid/hardware/camera2/params/OutputConfiguration;", "Z", "getSurfaceSharing", "()Z", "I", "getMaxSharedSurfaceCount", "()I", "Ljava/lang/String;", "getPhysicalCameraId-1LO98Z0", "Landroid/view/Surface;", "getSurface", "()Landroid/view/Surface;", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Configuration.kt\nandroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/DebugKt\n*L\n1#1,373:1\n272#2:374\n253#2,4:375\n276#2:379\n253#2,4:380\n*S KotlinDebug\n*F\n+ 1 Configuration.kt\nandroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration\n*L\n348#1:374\n348#1:375,4\n355#1:379\n355#1:380,4\n*E\n"})
public final class AndroidOutputConfiguration implements OutputConfigurationWrapper {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int maxSharedSurfaceCount;
    private final OutputConfiguration output;
    private final String physicalCameraId;
    private final Surface surface;
    private final boolean surfaceSharing;

    public /* synthetic */ AndroidOutputConfiguration(OutputConfiguration outputConfiguration, boolean z, int i, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(outputConfiguration, z, i, str);
    }

    private AndroidOutputConfiguration(OutputConfiguration outputConfiguration, boolean z, int i, String str) {
        this.output = outputConfiguration;
        this.surfaceSharing = z;
        this.maxSharedSurfaceCount = i;
        this.physicalCameraId = str;
        this.surface = outputConfiguration.getSurface();
    }

    @Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0005*\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\n\u001a\u00020\t*\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u0010\u001a\u00020\t*\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u009b\u0001\u0010(\u001a\u0004\u0018\u00010%2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u000e\b\u0002\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00010\u001e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 2\b\b\u0002\u0010#\u001a\u00020\"2\b\b\u0002\u0010$\u001a\u00020\u00132\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b&\u0010'¨\u0006)"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "Ljava/lang/Class;", "toKlass", "(Landroidx/camera/camera2/pipe/OutputStream$OutputType;)Ljava/lang/Class;", "Landroid/hardware/camera2/params/OutputConfiguration;", _UrlKt.FRAGMENT_ENCODE_SET, "enableSurfaceSharingCompat", "(Landroid/hardware/camera2/params/OutputConfiguration;)V", "Landroidx/camera/camera2/pipe/CameraId;", "physicalCameraId", "setPhysicalCameraIdCompat-8Ri2elo", "(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V", "setPhysicalCameraIdCompat", "Landroid/view/Surface;", "surface", _UrlKt.FRAGMENT_ENCODE_SET, "format", "outputType", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "mirrorMode", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "timestampBase", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "dynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "streamUseCase", _UrlKt.FRAGMENT_ENCODE_SET, "sensorPixelModes", "Landroid/util/Size;", "size", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceSharing", "surfaceGroupId", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "create-gWWoySg", "(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "create", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Configuration.kt\nandroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 Debug.kt\nandroidx/camera/camera2/pipe/core/DebugKt\n*L\n1#1,373:1\n75#2,2:374\n71#2,2:376\n59#2,2:378\n71#2,2:380\n71#2,2:382\n268#3:384\n253#3,4:385\n276#3:389\n253#3,4:390\n*S KotlinDebug\n*F\n+ 1 Configuration.kt\nandroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion\n*L\n196#1:374,2\n229#1:376,2\n243#1:378,2\n258#1:380,2\n279#1:382,2\n320#1:384\n320#1:385,4\n327#1:389\n327#1:390,4\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: create-gWWoySg$default, reason: not valid java name */
        public static /* synthetic */ OutputConfigurationWrapper m1492creategWWoySg$default(Companion companion, Surface surface, Integer num, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, List list, Size size, boolean z, int i, String str, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                num = null;
            }
            if ((i2 & 4) != 0) {
                outputType = OutputStream.OutputType.INSTANCE.getSURFACE();
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
            return companion.m1494creategWWoySg(surface, num, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, list, size, z, i, str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: create-gWWoySg, reason: not valid java name */
        public final OutputConfigurationWrapper m1494creategWWoySg(Surface surface, Integer format, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, List<Object> sensorPixelModes, Size size, boolean surfaceSharing, int surfaceGroupId, String physicalCameraId) {
            OutputConfiguration outputConfigurationNewOutputConfiguration;
            OutputStream.OutputType.Companion companion = OutputStream.OutputType.INSTANCE;
            if (!Intrinsics.areEqual(outputType, companion.getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe()) || Build.VERSION.SDK_INT < 35) {
                if (!Intrinsics.areEqual(outputType, companion.getSURFACE())) {
                    int i = Build.VERSION.SDK_INT;
                    if (i < 26) {
                        ExifInterface$$ExternalSyntheticBUOutline0.m148m("Deferred OutputConfigurations are not supported on API ", i, " (requires API 26)");
                        return null;
                    }
                    if (size == null) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("Size must defined when creating a deferred OutputConfiguration.");
                        return null;
                    }
                    outputConfigurationNewOutputConfiguration = Api26Compat.newOutputConfiguration(size, toKlass(outputType));
                } else {
                    if (surface == 0) {
                        Objects.toString(companion.getSURFACE());
                        Segment$$ExternalSyntheticBUOutline1.m925m("non-null surface!");
                        return null;
                    }
                    try {
                        surface = surfaceGroupId != -1 ? new OutputConfiguration(surfaceGroupId, surface) : new OutputConfiguration(surface);
                        outputConfigurationNewOutputConfiguration = surface;
                    } catch (Throwable th) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to create an OutputConfiguration for " + surface + '!', th);
                        }
                        return null;
                    }
                }
            } else {
                if (format == null) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                    return null;
                }
                if (size == null) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                    return null;
                }
                outputConfigurationNewOutputConfiguration = Api35Compat.newImageReaderOutputConfiguration(format.intValue(), size);
            }
            if (surfaceSharing) {
                enableSurfaceSharingCompat(outputConfigurationNewOutputConfiguration);
            }
            if (physicalCameraId != null) {
                m1493setPhysicalCameraIdCompat8Ri2elo(outputConfigurationNewOutputConfiguration, physicalCameraId);
            }
            if (mirrorMode != null) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 33) {
                    Api33Compat.setMirrorMode(outputConfigurationNewOutputConfiguration, mirrorMode.getValue());
                } else {
                    if (!OutputStream.MirrorMode.m1407equalsimpl0(mirrorMode.getValue(), OutputStream.MirrorMode.INSTANCE.m1411getMIRROR_MODE_AUTODrUKqn0()) && Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Cannot set mirrorMode to a non-default value on API " + i2 + ". This may result in unexpected behavior. Requested " + ((Object) OutputStream.MirrorMode.m1409toStringimpl(mirrorMode.getValue())));
                    }
                }
            }
            if (dynamicRangeProfile != null) {
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 33) {
                    Api33Compat.setDynamicRangeProfile(outputConfigurationNewOutputConfiguration, dynamicRangeProfile.getValue());
                } else {
                    if (!OutputStream.DynamicRangeProfile.m1399equalsimpl0(dynamicRangeProfile.getValue(), OutputStream.DynamicRangeProfile.INSTANCE.m1403getSTANDARDfFAQAUE()) && Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Cannot set dynamicRangeProfile to a non-default value on API " + i3 + ". This may result in unexpected behavior. Requested " + ((Object) OutputStream.DynamicRangeProfile.m1401toStringimpl(dynamicRangeProfile.getValue())));
                    }
                }
            }
            if (streamUseCase != null && Build.VERSION.SDK_INT >= 33) {
                Api33Compat.setStreamUseCase(outputConfigurationNewOutputConfiguration, streamUseCase.getValue());
            }
            if (!sensorPixelModes.isEmpty()) {
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 31) {
                    Iterator<Object> it = sensorPixelModes.iterator();
                    if (it.hasNext()) {
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                        throw null;
                    }
                } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Cannot add sensorPixelModeUsed value on API " + i4 + ". This may result in unexpected behavior. Requested " + sensorPixelModes);
                }
            }
            return new AndroidOutputConfiguration(outputConfigurationNewOutputConfiguration, surfaceSharing, Build.VERSION.SDK_INT >= 28 ? Api28Compat.getMaxSharedSurfaceCount(outputConfigurationNewOutputConfiguration) : 1, physicalCameraId, null);
        }

        /* JADX INFO: renamed from: setPhysicalCameraIdCompat-8Ri2elo, reason: not valid java name */
        private final void m1493setPhysicalCameraIdCompat8Ri2elo(OutputConfiguration outputConfiguration, String str) {
            int i = Build.VERSION.SDK_INT;
            if (i < 28) {
                DynamicRangeProfilesCompat$$ExternalSyntheticBUOutline0.m17m("physicalCameraId is not supported on API ", i, " (requires API 28)");
            } else if (i >= 28) {
                Api28Compat.setPhysicalCameraId(outputConfiguration, str);
            }
        }

        private final Class<? extends Object> toKlass(OutputStream.OutputType outputType) {
            OutputStream.OutputType.Companion companion = OutputStream.OutputType.INSTANCE;
            if (Intrinsics.areEqual(outputType, companion.getSURFACE_TEXTURE())) {
                return SurfaceTexture.class;
            }
            if (Intrinsics.areEqual(outputType, companion.getSURFACE_VIEW())) {
                return SurfaceHolder.class;
            }
            if (Intrinsics.areEqual(outputType, companion.getMEDIA_CODEC())) {
                if (Build.VERSION.SDK_INT < 35) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("OutputType.MEDIA_CODEC requires API 35 or higher.");
                    return null;
                }
                return MediaCodec.class;
            }
            if (Intrinsics.areEqual(outputType, companion.getMEDIA_RECORDER())) {
                if (Build.VERSION.SDK_INT < 35) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("OutputType.MEDIA_RECORDER requires API 35 or higher.");
                    return null;
                }
                return MediaRecorder.class;
            }
            DexMaker$$ExternalSyntheticBUOutline0.m220m("Unsupported OutputType: ", outputType);
            return null;
        }

        private final void enableSurfaceSharingCompat(OutputConfiguration outputConfiguration) {
            if (Build.VERSION.SDK_INT >= 26) {
                Api26Compat.enableSurfaceSharing(outputConfiguration);
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.OutputConfigurationWrapper
    public void addSurface(Surface surface) {
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            DynamicRangeProfilesCompat$$ExternalSyntheticBUOutline0.m17m("addSurface is not supported on API ", i, " (requires API 26)");
        } else if (i >= 26) {
            Api26Compat.addSurfaces(this.output, surface);
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(OutputConfiguration.class))) {
            return (T) this.output;
        }
        return null;
    }

    public String toString() {
        return this.output.toString();
    }
}
