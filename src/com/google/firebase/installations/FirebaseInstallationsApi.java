package com.google.firebase.installations;

import com.google.android.gms.tasks.Task;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.installations.internal.FidListenerHandle;

/* JADX INFO: loaded from: classes.dex */
public interface FirebaseInstallationsApi {
    void clearFidCache();

    Task<String> getId();

    Task<InstallationTokenResult> getToken(boolean z);

    FidListenerHandle registerFidListener(FidListener fidListener);
}
