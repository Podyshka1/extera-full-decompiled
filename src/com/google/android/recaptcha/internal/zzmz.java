package com.google.android.recaptcha.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
final class zzmz implements Function1 {
    final /* synthetic */ UrlRequest zza;

    public zzmz(String str, UrlRequest urlRequest) {
        this.zza = urlRequest;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ Object invoke(Object obj) {
        this.zza.cancel();
        return Unit.INSTANCE;
    }
}
