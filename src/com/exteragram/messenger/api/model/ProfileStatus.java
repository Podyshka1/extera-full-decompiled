package com.exteragram.messenger.api.model;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/api/model/ProfileStatus;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", PluginsConstants.Strategy.DEFAULT, "DEVELOPER", "SUPPORTER", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class ProfileStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProfileStatus[] $VALUES;
    public static final ProfileStatus DEFAULT = new ProfileStatus(PluginsConstants.Strategy.DEFAULT, 0);
    public static final ProfileStatus DEVELOPER = new ProfileStatus("DEVELOPER", 1);
    public static final ProfileStatus SUPPORTER = new ProfileStatus("SUPPORTER", 2);

    private static final /* synthetic */ ProfileStatus[] $values() {
        return new ProfileStatus[]{DEFAULT, DEVELOPER, SUPPORTER};
    }

    public static EnumEntries<ProfileStatus> getEntries() {
        return $ENTRIES;
    }

    public static ProfileStatus valueOf(String str) {
        return (ProfileStatus) Enum.valueOf(ProfileStatus.class, str);
    }

    public static ProfileStatus[] values() {
        return (ProfileStatus[]) $VALUES.clone();
    }

    private ProfileStatus(String str, int i) {
    }

    static {
        ProfileStatus[] profileStatusArr$values = $values();
        $VALUES = profileStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(profileStatusArr$values);
    }
}
