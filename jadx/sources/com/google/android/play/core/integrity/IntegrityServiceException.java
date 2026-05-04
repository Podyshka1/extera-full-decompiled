package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.integrity.model.C1734a;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class IntegrityServiceException extends ApiException {

    /* JADX INFO: renamed from: a */
    private final Throwable f445a;

    IntegrityServiceException(int i, Throwable th) {
        super(new Status(i, String.format(Locale.ROOT, "Integrity API error (%d): %s.", Integer.valueOf(i), C1734a.m417a(i))));
        if (i == 0) {
            throw new IllegalArgumentException("ErrorCode should not be 0.");
        }
        this.f445a = th;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f445a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
