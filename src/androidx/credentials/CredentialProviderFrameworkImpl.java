package androidx.credentials;

import android.annotation.SuppressLint;
import android.content.Context;
import android.credentials.CreateCredentialRequest;
import android.credentials.GetCredentialRequest;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.OutcomeReceiver;
import android.util.Log;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialUnsupportedException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.internal.ConversionUtilsKt;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000 =2\u00020\u0001:\u0001=B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0019H\u0003¢\u0006\u0004\b\u001a\u0010\u001bJE\u0010$\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00152\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 H\u0016¢\u0006\u0004\b$\u0010%JE\u0010(\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0 H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010.\u001a\u00020\"2\u0006\u0010+\u001a\u00020*H\u0000¢\u0006\u0004\b,\u0010-J\u0017\u00102\u001a\u00020'2\u0006\u0010+\u001a\u00020/H\u0000¢\u0006\u0004\b0\u00101J\u0017\u00107\u001a\u00020!2\u0006\u00104\u001a\u000203H\u0000¢\u0006\u0004\b5\u00106J\u000f\u00108\u001a\u00020\tH\u0016¢\u0006\u0004\b8\u00109R\u0016\u0010;\u001a\u0004\u0018\u00010:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006>"}, d2 = {"Landroidx/credentials/CredentialProviderFrameworkImpl;", "Landroidx/credentials/CredentialProvider;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "handleNullCredMan", _UrlKt.FRAGMENT_ENCODE_SET, "isCredmanDisabled", "(Lkotlin/jvm/functions/Function0;)Z", "Landroidx/credentials/CreateCredentialRequest;", PluginsConstants.REQUEST, "Landroid/credentials/CreateCredentialRequest;", "convertCreateRequestToFrameworkClass", "(Landroidx/credentials/CreateCredentialRequest;Landroid/content/Context;)Landroid/credentials/CreateCredentialRequest;", "Landroid/credentials/CreateCredentialRequest$Builder;", "builder", "setOriginForCreateRequest", "(Landroidx/credentials/CreateCredentialRequest;Landroid/credentials/CreateCredentialRequest$Builder;)V", "Landroidx/credentials/GetCredentialRequest;", "Landroid/credentials/GetCredentialRequest;", "convertGetRequestToFrameworkClass", "(Landroidx/credentials/GetCredentialRequest;)Landroid/credentials/GetCredentialRequest;", "Landroid/credentials/GetCredentialRequest$Builder;", "setOriginForGetRequest", "(Landroidx/credentials/GetCredentialRequest;Landroid/credentials/GetCredentialRequest$Builder;)V", "Landroid/os/CancellationSignal;", "cancellationSignal", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/credentials/CredentialManagerCallback;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", Callback.METHOD_NAME, "onGetCredential", "(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "onCreateCredential", "(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V", "Landroid/credentials/GetCredentialException;", "error", "convertToJetpackGetException$credentials", "(Landroid/credentials/GetCredentialException;)Landroidx/credentials/exceptions/GetCredentialException;", "convertToJetpackGetException", "Landroid/credentials/CreateCredentialException;", "convertToJetpackCreateException$credentials", "(Landroid/credentials/CreateCredentialException;)Landroidx/credentials/exceptions/CreateCredentialException;", "convertToJetpackCreateException", "Landroid/credentials/GetCredentialResponse;", PluginsConstants.RESPONSE, "convertGetResponseToJetpackClass$credentials", "(Landroid/credentials/GetCredentialResponse;)Landroidx/credentials/GetCredentialResponse;", "convertGetResponseToJetpackClass", "isAvailableOnDevice", "()Z", "Landroid/credentials/CredentialManager;", "credentialManager", "Landroid/credentials/CredentialManager;", "Companion", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCredentialProviderFrameworkImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CredentialProviderFrameworkImpl.kt\nandroidx/credentials/CredentialProviderFrameworkImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,378:1\n1869#2,2:379\n*S KotlinDebug\n*F\n+ 1 CredentialProviderFrameworkImpl.kt\nandroidx/credentials/CredentialProviderFrameworkImpl\n*L\n261#1:379,2\n*E\n"})
public final class CredentialProviderFrameworkImpl implements CredentialProvider {
    private static final Companion Companion = new Companion(null);
    private final android.credentials.CredentialManager credentialManager;

