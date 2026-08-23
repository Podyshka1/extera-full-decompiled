package com.exteragram.messenger.api.model;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ProfileStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProfileStatus[] $VALUES;
    public static final ProfileStatus DEFAULT = new ProfileStatus("DEFAULT", 0);
    public static final ProfileStatus DEVELOPER = new ProfileStatus("DEVELOPER", 1);
    public static final ProfileStatus SUPPORTER = new ProfileStatus("SUPPORTER", 2);

    private static final /* synthetic */ ProfileStatus[] $values() {
        return new ProfileStatus[]{DEFAULT, DEVELOPER, SUPPORTER};
    }

    public static EnumEntries getEntries() {
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
