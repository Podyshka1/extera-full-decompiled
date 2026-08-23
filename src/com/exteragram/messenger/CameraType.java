package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/CameraType;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "CAMERA_1", "CAMERA_2", "CAMERA_X", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class CameraType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CameraType[] $VALUES;
    public static final CameraType CAMERA_1 = new CameraType("CAMERA_1", 0);
    public static final CameraType CAMERA_2 = new CameraType("CAMERA_2", 1);
    public static final CameraType CAMERA_X = new CameraType("CAMERA_X", 2);

    private static final /* synthetic */ CameraType[] $values() {
        return new CameraType[]{CAMERA_1, CAMERA_2, CAMERA_X};
    }

    public static EnumEntries<CameraType> getEntries() {
        return $ENTRIES;
    }

    public static CameraType valueOf(String str) {
        return (CameraType) Enum.valueOf(CameraType.class, str);
    }

    public static CameraType[] values() {
        return (CameraType[]) $VALUES.clone();
    }

    private CameraType(String str, int i) {
    }

    static {
        CameraType[] cameraTypeArr$values = $values();
        $VALUES = cameraTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cameraTypeArr$values);
    }
}
