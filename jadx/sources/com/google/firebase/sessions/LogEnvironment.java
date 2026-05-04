package com.google.firebase.sessions;

import com.google.firebase.encoders.json.NumberedEnum;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class LogEnvironment implements NumberedEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LogEnvironment[] $VALUES;
    private final int number;
    public static final LogEnvironment LOG_ENVIRONMENT_UNKNOWN = new LogEnvironment("LOG_ENVIRONMENT_UNKNOWN", 0, 0);
    public static final LogEnvironment LOG_ENVIRONMENT_AUTOPUSH = new LogEnvironment("LOG_ENVIRONMENT_AUTOPUSH", 1, 1);
    public static final LogEnvironment LOG_ENVIRONMENT_STAGING = new LogEnvironment("LOG_ENVIRONMENT_STAGING", 2, 2);
    public static final LogEnvironment LOG_ENVIRONMENT_PROD = new LogEnvironment("LOG_ENVIRONMENT_PROD", 3, 3);

    private static final /* synthetic */ LogEnvironment[] $values() {
        return new LogEnvironment[]{LOG_ENVIRONMENT_UNKNOWN, LOG_ENVIRONMENT_AUTOPUSH, LOG_ENVIRONMENT_STAGING, LOG_ENVIRONMENT_PROD};
    }

    private LogEnvironment(String str, int i, int i2) {
        this.number = i2;
    }

    @Override // com.google.firebase.encoders.json.NumberedEnum
    public int getNumber() {
        return this.number;
    }

    static {
        LogEnvironment[] logEnvironmentArr$values = $values();
        $VALUES = logEnvironmentArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(logEnvironmentArr$values);
    }

    public static LogEnvironment valueOf(String str) {
        return (LogEnvironment) Enum.valueOf(LogEnvironment.class, str);
    }

    public static LogEnvironment[] values() {
        return (LogEnvironment[]) $VALUES.clone();
    }
}
