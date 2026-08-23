package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zah extends zad {
    public final ListenerHolder.ListenerKey zab;

    public zah(ListenerHolder.ListenerKey listenerKey, TaskCompletionSource taskCompletionSource) {
        super(4, taskCompletionSource);
        this.zab = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zaa(zabk zabkVar) {
        zacd zacdVar = (zacd) zabkVar.zag().get(this.zab);
        if (zacdVar == null) {
            return null;
        }
        return zacdVar.zaa.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zab(zabk zabkVar) {
        zacd zacdVar = (zacd) zabkVar.zag().get(this.zab);
        return zacdVar != null && zacdVar.zaa.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void zae(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zag(zabk zabkVar) {
        zacd zacdVar = (zacd) zabkVar.zag().remove(this.zab);
        if (zacdVar == null) {
            this.zaa.trySetResult(Boolean.FALSE);
            return;
        }
        zacdVar.zab.unregisterListener(zabkVar.zaf(), this.zaa);
        zacdVar.zaa.clearListener();
    }
}
