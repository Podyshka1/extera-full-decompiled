package com.google.android.recaptcha.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzax {
    private zzax() {
    }

    public /* synthetic */ zzax(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int zzb(String str) {
        return Integer.parseInt(StringsKt.replace$default("18.4.0", ".", _UrlKt.FRAGMENT_ENCODE_SET, false, 4, (Object) null));
    }
}
