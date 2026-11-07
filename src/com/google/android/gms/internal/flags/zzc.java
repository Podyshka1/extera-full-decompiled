package com.google.android.gms.internal.flags;

import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzc {
    private static final ClassLoader zza = zzc.class.getClassLoader();

    public static void zza(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static boolean zzc(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
