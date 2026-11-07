package com.exteragram.messenger.api.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/exteragram/messenger/api/model/ProfileType;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "USER", "CHAT", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class ProfileType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProfileType[] $VALUES;
    public static final ProfileType USER = new ProfileType("USER", 0);
    public static final ProfileType CHAT = new ProfileType("CHAT", 1);

    private static final /* synthetic */ ProfileType[] $values() {
        return new ProfileType[]{USER, CHAT};
    }

    public static EnumEntries<ProfileType> getEntries() {
        return $ENTRIES;
    }

    public static ProfileType valueOf(String str) {
        return (ProfileType) Enum.valueOf(ProfileType.class, str);
    }

    public static ProfileType[] values() {
        return (ProfileType[]) $VALUES.clone();
    }

    private ProfileType(String str, int i) {
    }

    static {
        ProfileType[] profileTypeArr$values = $values();
        $VALUES = profileTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(profileTypeArr$values);
    }
}
