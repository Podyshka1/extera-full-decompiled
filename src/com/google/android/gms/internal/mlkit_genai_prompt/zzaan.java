package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.prompt.GenerateContentRequest;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaan {
    private final GenerateContentRequest zza;
    private final KClass zzb;
    private final boolean zzc;

    public zzaan(GenerateContentRequest generateContentRequest, KClass kClass, boolean z) {
        this.zza = generateContentRequest;
        this.zzb = kClass;
        this.zzc = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaan)) {
            return false;
        }
        zzaan zzaanVar = (zzaan) obj;
        return Intrinsics.areEqual(this.zza, zzaanVar.zza) && Intrinsics.areEqual(this.zzb, zzaanVar.zzb) && this.zzc == zzaanVar.zzc;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() * 31;
        KClass kClass = this.zzb;
        return ((iHashCode + (kClass == null ? 0 : kClass.hashCode())) * 31) + Boolean.hashCode(this.zzc);
    }

    public final String toString() {
        GenerateContentRequest generateContentRequest = this.zza;
        int length = String.valueOf(generateContentRequest).length();
        KClass kClass = this.zzb;
        int length2 = String.valueOf(kClass).length();
        boolean z = this.zzc;
        StringBuilder sb = new StringBuilder(length + 52 + length2 + 24 + String.valueOf(z).length() + 1);
        sb.append("RequestWrapper(generateContentRequest=");
        sb.append(generateContentRequest);
        sb.append(", outputClass=");
        sb.append(kClass);
        sb.append(", includeSchemaInPrompt=");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    public final GenerateContentRequest zza() {
        return this.zza;
    }

    public final KClass zzb() {
        return this.zzb;
    }

    public final boolean zzc() {
        return this.zzc;
    }
}
