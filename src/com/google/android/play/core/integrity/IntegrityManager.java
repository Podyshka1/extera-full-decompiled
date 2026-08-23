package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes5.dex */
public interface IntegrityManager {
    Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest);
}
