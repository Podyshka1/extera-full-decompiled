package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzyh {
    public static final zzyh zza = new zzyh();

    private zzyh() {
    }

    public final zzhz zza(KClass kClass) {
        zzhz zzhzVarZzu;
        if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(String.class))) {
            zzhzVarZzu = zzib.zzu();
            zzhzVarZzu.zzm(2);
        } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Integer.TYPE))) {
            zzhzVarZzu = zzib.zzu();
            zzhzVarZzu.zzm(4);
            zzhzVarZzu.zza("int32");
        } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Long.TYPE))) {
            zzhzVarZzu = zzib.zzu();
            zzhzVarZzu.zzm(4);
            zzhzVarZzu.zza("int64");
        } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE))) {
            zzhzVarZzu = zzib.zzu();
            zzhzVarZzu.zzm(5);
        } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Float.TYPE))) {
            zzhzVarZzu = zzib.zzu();
            zzhzVarZzu.zzm(3);
            zzhzVarZzu.zza("float");
        } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Double.TYPE))) {
            zzhzVarZzu = zzib.zzu();
            zzhzVarZzu.zzm(3);
            zzhzVarZzu.zza("double");
        } else {
            zzhzVarZzu = null;
        }
        if (zzhzVarZzu != null) {
            return zzhzVarZzu;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzyg.zzb().get(kClass));
        f$$ExternalSyntheticBUOutline1.m215m(String.valueOf(kClass.getSimpleName()).concat(" is neither a registered @Generable type nor a directly supported basic type (String, Int, Boolean, etc.)."));
        return null;
    }
}
