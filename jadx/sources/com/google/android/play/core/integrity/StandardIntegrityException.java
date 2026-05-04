package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.integrity.model.C1735b;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class StandardIntegrityException extends ApiException {

    /* JADX INFO: renamed from: a */
    private final Throwable f446a;

    StandardIntegrityException(int i, Throwable th) {
        super(new Status(i, String.format(Locale.ROOT, "Standard Integrity API error (%d): %s.", Integer.valueOf(i), C1735b.m418a(i))));
        if (i == 0) {
            throw new IllegalArgumentException("ErrorCode should not be 0.");
        }
        this.f446a = th;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f446a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
