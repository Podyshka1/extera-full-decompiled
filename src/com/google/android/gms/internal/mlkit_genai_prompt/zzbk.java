package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzbk extends zzl implements zzbl {
    public zzbk() {
        super("com.google.android.apps.aicore.aidl.ILLMStreamingCallback");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzl
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            return false;
        }
        int i3 = parcel.readInt();
        String string = parcel.readString();
        zzm.zzc(parcel);
        zzd(i3, string);
        return true;
    }
}
