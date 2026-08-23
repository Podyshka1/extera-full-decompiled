package com.exteragram.messenger.api.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/exteragram/messenger/api/model/NowPlayingServiceType;", _UrlKt.FRAGMENT_ENCODE_SET, "displayName", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getDisplayName", "()Ljava/lang/String;", "NONE", "LAST_FM", "STATS_FM", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class NowPlayingServiceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NowPlayingServiceType[] $VALUES;
    private final String displayName;
    public static final NowPlayingServiceType NONE = new NowPlayingServiceType("NONE", 0, LocaleController.getString(C2573R.string.None));
    public static final NowPlayingServiceType LAST_FM = new NowPlayingServiceType("LAST_FM", 1, "Last.fm");
    public static final NowPlayingServiceType STATS_FM = new NowPlayingServiceType("STATS_FM", 2, "Stats.fm");

    private static final /* synthetic */ NowPlayingServiceType[] $values() {
        return new NowPlayingServiceType[]{NONE, LAST_FM, STATS_FM};
    }

    public static EnumEntries<NowPlayingServiceType> getEntries() {
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
        NowPlayingServiceType[] nowPlayingServiceTypeArr$values = $values();
        $VALUES = nowPlayingServiceTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(nowPlayingServiceTypeArr$values);
    }
}
