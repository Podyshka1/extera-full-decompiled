package androidx.credentials.exceptions.publickeycredential;

import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\r\n\u0002\b\b\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/exceptions/publickeycredential/SignalCredentialRateLimitExceededException;", "Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;", _UrlKt.FRAGMENT_ENCODE_SET, "retryMillis", _UrlKt.FRAGMENT_ENCODE_SET, "errorMessage", "<init>", "(JLjava/lang/CharSequence;)V", "J", "getRetryMillis", "()J", "Companion", "credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class SignalCredentialRateLimitExceededException extends SignalCredentialStateException {
    private final long retryMillis;

    @JvmOverloads
    public SignalCredentialRateLimitExceededException(long j, CharSequence charSequence) {
        super("androidx.credentials.SignalCredentialStateException.RATE_LIMIT_EXCEEDED", charSequence);
        this.retryMillis = j;
    }
}
