package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/MeasureSystem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "AUTO", "METRIC", "IMPERIAL", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class MeasureSystem {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MeasureSystem[] $VALUES;
    public static final MeasureSystem AUTO = new MeasureSystem("AUTO", 0);
    public static final MeasureSystem METRIC = new MeasureSystem("METRIC", 1);
    public static final MeasureSystem IMPERIAL = new MeasureSystem("IMPERIAL", 2);

    private static final /* synthetic */ MeasureSystem[] $values() {
        return new MeasureSystem[]{AUTO, METRIC, IMPERIAL};
    }

    public static EnumEntries<MeasureSystem> getEntries() {
        return $ENTRIES;
    }

    public static MeasureSystem valueOf(String str) {
        return (MeasureSystem) Enum.valueOf(MeasureSystem.class, str);
    }

    public static MeasureSystem[] values() {
        return (MeasureSystem[]) $VALUES.clone();
    }

    private MeasureSystem(String str, int i) {
    }

    static {
        MeasureSystem[] measureSystemArr$values = $values();
        $VALUES = measureSystemArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(measureSystemArr$values);
    }
}
