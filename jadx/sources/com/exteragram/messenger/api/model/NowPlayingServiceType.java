package com.exteragram.messenger.api.model;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class NowPlayingServiceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NowPlayingServiceType[] $VALUES;
    public static final NowPlayingServiceType LAST_FM;
    public static final NowPlayingServiceType NONE;
    public static final NowPlayingServiceType STATS_FM;
    private final String displayName;

    private static final /* synthetic */ NowPlayingServiceType[] $values() {
        return new NowPlayingServiceType[]{NONE, LAST_FM, STATS_FM};
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static NowPlayingServiceType valueOf(String str) {
        return (NowPlayingServiceType) Enum.valueOf(NowPlayingServiceType.class, str);
    }

    public static NowPlayingServiceType[] values() {
        return (NowPlayingServiceType[]) $VALUES.clone();
    }

    private NowPlayingServiceType(String str, int i, String str2) {
        this.displayName = str2;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    static {
        String string = LocaleController.getString(C2888R.string.None);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        NONE = new NowPlayingServiceType("NONE", 0, string);
        LAST_FM = new NowPlayingServiceType("LAST_FM", 1, "Last.fm");
        STATS_FM = new NowPlayingServiceType("STATS_FM", 2, "Stats.fm");
        NowPlayingServiceType[] nowPlayingServiceTypeArr$values = $values();
        $VALUES = nowPlayingServiceTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(nowPlayingServiceTypeArr$values);
    }
}
