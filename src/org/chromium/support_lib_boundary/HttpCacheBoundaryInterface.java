package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: classes5.dex */
public interface HttpCacheBoundaryInterface {
    long getDefaultQuotaBytes();

    long getQuotaBytes();

    boolean isUsingDefaultQuota();

    void setQuotaBytes(long j);

    void useDefaultQuota();
}
