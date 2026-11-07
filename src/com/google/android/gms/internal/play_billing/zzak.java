package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.cast.MediaError;

/* JADX INFO: loaded from: classes5.dex */
public final class zzak extends zzap implements zzam {
    public zzak(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final int zza(int i, String str, String str2) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(3);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        Parcel parcelZzt = zzt(5, parcelZzs);
        int i2 = parcelZzt.readInt();
        parcelZzt.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final int zzc(int i, String str, String str2, Bundle bundle) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(i);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        zzar.zzc(parcelZzs, bundle);
        Parcel parcelZzt = zzt(10, parcelZzs);
        int i2 = parcelZzt.readInt();
        parcelZzt.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zze(int i, String str, String str2, Bundle bundle) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(9);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        zzar.zzc(parcelZzs, bundle);
        Parcel parcelZzt = zzt(12, parcelZzs);
        Bundle bundle2 = (Bundle) zzar.zza(parcelZzt, Bundle.CREATOR);
        parcelZzt.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzf(int i, String str, String str2, String str3, String str4) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(3);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        parcelZzs.writeString(str3);
        parcelZzs.writeString(null);
        Parcel parcelZzt = zzt(3, parcelZzs);
        Bundle bundle = (Bundle) zzar.zza(parcelZzt, Bundle.CREATOR);
        parcelZzt.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzg(int i, String str, String str2, String str3, String str4, Bundle bundle) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(i);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        parcelZzs.writeString(str3);
        parcelZzs.writeString(null);
        zzar.zzc(parcelZzs, bundle);
        Parcel parcelZzt = zzt(8, parcelZzs);
        Bundle bundle2 = (Bundle) zzar.zza(parcelZzt, Bundle.CREATOR);
        parcelZzt.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzh(int i, String str, String str2, String str3) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(3);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        parcelZzs.writeString(str3);
        Parcel parcelZzt = zzt(4, parcelZzs);
        Bundle bundle = (Bundle) zzar.zza(parcelZzt, Bundle.CREATOR);
        parcelZzt.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzi(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(i);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        parcelZzs.writeString(str3);
        zzar.zzc(parcelZzs, bundle);
        Parcel parcelZzt = zzt(11, parcelZzs);
        Bundle bundle2 = (Bundle) zzar.zza(parcelZzt, Bundle.CREATOR);
        parcelZzt.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzj(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(i);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        zzar.zzc(parcelZzs, bundle);
        zzar.zzc(parcelZzs, bundle2);
        Parcel parcelZzt = zzt(MediaError.DetailedErrorCode.BREAK_CLIP_LOADING_ERROR, parcelZzs);
        Bundle bundle3 = (Bundle) zzar.zza(parcelZzt, Bundle.CREATOR);
        parcelZzt.recycle();
        return bundle3;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final int zzw(int i, String str, String str2) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeInt(i);
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        Parcel parcelZzt = zzt(1, parcelZzs);
        int i2 = parcelZzt.readInt();
        parcelZzt.recycle();
        return i2;
    }
}
