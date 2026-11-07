package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/TabIconsMode;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "ICONS_AND_TITLES", "TITLES_ONLY", "ICONS_ONLY", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class TabIconsMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TabIconsMode[] $VALUES;
    public static final TabIconsMode ICONS_AND_TITLES = new TabIconsMode("ICONS_AND_TITLES", 0);
    public static final TabIconsMode TITLES_ONLY = new TabIconsMode("TITLES_ONLY", 1);
    public static final TabIconsMode ICONS_ONLY = new TabIconsMode("ICONS_ONLY", 2);

    private static final /* synthetic */ TabIconsMode[] $values() {
        return new TabIconsMode[]{ICONS_AND_TITLES, TITLES_ONLY, ICONS_ONLY};
    }

    public static EnumEntries<TabIconsMode> getEntries() {
        return $ENTRIES;
    }

    public static TabIconsMode valueOf(String str) {
        return (TabIconsMode) Enum.valueOf(TabIconsMode.class, str);
    }

    public static TabIconsMode[] values() {
        return (TabIconsMode[]) $VALUES.clone();
    }

    private TabIconsMode(String str, int i) {
    }

    static {
        TabIconsMode[] tabIconsModeArr$values = $values();
        $VALUES = tabIconsModeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tabIconsModeArr$values);
    }
}
