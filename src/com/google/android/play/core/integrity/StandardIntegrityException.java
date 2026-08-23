package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.integrity.model.C1686b;
import java.util.Locale;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class StandardIntegrityException extends ApiException {

    /* JADX INFO: renamed from: a */
    private final Throwable f299a;

    public StandardIntegrityException(int i, Throwable th) {
        super(new Status(i, String.format(Locale.ROOT, "Standard Integrity API error (%d): %s.", Integer.valueOf(i), C1686b.m382a(i))));
        if (i != 0) {
            this.f299a = th;
        } else {
            f$$ExternalSyntheticBUOutline1.m178m("ErrorCode should not be 0.");
            throw null;
        }
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f299a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
