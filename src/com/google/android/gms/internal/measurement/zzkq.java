package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public enum zzkq implements zzmj {
    PURPOSE_RESTRICTION_NOT_ALLOWED(0),
    PURPOSE_RESTRICTION_REQUIRE_CONSENT(1),
    PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST(2),
    PURPOSE_RESTRICTION_UNDEFINED(3),
    UNRECOGNIZED(-1);

    private final int zzf;

    zzkq(int i) {
        this.zzf = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzf);
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.zzf;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