    public CredentialProviderFrameworkImpl(Context context) {
        this.credentialManager = C0401x62bbb367.m137m(context.getSystemService("credential"));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onGetCredential(Context context, GetCredentialRequest request, CancellationSignal cancellationSignal, Executor executor, final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        if (isCredmanDisabled(new Function0() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderFrameworkImpl.m1742$r8$lambda$BGTCgAZAUrx_nDBb8V1lET4sA(callback);
            }
        })) {
            return;
        }
        this.credentialManager.getCredential(context, convertGetRequestToFrameworkClass(request), cancellationSignal, executor, new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$outcome$2
            public /* bridge */ /* synthetic */ void onError(Throwable th) {
                onError(C0404xc29801db.m140m(th));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(C0405xc29801dc.m141m(obj));
            }

            public void onResult(android.credentials.GetCredentialResponse response) {
                Log.i("CredManProvService", "GetCredentialResponse returned from framework");
                callback.onResult(this.convertGetResponseToJetpackClass$credentials(response));
            }

            public void onError(android.credentials.GetCredentialException error) {
                Log.i("CredManProvService", "GetCredentialResponse error returned from framework");
                callback.onError(this.convertToJetpackGetException$credentials(error));
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$BGTCgAZAUrx_nDBb8V1l-E-T4sA, reason: not valid java name */
    public static Unit m1742$r8$lambda$BGTCgAZAUrx_nDBb8V1lET4sA(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new GetCredentialUnsupportedException("Your device doesn't support credential manager"));
        return Unit.INSTANCE;
    }

    private final boolean isCredmanDisabled(Function0<Unit> handleNullCredMan) {
        if (this.credentialManager != null) {
            return false;
        }
        handleNullCredMan.invoke();
        return true;
    }

    @Override // androidx.credentials.CredentialProvider
    public void onCreateCredential(Context context, final CreateCredentialRequest request, CancellationSignal cancellationSignal, Executor executor, final CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback) {
        if (isCredmanDisabled(new Function0() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderFrameworkImpl.$r8$lambda$llBVW9jm112fI6SuOs48aXaWuhk(callback);
            }
        })) {
            return;
        }
        this.credentialManager.createCredential(context, convertCreateRequestToFrameworkClass(request, context), cancellationSignal, executor, new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onCreateCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th) {
                onError(C0402xee906cdc.m138m(th));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(C0403xee906cdd.m139m(obj));
            }

            public void onResult(android.credentials.CreateCredentialResponse response) {
                Log.i("CredManProvService", "Create Result returned from framework: ");
                callback.onResult(CreateCredentialResponse.INSTANCE.createFrom(request.getType(), response.getData()));
            }

            public void onError(android.credentials.CreateCredentialException error) {
                Log.i("CredManProvService", "CreateCredentialResponse error returned from framework");
                callback.onError(this.convertToJetpackCreateException$credentials(error));
            }
        });
    }

    public static Unit $r8$lambda$llBVW9jm112fI6SuOs48aXaWuhk(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new CreateCredentialUnsupportedException("Your device doesn't support credential manager"));
        return Unit.INSTANCE;
    }

    private final android.credentials.CreateCredentialRequest convertCreateRequestToFrameworkClass(CreateCredentialRequest request, Context context) {
        AbstractC0400x62bbb366.m136m();
        CreateCredentialRequest.Builder alwaysSendAppInfoToProvider = AbstractC0399x62bbb365.m135m(request.getType(), ConversionUtilsKt.getFinalCreateCredentialData(request, context), request.getCandidateQueryData()).setIsSystemProviderRequired(request.getIsSystemProviderRequired()).setAlwaysSendAppInfoToProvider(true);
        setOriginForCreateRequest(request, alwaysSendAppInfoToProvider);
        return alwaysSendAppInfoToProvider.build();
    }

    @SuppressLint({"MissingPermission"})
    private final void setOriginForCreateRequest(CreateCredentialRequest request, CreateCredentialRequest.Builder builder) {
        if (request.getOrigin() != null) {
            builder.setOrigin(request.getOrigin());
        }
    }

    private final android.credentials.GetCredentialRequest convertGetRequestToFrameworkClass(GetCredentialRequest request) {
        AbstractC0397x62bbb363.m133m();
        GetCredentialRequest.Builder builderM131m = AbstractC0395x62bbb361.m131m(GetCredentialRequest.INSTANCE.getRequestMetadataBundle(request));
        for (CredentialOption credentialOption : request.getCredentialOptions()) {
            AbstractC0398x62bbb364.m134m();
            builderM131m.addCredentialOption(AbstractC0396x62bbb362.m132m(credentialOption.getType(), credentialOption.getRequestData(), credentialOption.getCandidateQueryData()).setIsSystemProviderRequired(credentialOption.getIsSystemProviderRequired()).setAllowedProviders(credentialOption.getAllowedProviders()).build());
        }
        setOriginForGetRequest(request, builderM131m);
        return builderM131m.build();
    }

    @SuppressLint({"MissingPermission"})
    private final void setOriginForGetRequest(GetCredentialRequest request, GetCredentialRequest.Builder builder) {
        if (request.getOrigin() != null) {
            builder.setOrigin(request.getOrigin());
        }
    }

    public final GetCredentialException convertToJetpackGetException$credentials(android.credentials.GetCredentialException error) {
        return ConversionUtilsKt.toJetpackGetException(error.getType(), error.getMessage());
    }

    public final CreateCredentialException convertToJetpackCreateException$credentials(android.credentials.CreateCredentialException error) {
        return ConversionUtilsKt.toJetpackCreateException(error.getType(), error.getMessage());
    }

    public final GetCredentialResponse convertGetResponseToJetpackClass$credentials(android.credentials.GetCredentialResponse response) {
        android.credentials.Credential credential = response.getCredential();
        return new GetCredentialResponse(Credential.INSTANCE.createFrom(credential.getType(), credential.getData()));
    }

    @Override // androidx.credentials.CredentialProvider
    public boolean isAvailableOnDevice() {
        return Build.VERSION.SDK_INT >= 34 && this.credentialManager != null;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/credentials/CredentialProviderFrameworkImpl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "GET_DOM_EXCEPTION_PREFIX", "CREATE_DOM_EXCEPTION_PREFIX", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
