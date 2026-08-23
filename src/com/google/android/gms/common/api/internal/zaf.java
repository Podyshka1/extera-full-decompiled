package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zaf extends zad {
    public final zacd zab;

    public zaf(zacd zacdVar, TaskCompletionSource taskCompletionSource) {
        super(3, taskCompletionSource);
        this.zab = zacdVar;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zaa(zabk zabkVar) {
        return this.zab.zaa.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zab(zabk zabkVar) {
        return this.zab.zaa.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void zae(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zag(zabk zabkVar) {
        zacd zacdVar = this.zab;
        RegisterListenerMethod registerListenerMethod = zacdVar.zaa;
        registerListenerMethod.registerListener(zabkVar.zaf(), this.zaa);
        ListenerHolder.ListenerKey listenerKey = registerListenerMethod.getListenerKey();
        if (listenerKey != null) {
            zabkVar.zag().put(listenerKey, zacdVar);
        }
    }
}
