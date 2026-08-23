package androidx.camera.video.internal.config;

import android.os.Build;
import androidx.camera.core.DynamicRange;
import androidx.camera.video.internal.config.FormatComboRegistry;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MediaController;

/* JADX INFO: loaded from: classes4.dex */
public final class DynamicRangeFormatComboRegistry {
    public static final DynamicRangeFormatComboRegistry INSTANCE;
    private static final String MIMETYPE_AUDIO_OPUS_GATED;
    private static final String MIMETYPE_VIDEO_APV_GATED;
    private static final String MIMETYPE_VIDEO_AV1_GATED;
    private static final String MIMETYPE_VIDEO_DOLBY_VISION_GATED;
    private static final String MIMETYPE_VIDEO_HEVC_GATED;
    private static final String MIMETYPE_VIDEO_VP9_GATED;
    private static final Lazy registries$delegate;
    private static final Lazy standardMp4Audios$delegate;
    private static final Lazy standardWebmAudios$delegate;

    private DynamicRangeFormatComboRegistry() {
    }

    static {
        DynamicRangeFormatComboRegistry dynamicRangeFormatComboRegistry = new DynamicRangeFormatComboRegistry();
        INSTANCE = dynamicRangeFormatComboRegistry;
        MIMETYPE_VIDEO_HEVC_GATED = dynamicRangeFormatComboRegistry.takeIf("video/hevc", 24);
        MIMETYPE_VIDEO_VP9_GATED = dynamicRangeFormatComboRegistry.takeIf("video/x-vnd.on2.vp9", 24);
        MIMETYPE_AUDIO_OPUS_GATED = dynamicRangeFormatComboRegistry.takeIf("audio/opus", 29);
        MIMETYPE_VIDEO_DOLBY_VISION_GATED = dynamicRangeFormatComboRegistry.takeIf("video/dolby-vision", 33);
        MIMETYPE_VIDEO_AV1_GATED = dynamicRangeFormatComboRegistry.takeIf("video/av01", 34);
        MIMETYPE_VIDEO_APV_GATED = dynamicRangeFormatComboRegistry.takeIf("video/apv", 36);
        registries$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DynamicRangeFormatComboRegistry.registries_delegate$lambda$0();
            }
        });
        standardMp4Audios$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DynamicRangeFormatComboRegistry.standardMp4Audios_delegate$lambda$0();
            }
        });
        standardWebmAudios$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DynamicRangeFormatComboRegistry.standardWebmAudios_delegate$lambda$0();
            }
        });
    }

    private final Map getRegistries() {
        return (Map) registries$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map registries_delegate$lambda$0() {
        DynamicRange dynamicRange = DynamicRange.SDR;
        DynamicRangeFormatComboRegistry dynamicRangeFormatComboRegistry = INSTANCE;
        return MapsKt.mutableMapOf(TuplesKt.m1081to(dynamicRange, dynamicRangeFormatComboRegistry.buildSdrRegistry()), TuplesKt.m1081to(DynamicRange.HLG_10_BIT, dynamicRangeFormatComboRegistry.buildHlgRegistry()), TuplesKt.m1081to(DynamicRange.HDR10_10_BIT, dynamicRangeFormatComboRegistry.buildHdr10Registry()), TuplesKt.m1081to(DynamicRange.HDR10_PLUS_10_BIT, dynamicRangeFormatComboRegistry.buildHdr10PlusRegistry()), TuplesKt.m1081to(DynamicRange.DOLBY_VISION_8_BIT, dynamicRangeFormatComboRegistry.buildDolbyVisionRegistry()), TuplesKt.m1081to(DynamicRange.DOLBY_VISION_10_BIT, dynamicRangeFormatComboRegistry.buildDolbyVisionRegistry()));
    }

    private final List getStandardMp4Audios() {
        return (List) standardMp4Audios$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List standardMp4Audios_delegate$lambda$0() {
        return CollectionsKt.listOfNotNull((Object[]) new String[]{MediaController.AUDIO_MIME_TYPE, "audio/3gpp", "audio/amr-wb"});
    }

    private final List getStandardWebmAudios() {
        return (List) standardWebmAudios$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List standardWebmAudios_delegate$lambda$0() {
        return CollectionsKt.listOfNotNull((Object[]) new String[]{"audio/vorbis", MIMETYPE_AUDIO_OPUS_GATED});
    }

    public final Set getDynamicRangesForVideoMime(String videoMime) {
        Intrinsics.checkNotNullParameter(videoMime, "videoMime");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry entry : getRegistries().entrySet()) {
            DynamicRange dynamicRange = (DynamicRange) entry.getKey();
            if (!((FormatComboRegistry) entry.getValue()).getCombosForVideo(videoMime).isEmpty()) {
                linkedHashSet.add(dynamicRange);
            }
        }
        return linkedHashSet;
    }

    private final FormatComboRegistry buildSdrRegistry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new Function1() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DynamicRangeFormatComboRegistry.buildSdrRegistry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            }
        });
        builder.container(1, new Function1() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DynamicRangeFormatComboRegistry.buildSdrRegistry$lambda$0$1((FormatComboRegistry.Builder.ContainerScope) obj);
            }
        });
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit buildSdrRegistry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope container) {
        Intrinsics.checkNotNullParameter(container, "$this$container");
        container.support(CollectionsKt.listOfNotNull((Object[]) new String[]{MediaController.VIDEO_MIME_TYPE, "video/mp4v-es", "video/3gpp", MIMETYPE_VIDEO_HEVC_GATED, MIMETYPE_VIDEO_DOLBY_VISION_GATED, MIMETYPE_VIDEO_AV1_GATED, MIMETYPE_VIDEO_APV_GATED}), INSTANCE.getStandardMp4Audios());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit buildSdrRegistry$lambda$0$1(FormatComboRegistry.Builder.ContainerScope container) {
        Intrinsics.checkNotNullParameter(container, "$this$container");
        container.support(CollectionsKt.listOfNotNull((Object[]) new String[]{"video/x-vnd.on2.vp8", MIMETYPE_VIDEO_VP9_GATED}), INSTANCE.getStandardWebmAudios());
        return Unit.INSTANCE;
    }

    private final FormatComboRegistry buildHlgRegistry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new Function1() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DynamicRangeFormatComboRegistry.buildHlgRegistry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            }
        });
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit buildHlgRegistry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope container) {
        Intrinsics.checkNotNullParameter(container, "$this$container");
        container.support(CollectionsKt.listOfNotNull((Object[]) new String[]{MIMETYPE_VIDEO_HEVC_GATED, MIMETYPE_VIDEO_AV1_GATED, MIMETYPE_VIDEO_APV_GATED}), INSTANCE.getStandardMp4Audios());
        return Unit.INSTANCE;
    }

    private final FormatComboRegistry buildHdr10Registry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new Function1() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DynamicRangeFormatComboRegistry.buildHdr10Registry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            }
        });
        builder.container(1, new Function1() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DynamicRangeFormatComboRegistry.buildHdr10Registry$lambda$0$1((FormatComboRegistry.Builder.ContainerScope) obj);
            }
        });
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit buildHdr10Registry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope container) {
        Intrinsics.checkNotNullParameter(container, "$this$container");
        container.support(CollectionsKt.listOfNotNull((Object[]) new String[]{MIMETYPE_VIDEO_HEVC_GATED, MIMETYPE_VIDEO_AV1_GATED, MIMETYPE_VIDEO_APV_GATED}), INSTANCE.getStandardMp4Audios());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit buildHdr10Registry$lambda$0$1(FormatComboRegistry.Builder.ContainerScope container) {
        Intrinsics.checkNotNullParameter(container, "$this$container");
        container.support(CollectionsKt.listOfNotNull(MIMETYPE_VIDEO_VP9_GATED), INSTANCE.getStandardWebmAudios());
        return Unit.INSTANCE;
    }

    private final FormatComboRegistry buildHdr10PlusRegistry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new Function1() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DynamicRangeFormatComboRegistry.buildHdr10PlusRegistry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            }
        });
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit buildHdr10PlusRegistry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope container) {
        Intrinsics.checkNotNullParameter(container, "$this$container");
        container.support(CollectionsKt.listOfNotNull((Object[]) new String[]{MIMETYPE_VIDEO_HEVC_GATED, MIMETYPE_VIDEO_AV1_GATED}), INSTANCE.getStandardMp4Audios());
        return Unit.INSTANCE;
    }

    private final FormatComboRegistry buildDolbyVisionRegistry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new Function1() { // from class: androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DynamicRangeFormatComboRegistry.buildDolbyVisionRegistry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            }
        });
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit buildDolbyVisionRegistry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope container) {
        Intrinsics.checkNotNullParameter(container, "$this$container");
        container.support(CollectionsKt.listOfNotNull(MIMETYPE_VIDEO_DOLBY_VISION_GATED), INSTANCE.getStandardMp4Audios());
        return Unit.INSTANCE;
    }

    private final String takeIf(String str, int i) {
        if (Build.VERSION.SDK_INT >= i) {
            return str;
        }
        return null;
    }
}
