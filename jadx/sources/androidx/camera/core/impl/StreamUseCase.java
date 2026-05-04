package androidx.camera.core.impl;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class StreamUseCase {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StreamUseCase[] $VALUES;
    private final long value;
    public static final StreamUseCase DEFAULT = new StreamUseCase("DEFAULT", 0, 0);
    public static final StreamUseCase PREVIEW = new StreamUseCase("PREVIEW", 1, 1);
    public static final StreamUseCase VIDEO_RECORD = new StreamUseCase("VIDEO_RECORD", 2, 3);
    public static final StreamUseCase STILL_CAPTURE = new StreamUseCase("STILL_CAPTURE", 3, 2);
    public static final StreamUseCase VIDEO_CALL = new StreamUseCase("VIDEO_CALL", 4, 5);
    public static final StreamUseCase PREVIEW_VIDEO_STILL = new StreamUseCase("PREVIEW_VIDEO_STILL", 5, 4);
    public static final StreamUseCase CROPPED_RAW = new StreamUseCase("CROPPED_RAW", 6, 6);

    private static final /* synthetic */ StreamUseCase[] $values() {
        return new StreamUseCase[]{DEFAULT, PREVIEW, VIDEO_RECORD, STILL_CAPTURE, VIDEO_CALL, PREVIEW_VIDEO_STILL, CROPPED_RAW};
    }

    public static StreamUseCase valueOf(String str) {
        return (StreamUseCase) Enum.valueOf(StreamUseCase.class, str);
    }

    public static StreamUseCase[] values() {
        return (StreamUseCase[]) $VALUES.clone();
    }

    private StreamUseCase(String str, int i, int i2) {
        this.value = i2;
    }

    static {
        StreamUseCase[] streamUseCaseArr$values = $values();
        $VALUES = streamUseCaseArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(streamUseCaseArr$values);
    }

    public final long getValue() {
        return this.value;
    }
}
