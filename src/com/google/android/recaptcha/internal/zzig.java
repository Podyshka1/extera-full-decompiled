package com.google.android.recaptcha.internal;

import android.content.Context;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzig implements Function1 {
    static final /* synthetic */ zzig zza = new zzig();

    private /* synthetic */ zzig() {
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ Object invoke(Object obj) {
        zzih zzihVar = zzih.zza;
        return IntegrityManagerFactory.createStandard((Context) obj);
    }
}
