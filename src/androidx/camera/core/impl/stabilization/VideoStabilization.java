package androidx.camera.core.impl.stabilization;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\t"}, d2 = {"Landroidx/camera/core/impl/stabilization/VideoStabilization;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "UNSPECIFIED", "OFF", "ON", "PREVIEW", "Companion", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoStabilization {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VideoStabilization[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final VideoStabilization UNSPECIFIED = new VideoStabilization("UNSPECIFIED", 0);
    public static final VideoStabilization OFF = new VideoStabilization("OFF", 1);
    public static final VideoStabilization ON = new VideoStabilization("ON", 2);
    public static final VideoStabilization PREVIEW = new VideoStabilization("PREVIEW", 3);

    private static final /* synthetic */ VideoStabilization[] $values() {
        return new VideoStabilization[]{UNSPECIFIED, OFF, ON, PREVIEW};
    }

    public static VideoStabilization valueOf(String str) {
        return (VideoStabilization) Enum.valueOf(VideoStabilization.class, str);
    }

    public static VideoStabilization[] values() {
        return (VideoStabilization[]) $VALUES.clone();
    }

    private VideoStabilization(String str, int i) {
    }

    static {
        VideoStabilization[] videoStabilizationArr$values = $values();
        $VALUES = videoStabilizationArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(videoStabilizationArr$values);
        INSTANCE = new Companion(null);
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\t¨\u0006\n"}, d2 = {"Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "from", "Landroidx/camera/core/impl/stabilization/VideoStabilization;", "previewStabilizationMode", _UrlKt.FRAGMENT_ENCODE_SET, "videoStabilizationMode", "from$camera_core", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final VideoStabilization from$camera_core(int previewStabilizationMode, int videoStabilizationMode) {
            if (previewStabilizationMode == 1 || videoStabilizationMode == 1) {
                return VideoStabilization.OFF;
            }
            if (previewStabilizationMode == 2) {
                return VideoStabilization.PREVIEW;
            }
            if (videoStabilizationMode == 2) {
                return VideoStabilization.ON;
            }
            return VideoStabilization.UNSPECIFIED;
        }
    }
}
