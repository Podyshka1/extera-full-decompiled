package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaf extends zzp {
    public static final Parcelable.Creator<zzaf> CREATOR = new zzag();
    private final zzml zza;
    private final float zzb;
    private final int zzc;
    private final int zzd;
    private final int zze;
    private final zzbb zzf;
    private final zzml zzg;
    private final int zzh;
    private final int zzi;
    private final String zzj;
    private final String zzk;
    private final String zzl;

    @Deprecated
    private final String zzm;
    private final int zzn;
    private final int zzo;
    private final int zzp;
    private final zzbc zzq;

    public zzaf(zzml zzmlVar, float f, int i, int i2, zzbc zzbcVar, int i3, zzbb zzbbVar, zzml zzmlVar2, int i4, int i5, String str, String str2, String str3, String str4, int i6, int i7, int i8) {
        this.zza = zzmlVar;
        this.zzb = 0.0f;
        this.zzc = i;
        this.zzd = i2;
        this.zzq = null;
        this.zze = i3;
        this.zzf = zzbbVar;
        this.zzg = zzmlVar2;
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = null;
        this.zzk = str2;
        this.zzl = str3;
        this.zzm = null;
        this.zzn = i6;
        this.zzo = 0;
        this.zzp = i8;
    }

    public static zzae zza() {
        zzs zzsVar = new zzs();
        zzsVar.zza(zzml.zzk());
        zzsVar.zzb(0.0f);
        zzsVar.zzc(1);
        zzsVar.zzd(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
        zzsVar.zzh(0);
        zzsVar.zzi(0);
        zzsVar.zzm(0);
        zzsVar.zzg(zzml.zzk());
        zzsVar.zze(1);
        zzsVar.zzl(-1);
        zzsVar.zzn(1);
        zzsVar.zzj("cortana_type_unspecified");
        return zzsVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzml zzmlVar = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, zzmlVar, false);
        SafeParcelWriter.writeFloat(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        zzbc zzbcVar = this.zzq;
        SafeParcelWriter.writeIBinder(parcel, 5, zzbcVar == null ? null : zzbcVar.asBinder(), false);
        SafeParcelWriter.writeInt(parcel, 6, this.zze);
        zzbb zzbbVar = this.zzf;
        SafeParcelWriter.writeIBinder(parcel, 7, zzbbVar != null ? zzbbVar.asBinder() : null, false);
        SafeParcelWriter.writeTypedList(parcel, 8, this.zzg, false);
        SafeParcelWriter.writeInt(parcel, 9, this.zzh);
        SafeParcelWriter.writeInt(parcel, 10, this.zzi);
        SafeParcelWriter.writeString(parcel, 11, this.zzj, false);
        SafeParcelWriter.writeString(parcel, 12, this.zzk, false);
        SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
        SafeParcelWriter.writeString(parcel, 14, this.zzm, false);
        SafeParcelWriter.writeInt(parcel, 15, this.zzn);
        SafeParcelWriter.writeInt(parcel, 16, this.zzo);
        SafeParcelWriter.writeInt(parcel, 17, this.zzp);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final void zzb() throws IOException {
        zzml zzmlVar = this.zza;
        int size = zzmlVar.size();
        for (int i = 0; i < size; i++) {
            zzaa zzaaVar = (zzaa) zzmlVar.get(i);
            ParcelFileDescriptor parcelFileDescriptorZza = zzaaVar.zza();
            if (parcelFileDescriptorZza != null) {
                parcelFileDescriptorZza.close();
            }
            ParcelFileDescriptor parcelFileDescriptorZzb = zzaaVar.zzb();
            if (parcelFileDescriptorZzb != null) {
                parcelFileDescriptorZzb.close();
            }
        }
        zzml zzmlVar2 = this.zzg;
        if (zzmlVar2 != null) {
            int size2 = zzmlVar2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzmlVar2.get(i2);
                if (parcelFileDescriptor != null) {
                    parcelFileDescriptor.close();
                }
            }
        }
    }

    public zzaf(List list, float f, int i, int i2, IBinder iBinder, int i3, IBinder iBinder2, List list2, int i4, int i5, String str, String str2, String str3, String str4, int i6, int i7, int i8) {
        zzbc zzbcVar;
        this.zza = zzml.zzq(list);
        this.zzb = f;
        this.zzc = i;
        this.zzd = i2;
        zzbb zzazVar = null;
        if (iBinder == null) {
            zzbcVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.ICortanaStreamingCallback");
            zzbcVar = iInterfaceQueryLocalInterface instanceof zzbc ? (zzbc) iInterfaceQueryLocalInterface : new zzbc(iBinder);
        }
        this.zzq = zzbcVar;
        this.zze = i3;
        if (iBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.apps.aicore.aidl.ICortanaStateCallback");
            zzazVar = iInterfaceQueryLocalInterface2 instanceof zzbb ? (zzbb) iInterfaceQueryLocalInterface2 : new zzaz(iBinder2);
        }
        this.zzf = zzazVar;
        this.zzg = zzml.zzq(list2);
        this.zzh = i4;
        this.zzi = i5;
        this.zzj = str;
        this.zzk = str2;
        this.zzl = str3;
        this.zzm = str4;
        this.zzn = i6;
        this.zzo = i7;
        this.zzp = i8;
    }
}
