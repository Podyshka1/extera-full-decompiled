package com.exteragram.messenger;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/IconPackType;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", PluginsConstants.Strategy.DEFAULT, "SOLAR", "REMIX", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class IconPackType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ IconPackType[] $VALUES;
    public static final IconPackType DEFAULT = new IconPackType(PluginsConstants.Strategy.DEFAULT, 0);
    public static final IconPackType SOLAR = new IconPackType("SOLAR", 1);
    public static final IconPackType REMIX = new IconPackType("REMIX", 2);

    private static final /* synthetic */ IconPackType[] $values() {
        return new IconPackType[]{DEFAULT, SOLAR, REMIX};
    }

    public static IconPackType valueOf(String str) {
        return (IconPackType) Enum.valueOf(IconPackType.class, str);
    }

    public static IconPackType[] values() {
        return (IconPackType[]) $VALUES.clone();
    }

    private IconPackType(String str, int i) {
    }

    static {
        IconPackType[] iconPackTypeArr$values = $values();
        $VALUES = iconPackTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(iconPackTypeArr$values);
    }
}
