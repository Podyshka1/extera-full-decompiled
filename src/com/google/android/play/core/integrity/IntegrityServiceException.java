package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.integrity.model.C1685a;
import java.util.Locale;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class IntegrityServiceException extends ApiException {

    /* JADX INFO: renamed from: a */
    private final Throwable f298a;

    public IntegrityServiceException(int i, Throwable th) {
        super(new Status(i, String.format(Locale.ROOT, "Integrity API error (%d): %s.", Integer.valueOf(i), C1685a.m381a(i))));
        if (i != 0) {
            this.f298a = th;
        } else {
            f$$ExternalSyntheticBUOutline1.m178m("ErrorCode should not be 0.");
            throw null;
        }
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f298a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
