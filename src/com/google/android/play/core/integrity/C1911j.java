package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.j */
/* JADX INFO: loaded from: classes5.dex */
public final class C1911j implements InterfaceC1912k {
    @Override // com.google.android.play.core.integrity.InterfaceC1912k
    /* JADX INFO: renamed from: a */
    public final ApiException mo406a(Bundle bundle) {
        int i = bundle.getInt("error");
        if (i == 0) {
            return null;
        }
        return new StandardIntegrityException(i, null);
    }
}
