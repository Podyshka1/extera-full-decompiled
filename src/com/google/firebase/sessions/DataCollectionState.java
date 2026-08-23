package com.google.firebase.sessions;

import com.google.firebase.encoders.json.NumberedEnum;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class DataCollectionState implements NumberedEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DataCollectionState[] $VALUES;
    private final int number;
    public static final DataCollectionState COLLECTION_UNKNOWN = new DataCollectionState("COLLECTION_UNKNOWN", 0, 0);
    public static final DataCollectionState COLLECTION_SDK_NOT_INSTALLED = new DataCollectionState("COLLECTION_SDK_NOT_INSTALLED", 1, 1);
    public static final DataCollectionState COLLECTION_ENABLED = new DataCollectionState("COLLECTION_ENABLED", 2, 2);
    public static final DataCollectionState COLLECTION_DISABLED = new DataCollectionState("COLLECTION_DISABLED", 3, 3);
    public static final DataCollectionState COLLECTION_DISABLED_REMOTE = new DataCollectionState("COLLECTION_DISABLED_REMOTE", 4, 4);
    public static final DataCollectionState COLLECTION_SAMPLED = new DataCollectionState("COLLECTION_SAMPLED", 5, 5);

    private static final /* synthetic */ DataCollectionState[] $values() {
        return new DataCollectionState[]{COLLECTION_UNKNOWN, COLLECTION_SDK_NOT_INSTALLED, COLLECTION_ENABLED, COLLECTION_DISABLED, COLLECTION_DISABLED_REMOTE, COLLECTION_SAMPLED};
    }

    private DataCollectionState(String str, int i, int i2) {
        this.number = i2;
    }

    @Override // com.google.firebase.encoders.json.NumberedEnum
    public int getNumber() {
        return this.number;
    }

    static {
        DataCollectionState[] dataCollectionStateArr$values = $values();
        $VALUES = dataCollectionStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(dataCollectionStateArr$values);
    }

    public static DataCollectionState valueOf(String str) {
        return (DataCollectionState) Enum.valueOf(DataCollectionState.class, str);
    }

    public static DataCollectionState[] values() {
        return (DataCollectionState[]) $VALUES.clone();
    }
}
