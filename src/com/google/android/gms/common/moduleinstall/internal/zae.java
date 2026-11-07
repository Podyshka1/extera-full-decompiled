package com.google.android.gms.common.moduleinstall.internal;

import android.os.IInterface;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;

/* JADX INFO: loaded from: classes4.dex */
public interface zae extends IInterface {
    void zab(Status status, ModuleAvailabilityResponse moduleAvailabilityResponse);

    void zac(Status status, ModuleInstallResponse moduleInstallResponse);

    void zad(Status status, ModuleInstallIntentResponse moduleInstallIntentResponse);

    void zae(Status status);
}
