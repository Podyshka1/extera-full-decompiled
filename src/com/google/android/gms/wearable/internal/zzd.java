package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    public final zzfa zza;
    public final IntentFilter[] zzb;

    @Nullable
    public final String zzc;

    @Nullable
    public final String zzd;

    public zzd(IBinder iBinder, IntentFilter[] intentFilterArr, @Nullable String str, @Nullable String str2) {
        if (iBinder != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
            this.zza = iInterfaceQueryLocalInterface instanceof zzfa ? (zzfa) iInterfaceQueryLocalInterface : new zzey(iBinder);
        } else {
            this.zza = null;
        }
        this.zzb = intentFilterArr;
        this.zzc = str;
        this.zzd = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        zzfa zzfaVar = this.zza;
        SafeParcelWriter.writeIBinder(parcel, 2, zzfaVar == null ? null : zzfaVar.asBinder(), false);
        SafeParcelWriter.writeTypedArray(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public zzd(zzit zzitVar) {
        this.zza = zzitVar;
        throw null;
    }
}
