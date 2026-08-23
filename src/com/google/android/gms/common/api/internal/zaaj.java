package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zaaj implements zabf {
    private final zabi zaa;
    private boolean zab = false;

    public zaaj(zabi zabiVar) {
        this.zaa = zabiVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final BaseImplementation$ApiMethodImpl zab(BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl) {
        try {
            this.zaa.zag.zai.zaa(baseImplementation$ApiMethodImpl);
            zabe zabeVar = this.zaa.zag;
            Api.Client client = (Api.Client) zabeVar.zac.get(baseImplementation$ApiMethodImpl.getClientKey());
            Preconditions.checkNotNull(client, "Appropriate Api was not requested.");
            if (client.isConnected() || !this.zaa.zab.containsKey(baseImplementation$ApiMethodImpl.getClientKey())) {
                baseImplementation$ApiMethodImpl.run(client);
                return baseImplementation$ApiMethodImpl;
            }
            baseImplementation$ApiMethodImpl.setFailedResult(new Status(17));
            return baseImplementation$ApiMethodImpl;
        } catch (DeadObjectException unused) {
            this.zaa.zal(new zaah(this, this));
            return baseImplementation$ApiMethodImpl;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zad() {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zae() {
        if (this.zab) {
            this.zab = false;
            this.zaa.zal(new zaai(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zag(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zah(ConnectionResult connectionResult, Api api, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zai(int i) {
        this.zaa.zak(null);
        this.zaa.zah.zac(i, this.zab);
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final boolean zaj() {
        if (this.zab) {
            return false;
        }
        Set set = this.zaa.zag.zah;
        if (set == null || set.isEmpty()) {
            this.zaa.zak(null);
            return true;
        }
        this.zab = true;
        Iterator it = set.iterator();
        if (!it.hasNext()) {
            return false;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
        throw null;
    }
}
