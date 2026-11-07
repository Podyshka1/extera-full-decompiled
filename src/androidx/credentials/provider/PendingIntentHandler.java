package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.Credential;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.internal.ConversionUtilsKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00022\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/provider/PendingIntentHandler;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "Api23Impl", "Api34Impl", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class PendingIntentHandler {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Landroidx/credentials/provider/PendingIntentHandler$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "type", "Landroid/content/Intent;", "intent", "Landroidx/credentials/CreateCredentialResponse;", "retrieveCreateCredentialResponse", "(Ljava/lang/String;Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/GetCredentialResponse;", "retrieveGetCredentialResponse", "(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "retrieveGetCredentialException", "(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;", "Landroidx/credentials/exceptions/CreateCredentialException;", "retrieveCreateCredentialException", "(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;", "TAG", "Ljava/lang/String;", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CreateCredentialResponse retrieveCreateCredentialResponse(String type, Intent intent) {
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.INSTANCE.extractCreateCredentialResponse(type, intent);
            }
            return Api23Impl.INSTANCE.extractCreateCredentialResponse(intent);
        }

        @JvmStatic
        public final GetCredentialResponse retrieveGetCredentialResponse(Intent intent) {
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.INSTANCE.extractGetCredentialResponse(intent);
            }
            return Api23Impl.INSTANCE.extractGetCredentialResponse(intent);
        }

        @JvmStatic
        public final GetCredentialException retrieveGetCredentialException(Intent intent) {
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.INSTANCE.extractGetCredentialException(intent);
            }
            return Api23Impl.INSTANCE.extractGetCredentialException(intent);
        }

        @JvmStatic
        public final CreateCredentialException retrieveCreateCredentialException(Intent intent) {
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.INSTANCE.extractCreateCredentialException(intent);
            }
            return Api23Impl.INSTANCE.extractCreateCredentialException(intent);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SuppressLint({"ObsoleteSdkInt"})
    public static final class Api23Impl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0014R\u0014\u0010\u001a\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0014R\u0014\u0010\u001b\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0014¨\u0006\u001c"}, d2 = {"Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroid/content/Intent;", "intent", "Landroidx/credentials/CreateCredentialResponse;", "extractCreateCredentialResponse", "(Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/GetCredentialResponse;", "extractGetCredentialResponse", "(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "extractGetCredentialException", "(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;", "Landroidx/credentials/exceptions/CreateCredentialException;", "extractCreateCredentialException", "(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;", _UrlKt.FRAGMENT_ENCODE_SET, "EXTRA_CREATE_CREDENTIAL_REQUEST", "Ljava/lang/String;", "EXTRA_BEGIN_GET_CREDENTIAL_REQUEST", "EXTRA_CREATE_CREDENTIAL_RESPONSE", "EXTRA_GET_CREDENTIAL_REQUEST", "EXTRA_GET_CREDENTIAL_RESPONSE", "EXTRA_BEGIN_GET_CREDENTIAL_RESPONSE", "EXTRA_GET_CREDENTIAL_EXCEPTION", "EXTRA_CREATE_CREDENTIAL_EXCEPTION", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final CreateCredentialResponse extractCreateCredentialResponse(Intent intent) {
                CreateCredentialResponse.Companion companion = CreateCredentialResponse.INSTANCE;
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE");
                if (bundleExtra == null) {
                    return null;
                }
                return companion.fromBundle(bundleExtra);
            }

            @JvmStatic
            public final GetCredentialResponse extractGetCredentialResponse(Intent intent) {
                GetCredentialResponse.Companion companion = GetCredentialResponse.INSTANCE;
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE");
                if (bundleExtra == null) {
                    return null;
                }
                return companion.fromBundle(bundleExtra);
            }

            @JvmStatic
            public final GetCredentialException extractGetCredentialException(Intent intent) {
                GetCredentialException.Companion companion = GetCredentialException.INSTANCE;
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION");
                if (bundleExtra == null) {
                    return null;
                }
                return companion.fromBundle(bundleExtra);
            }

            @JvmStatic
            public final CreateCredentialException extractCreateCredentialException(Intent intent) {
                CreateCredentialException.Companion companion = CreateCredentialException.INSTANCE;
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION");
                if (bundleExtra == null) {
                    return null;
                }
                return companion.fromBundle(bundleExtra);
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0001\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/provider/PendingIntentHandler$Api34Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api34Impl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "type", "Landroid/content/Intent;", "intent", "Landroidx/credentials/CreateCredentialResponse;", "extractCreateCredentialResponse", "(Ljava/lang/String;Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/GetCredentialResponse;", "extractGetCredentialResponse", "(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "extractCreateCredentialException", "(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;", "Landroidx/credentials/exceptions/GetCredentialException;", "extractGetCredentialException", "(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nPendingIntentHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PendingIntentHandler.kt\nandroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,722:1\n1#2:723\n*E\n"})
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final CreateCredentialResponse extractCreateCredentialResponse(String type, Intent intent) {
                android.credentials.CreateCredentialResponse createCredentialResponse = (android.credentials.CreateCredentialResponse) intent.getParcelableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE", android.credentials.CreateCredentialResponse.class);
                if (createCredentialResponse == null) {
                    return null;
                }
                return CreateCredentialResponse.INSTANCE.createFrom(type, createCredentialResponse.getData());
            }

            @JvmStatic
            public final GetCredentialResponse extractGetCredentialResponse(Intent intent) {
                android.credentials.GetCredentialResponse getCredentialResponse = (android.credentials.GetCredentialResponse) intent.getParcelableExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE", android.credentials.GetCredentialResponse.class);
                if (getCredentialResponse == null) {
                    return null;
                }
                return new GetCredentialResponse(Credential.INSTANCE.createFrom(getCredentialResponse.getCredential()));
            }

            @JvmStatic
            public final CreateCredentialException extractCreateCredentialException(Intent intent) {
                android.credentials.CreateCredentialException createCredentialException = (android.credentials.CreateCredentialException) intent.getSerializableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION", android.credentials.CreateCredentialException.class);
                if (createCredentialException == null) {
                    return null;
                }
                return ConversionUtilsKt.toJetpackCreateException(createCredentialException.getType(), createCredentialException.getMessage());
            }

            @JvmStatic
            public final GetCredentialException extractGetCredentialException(Intent intent) {
                android.credentials.GetCredentialException getCredentialException = (android.credentials.GetCredentialException) intent.getSerializableExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION", android.credentials.GetCredentialException.class);
                if (getCredentialException == null) {
                    return null;
                }
                return ConversionUtilsKt.toJetpackGetException(getCredentialException.getType(), getCredentialException.getMessage());
            }
        }
    }
}
