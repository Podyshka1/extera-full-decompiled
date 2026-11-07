package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.j */
/* JADX INFO: loaded from: classes5.dex */
public final class C1790j implements InterfaceC1791k {
    @Override // com.google.android.play.core.integrity.InterfaceC1791k
    /* JADX INFO: renamed from: a */
    public final ApiException mo382a(Bundle bundle) {
        int i = bundle.getInt("error");
        if (i == 0) {
            return null;
        }
        return new StandardIntegrityException(i, null);
    }
}
