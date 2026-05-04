package androidx.credentials.internal;

import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.R$drawable;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialCustomException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialInterruptedException;
import androidx.credentials.exceptions.CreateCredentialNoCreateOptionException;
import androidx.credentials.exceptions.CreateCredentialProviderConfigurationException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialUnsupportedException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialCustomException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialProviderConfigurationException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.exceptions.NoCredentialException;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialException;
import androidx.credentials.exceptions.publickeycredential.GetPublicKeyCredentialException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConversionUtilsKt {
    public static final Bundle getFinalCreateCredentialData(CreateCredentialRequest request, Context context) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(context, "context");
        Bundle credentialData = request.getCredentialData();
        Bundle bundle = request.getDisplayInfo().toBundle();
        bundle.putParcelable("androidx.credentials.BUNDLE_KEY_CREDENTIAL_TYPE_ICON", Icon.createWithResource(context, request instanceof CreatePublicKeyCredentialRequest ? R$drawable.adx_ic_passkey : R$drawable.adx_ic_other_sign_in));
        credentialData.putBundle("androidx.credentials.BUNDLE_KEY_REQUEST_DISPLAY_INFO", bundle);
        return credentialData;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final GetCredentialException toJetpackGetException(String errorType, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(errorType, "errorType");
        switch (errorType.hashCode()) {
            case -781118336:
                if (errorType.equals("android.credentials.GetCredentialException.TYPE_UNKNOWN")) {
                    return new GetCredentialUnknownException(charSequence);
                }
                break;
            case -408155724:
                if (errorType.equals("androidx.credentials.TYPE_GET_CREDENTIAL_UNSUPPORTED_EXCEPTION")) {
                    return new GetCredentialUnsupportedException(charSequence);
                }
                break;
            case -45448328:
                if (errorType.equals("android.credentials.GetCredentialException.TYPE_INTERRUPTED")) {
                    return new GetCredentialInterruptedException(charSequence);
                }
                break;
            case 580557411:
                if (errorType.equals("android.credentials.GetCredentialException.TYPE_USER_CANCELED")) {
                    return new GetCredentialCancellationException(charSequence);
                }
                break;
            case 627896683:
                if (errorType.equals("android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL")) {
                    return new NoCredentialException(charSequence);
                }
                break;
            case 1594095913:
                if (errorType.equals("androidx.credentials.TYPE_GET_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION")) {
                    return new GetCredentialProviderConfigurationException(charSequence);
                }
                break;
        }
        if (StringsKt.startsWith$default(errorType, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false, 2, (Object) null)) {
            return GetPublicKeyCredentialException.Companion.createFrom(errorType, charSequence != null ? charSequence.toString() : null);
        }
        return new GetCredentialCustomException(errorType, charSequence);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final CreateCredentialException toJetpackCreateException(String errorType, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(errorType, "errorType");
        switch (errorType.hashCode()) {
            case -2055374133:
                if (errorType.equals("android.credentials.CreateCredentialException.TYPE_USER_CANCELED")) {
                    return new CreateCredentialCancellationException(charSequence);
                }
                break;
            case -1166690414:
                if (errorType.equals("androidx.credentials.TYPE_CREATE_CREDENTIAL_UNSUPPORTED_EXCEPTION")) {
                    return new CreateCredentialUnsupportedException(charSequence);
                }
                break;
            case -580283253:
                if (errorType.equals("androidx.credentials.TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION")) {
                    return new CreateCredentialProviderConfigurationException(charSequence);
                }
                break;
            case 1316905704:
                if (errorType.equals("android.credentials.CreateCredentialException.TYPE_UNKNOWN")) {
                    return new CreateCredentialUnknownException(charSequence);
                }
                break;
            case 2092588512:
                if (errorType.equals("android.credentials.CreateCredentialException.TYPE_INTERRUPTED")) {
                    return new CreateCredentialInterruptedException(charSequence);
                }
                break;
            case 2131915191:
                if (errorType.equals("android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS")) {
                    return new CreateCredentialNoCreateOptionException(charSequence);
                }
                break;
        }
        if (StringsKt.startsWith$default(errorType, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false, 2, (Object) null)) {
            return CreatePublicKeyCredentialException.Companion.createFrom(errorType, charSequence != null ? charSequence.toString() : null);
        }
        return new CreateCredentialCustomException(errorType, charSequence);
    }
}
