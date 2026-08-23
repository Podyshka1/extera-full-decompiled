package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0004\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0015\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/credentials/exceptions/ClearCredentialProviderConfigurationException;", "Landroidx/credentials/exceptions/ClearCredentialException;", "errorMessage", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/CharSequence;)V", "Companion", "credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class ClearCredentialProviderConfigurationException extends ClearCredentialException {
    @JvmOverloads
    public ClearCredentialProviderConfigurationException(CharSequence charSequence) {
        super("androidx.credentials.TYPE_CLEAR_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION", charSequence);
    }
}
