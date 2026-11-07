package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzhy {
    public static zzhx zzx() {
        zzhh zzhhVar = new zzhh();
        zzhhVar.zzb(0.1f);
        zzhhVar.zzc(3);
        zzhhVar.zze(zzml.zzk());
        zzhhVar.zzf(0);
        zzhhVar.zzg(0);
        zzhhVar.zzk(0);
        zzhhVar.zzl(0);
        zzhhVar.zzm(0);
        zzhhVar.zzj(true);
        zzhhVar.zzh(1);
        zzhhVar.zzn(123);
        zzhhVar.zzo(zzeb.zza);
        zzhhVar.zzp(0);
        zzhhVar.zzd(1.0f);
        zzhhVar.zzs(false);
        zzhhVar.zzt(zzja.zza);
        return zzhhVar;
    }

    public abstract zzml zza();

    public abstract float zzb();

    public abstract int zzc();

    public abstract float zzd();

    public abstract zzml zze();

    public abstract int zzf();

    public abstract int zzg();

    public abstract int zzh();

    public abstract zzik zzi();

    public abstract boolean zzj();

    public abstract int zzk();

    public abstract int zzl();

    public abstract int zzm();

    public abstract File zzn();

    public abstract File zzo();

    public abstract File zzp();

    public abstract int zzq();

    public abstract zzeb zzr();

    public abstract int zzs();

    public abstract zzhu zzt();

    public abstract zzib zzu();

    public abstract boolean zzv();

    public abstract zzja zzw();

    public final zzcg zzy(Context context, Executor executor) {
        zzcf zzcfVarZza = zzcg.zza();
        zzhu zzhuVarZzt = zzt();
        zzdf zzdfVar = null;
        if (zzhuVarZzt != null) {
            ParcelFileDescriptor parcelFileDescriptorZzb = zzhuVarZzt.zzb();
            zzla.zzd(parcelFileDescriptorZzb, "Cache file should not be null");
            long statSize = parcelFileDescriptorZzb.getStatSize();
            long statSize2 = parcelFileDescriptorZzb.getStatSize();
            if (statSize > 209715200) {
                f$$ExternalSyntheticBUOutline1.m215m(zzlb.zzd("Cache file should be less than %s bytes: %s", 209715200, Long.valueOf(statSize2)));
                return null;
            }
            zzml zzmlVarZza = zzhuVarZzt.zza();
            zzla.zza(zzmlVarZza.size() <= 1, "Only single message is supported for now.");
            ArrayList arrayList = new ArrayList();
            int size = zzmlVarZza.size();
            for (int i = 0; i < size; i++) {
                zzhs zzhsVar = (zzhs) zzmlVarZza.get(i);
                if (zzhsVar.zzh() != 0) {
                    int iZzh = zzhsVar.zzh();
                    zzar$$ExternalSyntheticBUOutline1.m321m(String.valueOf(iZzh).length() + 52, "Only TEXT type is supported for now. Received type: ", iZzh);
                    return null;
                }
                int iZza = zzhsVar.zza();
                String strZzb = zzhsVar.zzb();
                strZzb.getClass();
                arrayList.add(zzbz.zzd(iZza, strZzb));
            }
            zzcfVarZza.zzp(zzcb.zzb(arrayList, parcelFileDescriptorZzb));
        }
        zzib zzibVarZzu = zzu();
        if (zzibVarZzu != null) {
            zzcfVarZza.zzs(zzibVarZzu.zzw());
        }
        zzik zzikVarZzi = zzi();
        if (zzikVarZzi != null) {
            zzcfVarZza.zzg(new zzhw(this, zzikVarZzi));
        }
        Bundle bundle = new Bundle();
        int i2 = zzml.$r8$clinit;
        zzmh zzmhVar = new zzmh();
        new ArrayList();
        zzml zzmlVarZza2 = zza();
        int size2 = zzmlVarZza2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            zzhs zzhsVar2 = (zzhs) zzmlVarZza2.get(i3);
            if (zzhsVar2.zzh() != 0) {
                zzhsVar2.zze();
                int iZza2 = zzhsVar2.zza();
                Bitmap bitmapZzc = zzhsVar2.zzc();
                Bitmap bitmapAsShared = bitmapZzc == null ? null : bitmapZzc.asShared();
                bitmapAsShared.getClass();
                zzmhVar.zzd(zzbz.zzc(iZza2, bitmapAsShared, false));
            } else {
                int iZza3 = zzhsVar2.zza();
                String strZzb2 = zzhsVar2.zzb();
                strZzb2.getClass();
                zzmhVar.zzd(zzbz.zzd(iZza3, strZzb2));
            }
        }
        if (bundle.hasFileDescriptors()) {
            zzcfVarZza.zzl(bundle);
        }
        zzcfVarZza.zza(zzmhVar.zze());
        zzcfVarZza.zzb(zzb());
        zzcfVarZza.zzc(zzc());
        zzcfVarZza.zzr(zzd());
        zzcfVarZza.zzd(zze());
        zzcfVarZza.zze(zzf());
        zzcfVarZza.zzf(zzg());
        zzcfVarZza.zzh(zzj());
        zzcfVarZza.zzi(zzh());
        zzcfVarZza.zzj(zzk());
        zzcfVarZza.zzk(zzl());
        zzcfVarZza.zzq(0);
        zzcfVarZza.zzm(zzq());
        zzcfVarZza.zzn(zzcv.zza());
        zzcfVarZza.zzo(0);
        zzcfVarZza.zzt(zzv());
        if (!zzw().zza().isEmpty()) {
            zzja zzjaVarZzw = zzw();
            zzmh zzmhVar2 = new zzmh();
            zzml zzmlVarZza3 = zzjaVarZzw.zza();
            if (zzmlVarZza3.size() > 0) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzmlVarZza3.get(0));
                throw null;
            }
            zzdfVar = new zzdf(zzmhVar2.zze());
        }
        zzcfVarZza.zzu(zzdfVar);
        return zzcfVarZza.zzv();
    }
}
