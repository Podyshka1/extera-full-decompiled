package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcg extends zzp {
    public static final Parcelable.Creator<zzcg> CREATOR = new zzch();
    public static final zzml zza = zzml.zzn("auxiliary_lora_file", "auxiliary_drafter_lora_file", "auxiliary_session_state_file");
    private final zzml zzb;
    private final float zzc;
    private final int zzd;
    private final zzml zze;
    private final int zzf;
    private final int zzg;
    private final zzbl zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final float zzn;
    private final String zzo;
    private final Bundle zzp;
    private final int zzq;
    private final zzcw zzr;
    private final int zzs;
    private final zzcb zzt;
    private final zzcp zzu;
    private final boolean zzv;
    private final zzdf zzw;
    private final zzbf zzx;

    public zzcg(zzml zzmlVar, float f, int i, zzml zzmlVar2, int i2, int i3, zzbl zzblVar, boolean z, int i4, zzbf zzbfVar, int i5, int i6, String str, Bundle bundle, int i7, zzcw zzcwVar, int i8, zzcb zzcbVar, int i9, float f2, zzcp zzcpVar, boolean z2, zzdf zzdfVar) {
        this.zzb = zzmlVar;
        this.zzc = f;
        this.zzd = i;
        this.zzn = f2;
        this.zze = zzmlVar2;
        this.zzf = i2;
        this.zzg = i3;
        this.zzh = zzblVar;
        this.zzi = z;
        this.zzj = i4;
        this.zzx = null;
        this.zzk = i5;
        this.zzl = i6;
        this.zzo = null;
        this.zzp = bundle;
        this.zzq = i7;
        this.zzr = zzcwVar == null ? zzcw.zza : zzcwVar;
        this.zzs = 0;
        this.zzt = zzcbVar;
        this.zzm = 0;
        this.zzu = zzcpVar;
        this.zzv = z2;
        this.zzw = zzdfVar;
    }

    public static zzcf zza() {
        zzt zztVar = new zzt();
        zztVar.zzj(0);
        zztVar.zzk(0);
        zztVar.zzq(0);
        zztVar.zzd(zzml.zzk());
        zztVar.zzm(123);
        zztVar.zzn(zzcw.zza);
        zztVar.zzo(0);
        zztVar.zzr(1.0f);
        zztVar.zzt(false);
        zztVar.zzu(null);
        return zztVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzml zzmlVar = this.zzb;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, zzmlVar, false);
        SafeParcelWriter.writeFloat(parcel, 2, this.zzc);
        SafeParcelWriter.writeInt(parcel, 3, this.zzd);
        SafeParcelWriter.writeStringList(parcel, 4, this.zze, false);
        SafeParcelWriter.writeInt(parcel, 5, this.zzf);
        SafeParcelWriter.writeInt(parcel, 6, this.zzg);
        zzbl zzblVar = this.zzh;
        SafeParcelWriter.writeIBinder(parcel, 7, zzblVar == null ? null : zzblVar.asBinder(), false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzi);
        SafeParcelWriter.writeInt(parcel, 9, this.zzj);
        zzbf zzbfVar = this.zzx;
        SafeParcelWriter.writeIBinder(parcel, 10, zzbfVar != null ? zzbfVar.asBinder() : null, false);
        SafeParcelWriter.writeInt(parcel, 11, this.zzk);
        SafeParcelWriter.writeInt(parcel, 12, this.zzl);
        SafeParcelWriter.writeString(parcel, 13, this.zzo, false);
        SafeParcelWriter.writeBundle(parcel, 14, this.zzp, false);
        SafeParcelWriter.writeInt(parcel, 15, this.zzq);
        SafeParcelWriter.writeParcelable(parcel, 16, this.zzr, i, false);
        SafeParcelWriter.writeInt(parcel, 17, this.zzs);
        SafeParcelWriter.writeParcelable(parcel, 18, this.zzt, i, false);
        SafeParcelWriter.writeInt(parcel, 19, this.zzm);
        SafeParcelWriter.writeFloat(parcel, 20, this.zzn);
        SafeParcelWriter.writeParcelable(parcel, 21, this.zzu, i, false);
        SafeParcelWriter.writeBoolean(parcel, 22, this.zzv);
        SafeParcelWriter.writeParcelable(parcel, 23, this.zzw, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final void zzb() throws IOException {
        ParcelFileDescriptor parcelFileDescriptorZza;
        zzml zzmlVar = this.zzb;
        int size = zzmlVar.size();
        for (int i = 0; i < size; i++) {
            zzbz zzbzVar = (zzbz) zzmlVar.get(i);
            ParcelFileDescriptor parcelFileDescriptorZza2 = zzbzVar.zza();
            if (parcelFileDescriptorZza2 != null) {
                parcelFileDescriptorZza2.close();
            }
            zzbv zzbvVarZzb = zzbzVar.zzb();
            if (zzbvVarZzb != null && zzbvVarZzb.zza() != null) {
                ParcelFileDescriptor parcelFileDescriptorZza3 = zzbvVarZzb.zza();
                parcelFileDescriptorZza3.getClass();
                parcelFileDescriptorZza3.close();
            }
        }
        Bundle bundle = this.zzp;
        if (bundle != null) {
            zzml zzmlVar2 = zza;
            int size2 = zzmlVar2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable((String) zzmlVar2.get(i2), ParcelFileDescriptor.class);
                if (parcelFileDescriptor != null) {
                    parcelFileDescriptor.close();
                }
            }
        }
        zzcb zzcbVar = this.zzt;
        if (zzcbVar == null || (parcelFileDescriptorZza = zzcbVar.zza()) == null) {
            return;
        }
        parcelFileDescriptorZza.close();
    }

    public zzcg(List list, float f, int i, List list2, int i2, int i3, IBinder iBinder, boolean z, int i4, IBinder iBinder2, int i5, int i6, String str, Bundle bundle, int i7, zzcw zzcwVar, int i8, zzcb zzcbVar, int i9, float f2, zzcp zzcpVar, boolean z2, zzdf zzdfVar) {
        zzbl zzbjVar;
        this.zzb = zzml.zzq(list);
        this.zzc = f;
        this.zzd = i;
        this.zzn = f2;
        this.zze = zzml.zzq(list2);
        this.zzf = i2;
        this.zzg = i3;
        zzbf zzbfVar = null;
        if (iBinder == null) {
            zzbjVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.ILLMStreamingCallback");
            zzbjVar = iInterfaceQueryLocalInterface instanceof zzbl ? (zzbl) iInterfaceQueryLocalInterface : new zzbj(iBinder);
        }
        this.zzh = zzbjVar;
        this.zzi = z;
        this.zzj = i4;
        if (iBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.apps.aicore.aidl.IImageEmbeddingCallback");
            zzbfVar = iInterfaceQueryLocalInterface2 instanceof zzbf ? (zzbf) iInterfaceQueryLocalInterface2 : new zzbf(iBinder2);
        }
        this.zzx = zzbfVar;
        this.zzk = i5;
        this.zzl = i6;
        this.zzo = str;
        this.zzp = bundle;
        this.zzq = i7;
        this.zzr = zzcwVar == null ? zzcw.zza : zzcwVar;
        this.zzs = i8;
        this.zzt = zzcbVar;
        this.zzm = i9;
        this.zzu = zzcpVar;
        this.zzv = z2;
        this.zzw = zzdfVar;
    }
}
