package com.google.android.gms.internal.wallet;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.PaymentCardRecognitionIntentResponse;
import com.google.android.gms.wallet.PaymentData;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzp extends zzb implements zzq {
    public zzp() {
        super("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
    }

    @Override // com.google.android.gms.internal.wallet.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                int i3 = parcel.readInt();
                MaskedWallet maskedWallet = (MaskedWallet) zzc.zza(parcel, MaskedWallet.CREATOR);
                Bundle bundle = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                zzc.zzb(parcel);
                zzd(i3, maskedWallet, bundle);
                return true;
            case 2:
                int i4 = parcel.readInt();
                FullWallet fullWallet = (FullWallet) zzc.zza(parcel, FullWallet.CREATOR);
                Bundle bundle2 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                zzc.zzb(parcel);
                zzb(i4, fullWallet, bundle2);
                return true;
            case 3:
                int i5 = parcel.readInt();
                boolean zZze = zzc.zze(parcel);
                Bundle bundle3 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                zzc.zzb(parcel);
                zzg(i5, zZze, bundle3);
                return true;
            case 4:
                int i6 = parcel.readInt();
                Bundle bundle4 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                zzc.zzb(parcel);
                zzh(i6, bundle4);
                return true;
            case 5:
            default:
                return false;
            case 6:
                parcel.readInt();
                zzc.zze(parcel);
                zzc.zzb(parcel);
                return true;
            case 7:
                zzc.zzb(parcel);
                return true;
            case 8:
                zzc.zzb(parcel);
                return true;
            case 9:
                Status status = (Status) zzc.zza(parcel, Status.CREATOR);
                boolean zZze2 = zzc.zze(parcel);
                Bundle bundle5 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                zzc.zzb(parcel);
                zzc(status, zZze2, bundle5);
                return true;
            case 10:
                zzc.zzb(parcel);
                return true;
            case 11:
                zzc.zzb(parcel);
                return true;
            case 12:
                zzc.zzb(parcel);
                return true;
            case 13:
                zzc.zzb(parcel);
                return true;
            case 14:
                Status status2 = (Status) zzc.zza(parcel, Status.CREATOR);
                PaymentData paymentData = (PaymentData) zzc.zza(parcel, PaymentData.CREATOR);
                Bundle bundle6 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                zzc.zzb(parcel);
                zzf(status2, paymentData, bundle6);
                return true;
            case 15:
                zzc.zzb(parcel);
                return true;
            case 16:
                zzc.zzb(parcel);
                return true;
            case 17:
                zzc.zzb(parcel);
                return true;
            case 18:
                parcel.readInt();
                zzc.zzb(parcel);
                return true;
            case 19:
                Status status3 = (Status) zzc.zza(parcel, Status.CREATOR);
                PaymentCardRecognitionIntentResponse paymentCardRecognitionIntentResponse = (PaymentCardRecognitionIntentResponse) zzc.zza(parcel, PaymentCardRecognitionIntentResponse.CREATOR);
                Bundle bundle7 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                zzc.zzb(parcel);
                zze(status3, paymentCardRecognitionIntentResponse, bundle7);
                return true;
            case 20:
                zzc.zzb(parcel);
                return true;
        }
    }
}
