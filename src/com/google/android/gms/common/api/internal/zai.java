package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zai {
    public final int zac;

    public zai(int i) {
        this.zac = i;
    }

    public static /* synthetic */ Status zah(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void zac(Status status);

    public abstract void zad(Exception exc);

    public abstract void zae(zaaa zaaaVar, boolean z);

    public abstract void zaf(zabk zabkVar);
}
