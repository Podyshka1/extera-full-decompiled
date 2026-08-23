package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zbd implements Api.ApiOptions {
    public static final zbd zba = new zbd(new zbc());
    private final String zbb = null;
    private final boolean zbc;
    private final String zbd;

    public zbd(zbc zbcVar) {
        this.zbc = zbcVar.zba.booleanValue();
        this.zbd = zbcVar.zbb;
    }

    static /* bridge */ /* synthetic */ String zbb(zbd zbdVar) {
        String str = zbdVar.zbb;
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zbd)) {
            return false;
        }
        zbd zbdVar = (zbd) obj;
        return Objects.equal(null, null) && this.zbc == zbdVar.zbc && Objects.equal(this.zbd, zbdVar.zbd);
    }

    public final int hashCode() {
        return Objects.hashCode(null, Boolean.valueOf(this.zbc), this.zbd);
    }

    public final Bundle zba() {
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", null);
        bundle.putBoolean("force_save_dialog", this.zbc);
        bundle.putString("log_session_id", this.zbd);
        return bundle;
    }
}
