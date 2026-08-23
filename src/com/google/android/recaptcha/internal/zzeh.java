package com.google.android.recaptcha.internal;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzeh implements zzen {
    private final Context zzb;

    public zzeh(Context context) {
        this.zzb = context;
    }

    @Override // com.google.android.recaptcha.internal.zzen
    /* JADX INFO: renamed from: cs */
    public final /* synthetic */ Object mo476cs(Object[] objArr) {
        return zzel.zza(this, objArr);
    }

    @Override // com.google.android.recaptcha.internal.zzen
    public final Object zza(Object... objArr) {
        Context context = this.zzb;
        Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.google.android.gsf.gservices"), null, null, new String[]{"android_id"}, null);
        if (cursorQuery == null || !cursorQuery.moveToFirst() || cursorQuery.getColumnCount() < 2) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String strValueOf = String.valueOf(Long.parseLong(cursorQuery.getString(1)));
        cursorQuery.close();
        return strValueOf;
    }
}
