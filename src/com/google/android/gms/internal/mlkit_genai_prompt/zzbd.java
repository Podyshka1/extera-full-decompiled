package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzbd extends zzl implements zzbe {
    public zzbd() {
        super("com.google.android.apps.aicore.aidl.IDownloadListener2");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzl
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            String string = parcel.readString();
            long j = parcel.readLong();
            zzm.zzc(parcel);
            zzb(string, j);
            return true;
        }
        if (i == 3) {
            String string2 = parcel.readString();
            long j2 = parcel.readLong();
            zzm.zzc(parcel);
            zzc(string2, j2);
            return true;
        }
        if (i != 4) {
            if (i != 5) {
                return false;
            }
            String string3 = parcel.readString();
            zzm.zzc(parcel);
            zze(string3);
            return true;
        }
        String string4 = parcel.readString();
        int i3 = parcel.readInt();
        String string5 = parcel.readString();
        zzm.zzc(parcel);
        zzd(string4, i3, string5);
        return true;
    }
}
