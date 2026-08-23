package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/VideoMessagesCamera;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "FRONT", "REAR", "ASK", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class VideoMessagesCamera {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VideoMessagesCamera[] $VALUES;
    public static final VideoMessagesCamera FRONT = new VideoMessagesCamera("FRONT", 0);
    public static final VideoMessagesCamera REAR = new VideoMessagesCamera("REAR", 1);
    public static final VideoMessagesCamera ASK = new VideoMessagesCamera("ASK", 2);

    private static final /* synthetic */ VideoMessagesCamera[] $values() {
        return new VideoMessagesCamera[]{FRONT, REAR, ASK};
    }

    public static EnumEntries<VideoMessagesCamera> getEntries() {
        return $ENTRIES;
    }

    public static VideoMessagesCamera valueOf(String str) {
        return (VideoMessagesCamera) Enum.valueOf(VideoMessagesCamera.class, str);
    }

    public static VideoMessagesCamera[] values() {
        return (VideoMessagesCamera[]) $VALUES.clone();
    }

    private VideoMessagesCamera(String str, int i) {
    }

    static {
        VideoMessagesCamera[] videoMessagesCameraArr$values = $values();
        $VALUES = videoMessagesCameraArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(videoMessagesCameraArr$values);
    }
}
