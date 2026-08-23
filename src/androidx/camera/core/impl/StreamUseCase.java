package androidx.camera.core.impl;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u0011"}, d2 = {"Landroidx/camera/core/impl/StreamUseCase;", _UrlKt.FRAGMENT_ENCODE_SET, "intValue", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;II)V", "DEFAULT", "PREVIEW", "VIDEO_RECORD", "STILL_CAPTURE", "VIDEO_CALL", "PREVIEW_VIDEO_STILL", "CROPPED_RAW", "value", _UrlKt.FRAGMENT_ENCODE_SET, "getValue", "()J", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
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
