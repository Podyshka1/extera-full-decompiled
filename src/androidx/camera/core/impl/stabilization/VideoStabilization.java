package androidx.camera.core.impl.stabilization;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class VideoStabilization {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VideoStabilization[] $VALUES;
    public static final Companion Companion;
    public static final VideoStabilization UNSPECIFIED = new VideoStabilization("UNSPECIFIED", 0);
    public static final VideoStabilization OFF = new VideoStabilization("OFF", 1);

    /* JADX INFO: renamed from: ON */
    public static final VideoStabilization f25ON = new VideoStabilization("ON", 2);
    public static final VideoStabilization PREVIEW = new VideoStabilization("PREVIEW", 3);

    private static final /* synthetic */ VideoStabilization[] $values() {
        return new VideoStabilization[]{UNSPECIFIED, OFF, f25ON, PREVIEW};
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
        Companion = new Companion(null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final VideoStabilization from$camera_core(int i, int i2) {
            if (i == 1 || i2 == 1) {
                return VideoStabilization.OFF;
            }
            if (i == 2) {
                return VideoStabilization.PREVIEW;
            }
            if (i2 == 2) {
                return VideoStabilization.f25ON;
            }
            return VideoStabilization.UNSPECIFIED;
        }
    }
}
