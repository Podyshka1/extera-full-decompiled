package androidx.camera.video.internal.workaround;

import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.Quality;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MediaController;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultEncoderProfilesProvider implements EncoderProfilesProvider {
    public static final Companion Companion = new Companion(null);
    private final CameraInfoInternal cameraInfo;
    private final Map encoderProfilesMap;
    private final Lazy supportedSizes$delegate;
    private final List targetQualities;
    private final VideoEncoderInfo.Finder videoEncoderInfoFinder;

    public DefaultEncoderProfilesProvider(CameraInfoInternal cameraInfo, List targetQualities, VideoEncoderInfo.Finder videoEncoderInfoFinder) {
        Intrinsics.checkNotNullParameter(cameraInfo, "cameraInfo");
        Intrinsics.checkNotNullParameter(targetQualities, "targetQualities");
        Intrinsics.checkNotNullParameter(videoEncoderInfoFinder, "videoEncoderInfoFinder");
        this.cameraInfo = cameraInfo;
        this.targetQualities = targetQualities;
        this.videoEncoderInfoFinder = videoEncoderInfoFinder;
        this.supportedSizes$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DefaultEncoderProfilesProvider.supportedSizes_delegate$lambda$0(this.f$0);
            }
        });
        this.encoderProfilesMap = new LinkedHashMap();
    }

    private final List getSupportedSizes() {
        return (List) this.supportedSizes$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List supportedSizes_delegate$lambda$0(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider) {
        return defaultEncoderProfilesProvider.cameraInfo.getSupportedResolutions(34);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return getProfileInternal(i) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        return getProfileInternal(i);
    }

    private final EncoderProfilesProxy getProfileInternal(int i) {
        if (this.encoderProfilesMap.containsKey(Integer.valueOf(i))) {
            return (EncoderProfilesProxy) this.encoderProfilesMap.get(Integer.valueOf(i));
        }
        EncoderProfilesProxy encoderProfilesProxyGenerateEncoderProfiles = generateEncoderProfiles(i);
        this.encoderProfilesMap.put(Integer.valueOf(i), encoderProfilesProxyGenerateEncoderProfiles);
        return encoderProfilesProxyGenerateEncoderProfiles;
    }

    private final EncoderProfilesProxy generateEncoderProfiles(int i) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyGenerateVideoProfiles = generateVideoProfiles(i);
        if (videoProfileProxyGenerateVideoProfiles == null) {
            return null;
        }
        return createDefaultEncoderProfiles$default(this, 0, 0, videoProfileProxyGenerateVideoProfiles, createDefaultAudioProfile$default(this, 0, null, 0, 0, 0, 0, 63, null), 3, null);
    }

    private final EncoderProfilesProxy.VideoProfileProxy generateVideoProfiles(int i) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyResolveVideoProfile;
        Quality.ConstantQuality constantQualityFind = find(this.targetQualities, i);
        if (constantQualityFind == null) {
            return null;
        }
        for (Size size : constantQualityFind.getTypicalSizes()) {
            if (getSupportedSizes().contains(size) && (videoProfileProxyResolveVideoProfile = resolveVideoProfile(size.getWidth(), size.getHeight(), getTypicalBitrate(constantQualityFind))) != null) {
                return videoProfileProxyResolveVideoProfile;
            }
        }
        return null;
    }

    private final EncoderProfilesProxy.VideoProfileProxy resolveVideoProfile(int i, int i2, int i3) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyCreateDefaultVideoProfile$default = createDefaultVideoProfile$default(this, 0, null, i, i2, i3, 0, 0, 0, 0, 0, 995, null);
        VideoEncoderInfo.Finder finder = this.videoEncoderInfoFinder;
        String mediaType = videoProfileProxyCreateDefaultVideoProfile$default.getMediaType();
        Intrinsics.checkNotNullExpressionValue(mediaType, "getMediaType(...)");
        VideoEncoderInfo videoEncoderInfoFind = finder.find(mediaType);
        if (videoEncoderInfoFind == null || !videoEncoderInfoFind.isSizeSupportedAllowSwapping(i, i2)) {
            return null;
        }
        Integer num = (Integer) videoEncoderInfoFind.getSupportedBitrateRange().clamp(Integer.valueOf(i3));
        if (num != null && num.intValue() == i3) {
            return videoProfileProxyCreateDefaultVideoProfile$default;
        }
        Intrinsics.checkNotNull(num);
        return createDefaultVideoProfile$default(this, 0, null, i, i2, num.intValue(), 0, 0, 0, 0, 0, 995, null);
    }

    static /* synthetic */ EncoderProfilesProxy createDefaultEncoderProfiles$default(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider, int i, int i2, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 60;
        }
        if ((i3 & 2) != 0) {
            i2 = 2;
        }
        return defaultEncoderProfilesProvider.createDefaultEncoderProfiles(i, i2, videoProfileProxy, audioProfileProxy);
    }

    private final EncoderProfilesProxy createDefaultEncoderProfiles(int i, int i2, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
        EncoderProfilesProxy.ImmutableEncoderProfilesProxy immutableEncoderProfilesProxyCreate = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(i, i2, CollectionsKt.listOf(audioProfileProxy), CollectionsKt.listOf(videoProfileProxy));
        Intrinsics.checkNotNullExpressionValue(immutableEncoderProfilesProxyCreate, "create(...)");
        return immutableEncoderProfilesProxyCreate;
    }

    static /* synthetic */ EncoderProfilesProxy.VideoProfileProxy createDefaultVideoProfile$default(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, Object obj) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        String str2;
        DefaultEncoderProfilesProvider defaultEncoderProfilesProvider2;
        if ((i10 & 1) != 0) {
            i = 2;
        }
        if ((i10 & 2) != 0) {
            str = MediaController.VIDEO_MIME_TYPE;
        }
        if ((i10 & 32) != 0) {
            i5 = 30;
        }
        if ((i10 & 64) != 0) {
            i6 = -1;
        }
        if ((i10 & 128) != 0) {
            i7 = 8;
        }
        if ((i10 & 256) != 0) {
            i8 = 0;
        }
        if ((i10 & 512) != 0) {
            i11 = 0;
            i14 = i7;
            i12 = i8;
            i16 = i5;
            i13 = i6;
            i18 = i3;
            i15 = i4;
            str2 = str;
            i17 = i2;
            defaultEncoderProfilesProvider2 = defaultEncoderProfilesProvider;
            i19 = i;
        } else {
            i11 = i9;
            i12 = i8;
            i13 = i6;
            i14 = i7;
            i15 = i4;
            i16 = i5;
            i17 = i2;
            i18 = i3;
            i19 = i;
            str2 = str;
            defaultEncoderProfilesProvider2 = defaultEncoderProfilesProvider;
        }
        return defaultEncoderProfilesProvider2.createDefaultVideoProfile(i19, str2, i17, i18, i15, i16, i13, i14, i12, i11);
    }

    private final EncoderProfilesProxy.VideoProfileProxy createDefaultVideoProfile(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyCreate = EncoderProfilesProxy.VideoProfileProxy.create(i, str, i4, i5, i2, i3, i6, i7, i8, i9);
        Intrinsics.checkNotNullExpressionValue(videoProfileProxyCreate, "create(...)");
        return videoProfileProxyCreate;
    }

    static /* synthetic */ EncoderProfilesProxy.AudioProfileProxy createDefaultAudioProfile$default(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider, int i, String str, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i = 3;
        }
        if ((i6 & 2) != 0) {
            str = MediaController.AUDIO_MIME_TYPE;
        }
        if ((i6 & 4) != 0) {
            i2 = 96000;
        }
        if ((i6 & 8) != 0) {
            i3 = 44100;
        }
        if ((i6 & 16) != 0) {
            i4 = 1;
        }
        if ((i6 & 32) != 0) {
            i5 = 2;
        }
        int i7 = i4;
        int i8 = i5;
        return defaultEncoderProfilesProvider.createDefaultAudioProfile(i, str, i2, i3, i7, i8);
    }

    private final EncoderProfilesProxy.AudioProfileProxy createDefaultAudioProfile(int i, String str, int i2, int i3, int i4, int i5) {
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxyCreate = EncoderProfilesProxy.AudioProfileProxy.create(i, str, i2, i3, i4, i5);
        Intrinsics.checkNotNullExpressionValue(audioProfileProxyCreate, "create(...)");
        return audioProfileProxyCreate;
    }

    private final int getTypicalBitrate(Quality quality) {
        if (Intrinsics.areEqual(quality, Quality.UHD)) {
            return 40000000;
        }
        if (Intrinsics.areEqual(quality, Quality.FHD)) {
            return 10000000;
        }
        if (Intrinsics.areEqual(quality, Quality.f28HD)) {
            return 4000000;
        }
        if (Intrinsics.areEqual(quality, Quality.f29SD)) {
            return 2000000;
        }
        throw new IllegalArgumentException("Undefined bitrate for quality: " + quality);
    }

    private final Quality.ConstantQuality find(List list, int i) {
        Object next;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Quality quality = (Quality) next;
            Intrinsics.checkNotNull(quality, "null cannot be cast to non-null type androidx.camera.video.Quality.ConstantQuality");
            if (((Quality.ConstantQuality) quality).getQualityValue(1) == i) {
                break;
            }
        }
        if (next instanceof Quality.ConstantQuality) {
            return (Quality.ConstantQuality) next;
        }
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
