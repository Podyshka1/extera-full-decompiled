package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.integrity.model.AbstractC1792b;
import java.util.Locale;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class StandardIntegrityException extends ApiException {

    /* JADX INFO: renamed from: a */
    private final Throwable f293a;

    public StandardIntegrityException(int i, Throwable th) {
        super(new Status(i, String.format(Locale.ROOT, "Standard Integrity API error (%d): %s.", Integer.valueOf(i), AbstractC1792b.m383a(i))));
        if (i != 0) {
            this.f293a = th;
        } else {
            f$$ExternalSyntheticBUOutline1.m212m("ErrorCode should not be 0.");
            throw null;
        }
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f293a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
