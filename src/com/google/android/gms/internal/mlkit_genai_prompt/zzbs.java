package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcelable;
import java.util.Locale;
import java.util.function.Function;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzbs implements Function {
    static final /* synthetic */ zzbs zza = new zzbs();

    private /* synthetic */ zzbs() {
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        zzjc zzjcVar = (zzjc) obj;
        Parcelable.Creator<zzbt> creator = zzbt.CREATOR;
        return String.format(Locale.getDefault(), "(%d, %d)", Integer.valueOf(zzjcVar.zza()), Integer.valueOf(zzjcVar.zzc()));
    }
}
