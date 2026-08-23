package com.google.android.gms.measurement.internal;

import java.util.function.Function;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzlc implements Function {
    static final /* synthetic */ zzlc zza = new zzlc();

    private /* synthetic */ zzlc() {
    }

    public /* synthetic */ Function andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        return Long.valueOf(((zzoh) obj).zzb);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
