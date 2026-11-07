package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Objects;
import java.util.function.Function;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzlq implements Function {
    static final /* synthetic */ zzlq zza = new zzlq();

    private /* synthetic */ zzlq() {
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        zzmr zzmrVar = (zzmr) obj;
        int i = zzmrVar.zzb;
        if (i == 0) {
            return zznm.zza;
        }
        Object[] objArr = zzmrVar.zza;
        if (i == 1) {
            Object obj2 = objArr[0];
            Objects.requireNonNull(obj2);
            return new zznp(obj2);
        }
        zzms zzmsVarZzl = zzms.zzl(i, objArr);
        zzmrVar.zzb = zzmsVarZzl.size();
        zzmrVar.zzc = true;
        return zzmsVarZzl;
    }
}
