package com.exteragram.messenger.api.model;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ProfileType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProfileType[] $VALUES;
    public static final ProfileType USER = new ProfileType("USER", 0);
    public static final ProfileType CHAT = new ProfileType("CHAT", 1);

    private static final /* synthetic */ ProfileType[] $values() {
        return new ProfileType[]{USER, CHAT};
    }

    public static EnumEntries getEntries() {
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
