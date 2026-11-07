package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/DividerStyle;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "HIDDEN", "LINE", "SEGMENTS", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class DividerStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DividerStyle[] $VALUES;
    public static final DividerStyle HIDDEN = new DividerStyle("HIDDEN", 0);
    public static final DividerStyle LINE = new DividerStyle("LINE", 1);
    public static final DividerStyle SEGMENTS = new DividerStyle("SEGMENTS", 2);

    private static final /* synthetic */ DividerStyle[] $values() {
        return new DividerStyle[]{HIDDEN, LINE, SEGMENTS};
    }

    public static EnumEntries<DividerStyle> getEntries() {
        return $ENTRIES;
    }

    public static DividerStyle valueOf(String str) {
        return (DividerStyle) Enum.valueOf(DividerStyle.class, str);
    }

    public static DividerStyle[] values() {
        return (DividerStyle[]) $VALUES.clone();
    }

    private DividerStyle(String str, int i) {
    }

    static {
        DividerStyle[] dividerStyleArr$values = $values();
        $VALUES = dividerStyleArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(dividerStyleArr$values);
    }
}
