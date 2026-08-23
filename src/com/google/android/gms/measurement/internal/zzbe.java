package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbe extends AbstractSafeParcelable implements Iterable {
    public static final Parcelable.Creator<zzbe> CREATOR = new zzbf();
    private final Bundle zza;

    zzbe(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzbd(this);
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zzf(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    final Object zza(String str) {
        return this.zza.get(str);
    }

    final Long zzb(String str) {
        return Long.valueOf(this.zza.getLong(str));
    }

    final Double zzc(String str) {
        return Double.valueOf(this.zza.getDouble("value"));
    }

    final String zzd(String str) {
        return this.zza.getString(str);
    }

    public final int zze() {
        return this.zza.size();
    }

    public final Bundle zzf() {
        return new Bundle(this.zza);
    }

    final /* synthetic */ Bundle zzg() {
        return this.zza;
    }
}
