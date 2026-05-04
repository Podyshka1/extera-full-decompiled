package com.google.android.recaptcha.internal;

import android.os.Build;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfa {
    public static final zzfa zza = new zzfa();

    private zzfa() {
    }

    public static final Map zza() {
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m1081to(-4, zzl.zzz), TuplesKt.m1081to(-12, zzl.zzA), TuplesKt.m1081to(-6, zzl.zzv), TuplesKt.m1081to(-11, zzl.zzx), TuplesKt.m1081to(-13, zzl.zzB), TuplesKt.m1081to(-14, zzl.zzC), TuplesKt.m1081to(-2, zzl.zzw), TuplesKt.m1081to(-7, zzl.zzD), TuplesKt.m1081to(-5, zzl.zzE), TuplesKt.m1081to(-9, zzl.zzF), TuplesKt.m1081to(-8, zzl.zzP), TuplesKt.m1081to(-15, zzl.zzy), TuplesKt.m1081to(-1, zzl.zzG), TuplesKt.m1081to(-3, zzl.zzI), TuplesKt.m1081to(-10, zzl.zzJ));
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            mapMutableMapOf.put(-16, zzl.zzH);
        }
        if (i >= 27) {
            mapMutableMapOf.put(1, zzl.zzL);
            mapMutableMapOf.put(2, zzl.zzM);
            mapMutableMapOf.put(0, zzl.zzN);
            mapMutableMapOf.put(3, zzl.zzO);
        }
        if (i >= 29) {
            mapMutableMapOf.put(4, zzl.zzK);
        }
        return mapMutableMapOf;
    }
}
