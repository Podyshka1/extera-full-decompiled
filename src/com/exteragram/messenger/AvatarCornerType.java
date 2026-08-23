package com.exteragram.messenger;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/AvatarCornerType;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "DEFAULT", "FORUM", "COMMUNITY", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class AvatarCornerType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AvatarCornerType[] $VALUES;
    public static final AvatarCornerType DEFAULT = new AvatarCornerType("DEFAULT", 0);
    public static final AvatarCornerType FORUM = new AvatarCornerType("FORUM", 1);
    public static final AvatarCornerType COMMUNITY = new AvatarCornerType("COMMUNITY", 2);

    private static final /* synthetic */ AvatarCornerType[] $values() {
        return new AvatarCornerType[]{DEFAULT, FORUM, COMMUNITY};
    }

    public static AvatarCornerType valueOf(String str) {
        return (AvatarCornerType) Enum.valueOf(AvatarCornerType.class, str);
    }

    public static AvatarCornerType[] values() {
        return (AvatarCornerType[]) $VALUES.clone();
    }

    private AvatarCornerType(String str, int i) {
    }

    static {
        AvatarCornerType[] avatarCornerTypeArr$values = $values();
        $VALUES = avatarCornerTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(avatarCornerTypeArr$values);
    }
}
