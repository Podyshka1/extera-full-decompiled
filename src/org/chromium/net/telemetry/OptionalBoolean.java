package org.chromium.net.telemetry;

/* JADX INFO: loaded from: classes5.dex */
public enum OptionalBoolean {
    UNSET(0),
    TRUE(1),
    FALSE(2);

    private final int mValue;

    OptionalBoolean(int i) {
        this.mValue = i;
    }

    public int getValue() {
        return this.mValue;
    }

    public static OptionalBoolean fromBoolean(Boolean bool) {
        if (bool == null) {
            return UNSET;
        }
        return bool.booleanValue() ? TRUE : FALSE;
    }
}
