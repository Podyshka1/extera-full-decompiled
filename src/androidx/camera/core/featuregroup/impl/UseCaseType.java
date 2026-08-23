package androidx.camera.core.featuregroup.impl;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.view.SurfaceHolder;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.streamsharing.StreamSharing;
import java.util.Iterator;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0017\b\u0002\u0012\f\u0010\u0002\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u0011"}, d2 = {"Landroidx/camera/core/featuregroup/impl/UseCaseType;", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceClass", "Ljava/lang/Class;", "<init>", "(Ljava/lang/String;ILjava/lang/Class;)V", "getSurfaceClass", "()Ljava/lang/Class;", "PREVIEW", "IMAGE_CAPTURE", "IMAGE_ANALYSIS", "VIDEO_CAPTURE", "STREAM_SHARING", "UNDEFINED", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class UseCaseType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ UseCaseType[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final Class<?> surfaceClass;
    public static final UseCaseType PREVIEW = new UseCaseType("PREVIEW", 0, SurfaceHolder.class);
    public static final UseCaseType IMAGE_CAPTURE = new UseCaseType("IMAGE_CAPTURE", 1, null);
    public static final UseCaseType IMAGE_ANALYSIS = new UseCaseType("IMAGE_ANALYSIS", 2, null);
    public static final UseCaseType VIDEO_CAPTURE = new UseCaseType("VIDEO_CAPTURE", 3, MediaCodec.class);
    public static final UseCaseType STREAM_SHARING = new UseCaseType("STREAM_SHARING", 4, SurfaceTexture.class);
    public static final UseCaseType UNDEFINED = new UseCaseType("UNDEFINED", 5, null);

    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UseCaseType.values().length];
            try {
                iArr[UseCaseType.PREVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UseCaseType.IMAGE_CAPTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UseCaseType.IMAGE_ANALYSIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UseCaseType.VIDEO_CAPTURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UseCaseType.STREAM_SHARING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[UseCaseType.UNDEFINED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ UseCaseType[] $values() {
        return new UseCaseType[]{PREVIEW, IMAGE_CAPTURE, IMAGE_ANALYSIS, VIDEO_CAPTURE, STREAM_SHARING, UNDEFINED};
    }

    public static UseCaseType valueOf(String str) {
        return (UseCaseType) Enum.valueOf(UseCaseType.class, str);
    }

    public static UseCaseType[] values() {
        return (UseCaseType[]) $VALUES.clone();
    }

    private UseCaseType(String str, int i, Class cls) {
        this.surfaceClass = cls;
    }

    public final Class<?> getSurfaceClass() {
        return this.surfaceClass;
    }

    static {
        UseCaseType[] useCaseTypeArr$values = $values();
        $VALUES = useCaseTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(useCaseTypeArr$values);
        INSTANCE = new Companion(null);
    }

    @Override // java.lang.Enum
    public String toString() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return "Preview";
            case 2:
                return "ImageCapture";
            case 3:
                return "ImageAnalysis";
            case 4:
                return "VideoCapture";
            case 5:
                return "StreamSharing";
            case 6:
                return "Undefined";
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                return null;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0007J\u0010\u0010\u0004\u001a\u00020\u0005*\u0006\u0012\u0002\b\u00030\u0007H\u0007J\u0013\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\u0006H\u0000¢\u0006\u0002\b\nJ\u0014\u0010\u000b\u001a\u00020\f*\u00020\t2\u0006\u0010\r\u001a\u00020\u0006H\u0002J\f\u0010\u000e\u001a\u00020\f*\u00020\u0006H\u0002J\f\u0010\u000f\u001a\u00020\f*\u00020\u0006H\u0002J\f\u0010\u0010\u001a\u00020\f*\u00020\u0006H\u0002J\f\u0010\u0011\u001a\u00020\f*\u00020\u0006H\u0002J\f\u0010\u0012\u001a\u00020\f*\u00020\u0006H\u0002¨\u0006\u0013"}, d2 = {"Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getFeatureGroupUseCaseType", "Landroidx/camera/core/featuregroup/impl/UseCaseType;", "Landroidx/camera/core/UseCase;", "Landroidx/camera/core/impl/UseCaseConfig;", "getAppConfiguredGroupableFeatureType", "Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", "getAppConfiguredGroupableFeatureType$camera_core", "isConfiguredToUseCaseByApp", _UrlKt.FRAGMENT_ENCODE_SET, "useCase", "isDynamicRangeConfiguredByApp", "isFpsRangeConfiguredByApp", "isStabilizationModeConfiguredByApp", "isImageFormatConfiguredByApp", "isRecordingQualityConfiguredByApp", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nUseCaseType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseType.kt\nandroidx/camera/core/featuregroup/impl/UseCaseType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"})
    public static final class Companion {

        @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;

            static {
                int[] iArr = new int[UseCaseConfigFactory.CaptureType.values().length];
                try {
                    iArr[UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[UseCaseConfigFactory.CaptureType.PREVIEW.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[UseCaseConfigFactory.CaptureType.STREAM_SHARING.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[FeatureTypeInternal.values().length];
                try {
                    iArr2[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 1;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr2[FeatureTypeInternal.FPS_RANGE.ordinal()] = 2;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr2[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 3;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr2[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 4;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr2[FeatureTypeInternal.RECORDING_QUALITY.ordinal()] = 5;
                } catch (NoSuchFieldError unused10) {
                }
                $EnumSwitchMapping$1 = iArr2;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final UseCaseType getFeatureGroupUseCaseType(UseCase useCase) {
            if (useCase instanceof Preview) {
                return UseCaseType.PREVIEW;
            }
            if (useCase instanceof ImageCapture) {
                return UseCaseType.IMAGE_CAPTURE;
            }
            if (UseCaseUtil.isVideoCapture(useCase)) {
                return UseCaseType.VIDEO_CAPTURE;
            }
            if (useCase instanceof StreamSharing) {
                return UseCaseType.STREAM_SHARING;
            }
            return UseCaseType.UNDEFINED;
        }

        @JvmStatic
        public final UseCaseType getFeatureGroupUseCaseType(UseCaseConfig<?> useCaseConfig) {
            int i = WhenMappings.$EnumSwitchMapping$0[useCaseConfig.getCaptureType().ordinal()];
            if (i == 1) {
                return UseCaseType.IMAGE_ANALYSIS;
            }
            if (i == 2) {
                return UseCaseType.IMAGE_CAPTURE;
            }
            if (i == 3) {
                return UseCaseType.PREVIEW;
            }
            if (i == 4) {
                return UseCaseType.VIDEO_CAPTURE;
            }
            if (i == 5) {
                return UseCaseType.STREAM_SHARING;
            }
            return UseCaseType.UNDEFINED;
        }

        public final FeatureTypeInternal getAppConfiguredGroupableFeatureType$camera_core(UseCase useCase) {
            FeatureTypeInternal next;
            Iterator<FeatureTypeInternal> it = FeatureTypeInternal.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (UseCaseType.INSTANCE.isConfiguredToUseCaseByApp(next, useCase)) {
                    break;
                }
            }
            return next;
        }

        private final boolean isConfiguredToUseCaseByApp(FeatureTypeInternal featureTypeInternal, UseCase useCase) {
            int i = WhenMappings.$EnumSwitchMapping$1[featureTypeInternal.ordinal()];
            if (i == 1) {
                return isDynamicRangeConfiguredByApp(useCase);
            }
            if (i == 2) {
                return isFpsRangeConfiguredByApp(useCase);
            }
            if (i == 3) {
                return isStabilizationModeConfiguredByApp(useCase);
            }
            if (i == 4) {
                return isImageFormatConfiguredByApp(useCase);
            }
            if (i != 5) {
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                return false;
            }
            return isRecordingQualityConfiguredByApp(useCase);
        }

        private final boolean isDynamicRangeConfiguredByApp(UseCase useCase) {
            return useCase.getAppConfig().hasDynamicRange();
        }

        private final boolean isFpsRangeConfiguredByApp(UseCase useCase) {
            return useCase.getAppConfig().hasTargetFrameRate();
        }

        private final boolean isStabilizationModeConfiguredByApp(UseCase useCase) {
            return useCase.getAppConfig().containsOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE) || useCase.getAppConfig().containsOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE);
        }

        private final boolean isImageFormatConfiguredByApp(UseCase useCase) {
            return useCase.getAppConfig().containsOption(ImageCaptureConfig.OPTION_OUTPUT_FORMAT);
        }

        private final boolean isRecordingQualityConfiguredByApp(UseCase useCase) {
            return Intrinsics.areEqual(useCase.getAppConfig().retrieveOption(UseCaseConfig.OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT, Boolean.TRUE), Boolean.FALSE);
        }
    }
}
