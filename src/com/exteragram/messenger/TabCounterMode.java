package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/TabCounterMode;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "ALL", "UNMUTED", "HIDDEN", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class TabCounterMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TabCounterMode[] $VALUES;
    public static final TabCounterMode ALL = new TabCounterMode("ALL", 0);
    public static final TabCounterMode UNMUTED = new TabCounterMode("UNMUTED", 1);
    public static final TabCounterMode HIDDEN = new TabCounterMode("HIDDEN", 2);

    private static final /* synthetic */ TabCounterMode[] $values() {
        return new TabCounterMode[]{ALL, UNMUTED, HIDDEN};
    }

    public static EnumEntries<TabCounterMode> getEntries() {
        return $ENTRIES;
    }

    public static TabCounterMode valueOf(String str) {
        return (TabCounterMode) Enum.valueOf(TabCounterMode.class, str);
    }

    public static TabCounterMode[] values() {
        return (TabCounterMode[]) $VALUES.clone();
    }

    private TabCounterMode(String str, int i) {
    }

    static {
        TabCounterMode[] tabCounterModeArr$values = $values();
        $VALUES = tabCounterModeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tabCounterModeArr$values);
    }
}
