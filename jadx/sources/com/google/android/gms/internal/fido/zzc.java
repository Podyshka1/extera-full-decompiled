package com.google.android.gms.internal.fido;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzc {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final ClassLoader zzb = zzc.class.getClassLoader();

    public static Parcelable zza(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void zzc(Parcel parcel) {
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail <= 0) {
            return;
        }
        throw new BadParcelableException("Parcel data not fully consumed, unread size: " + iDataAvail);
    }

    public static void zzd(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }
}
