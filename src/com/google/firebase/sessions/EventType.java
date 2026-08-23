package com.google.firebase.sessions;

import com.google.firebase.encoders.json.NumberedEnum;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class EventType implements NumberedEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EventType[] $VALUES;
    public static final EventType EVENT_TYPE_UNKNOWN = new EventType("EVENT_TYPE_UNKNOWN", 0, 0);
    public static final EventType SESSION_START = new EventType("SESSION_START", 1, 1);
    private final int number;

    private static final /* synthetic */ EventType[] $values() {
        return new EventType[]{EVENT_TYPE_UNKNOWN, SESSION_START};
    }

    private EventType(String str, int i, int i2) {
        this.number = i2;
    }

    @Override // com.google.firebase.encoders.json.NumberedEnum
    public int getNumber() {
        return this.number;
    }

    static {
        EventType[] eventTypeArr$values = $values();
        $VALUES = eventTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(eventTypeArr$values);
    }

    public static EventType valueOf(String str) {
        return (EventType) Enum.valueOf(EventType.class, str);
    }

    public static EventType[] values() {
        return (EventType[]) $VALUES.clone();
    }
}
