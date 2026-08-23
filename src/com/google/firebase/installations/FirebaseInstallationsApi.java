package com.google.firebase.installations;

import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes.dex */
public interface FirebaseInstallationsApi {
    Task getId();

    Task getToken(boolean z);
}
