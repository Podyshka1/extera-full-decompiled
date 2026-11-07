package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public enum zzaju implements zzafz {
    MEC_COLUMN_UNSPECIFIED(0),
    MEC_ID(60624),
    MEC_ACTIVITY_NAME(27932),
    MEC_ACTION(16297),
    MEC_EVENT_TIME(87675),
    MEC_DOWN_TIME(24368),
    MEC_POINTER_COUNT(39954),
    MEC_META_STATE(81898),
    MEC_BUTTON_STATE(41153),
    MEC_X(81015),
    MEC_Y(79969),
    MEC_DEVICE_ID(14294),
    MEC_TOOL_TYPE(97243),
    MEC_EDGE_FLAGS(91068),
    MEC_SOURCE(99646),
    MEC_PRESSURE(74067),
    MEC_SIZE(90142),
    MEC_FLAGS(75726),
    UNRECOGNIZED(-1);

    private final int zzt;

    zzaju(int i) {
        this.zzt = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzt);
    }

    public final int zza() {
        return this == UNRECOGNIZED ? zzagf.zza() : this.zzt;
    }
}
