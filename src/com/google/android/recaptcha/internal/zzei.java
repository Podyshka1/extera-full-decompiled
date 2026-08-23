package com.google.android.recaptcha.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzei implements zzen {
    private final Context zzb;

    public zzei(Context context) {
        this.zzb = context;
    }

    @Override // com.google.android.recaptcha.internal.zzen
    /* JADX INFO: renamed from: cs */
    public final /* synthetic */ Object mo476cs(Object[] objArr) {
        return zzel.zza(this, objArr);
    }

    @Override // com.google.android.recaptcha.internal.zzen
    @SuppressLint({"UnprotectedReceiver"})
    public final Object zza(Object... objArr) throws zzae {
        Intent intentRegisterReceiver = this.zzb.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            throw new zzae(7, 19, null);
        }
        int intExtra = intentRegisterReceiver.getIntExtra("health", -1);
        int intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
        int intExtra3 = intentRegisterReceiver.getIntExtra("plugged", -1);
        boolean booleanExtra = intentRegisterReceiver.getBooleanExtra("present", false);
        int intExtra4 = intentRegisterReceiver.getIntExtra("scale", -1);
        int intExtra5 = intentRegisterReceiver.getIntExtra("status", -1);
        String stringExtra = intentRegisterReceiver.getStringExtra("technology");
        if (stringExtra == null) {
            stringExtra = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return new Object[]{Integer.valueOf(intExtra), Integer.valueOf(intExtra2), Integer.valueOf(intExtra3), Boolean.valueOf(booleanExtra), Integer.valueOf(intExtra4), Integer.valueOf(intExtra5), stringExtra, Integer.valueOf(intentRegisterReceiver.getIntExtra("temperature", -1)), Integer.valueOf(intentRegisterReceiver.getIntExtra("voltage", -1))};
    }
}
