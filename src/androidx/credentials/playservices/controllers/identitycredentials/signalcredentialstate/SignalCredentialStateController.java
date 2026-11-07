package androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate;

import android.content.Context;
import android.os.CancellationSignal;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.SignalCredentialStateRequest;
import androidx.credentials.exceptions.publickeycredential.SignalCredentialRateLimitExceededException;
import androidx.credentials.exceptions.publickeycredential.SignalCredentialStateException;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.identitycredentials.IdentityCredentialManager;
import com.google.android.gms.identitycredentials.SignalCredentialStateResponse;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.text.MatchGroup;
import kotlin.text.MatchGroupCollection;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00172 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ6\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0004H\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/SignalCredentialStateRequest;", "Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;", "Lcom/google/android/gms/identitycredentials/SignalCredentialStateResponse;", "Landroidx/credentials/SignalCredentialStateResponse;", "Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "invokePlayServices", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.REQUEST, Callback.METHOD_NAME, "Landroidx/credentials/CredentialManagerCallback;", "executor", "Ljava/util/concurrent/Executor;", "cancellationSignal", "Landroid/os/CancellationSignal;", "convertRequestToPlayServices", "convertResponseToCredentialManager", PluginsConstants.RESPONSE, "Companion", "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class SignalCredentialStateController extends CredentialProviderController<SignalCredentialStateRequest, com.google.android.gms.identitycredentials.SignalCredentialStateRequest, SignalCredentialStateResponse, androidx.credentials.SignalCredentialStateResponse, SignalCredentialStateException> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Context context;

    public SignalCredentialStateController(Context context) {
        super(context);
        this.context = context;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* bridge */ /* synthetic */ void invokePlayServices(SignalCredentialStateRequest signalCredentialStateRequest, CredentialManagerCallback<androidx.credentials.SignalCredentialStateResponse, SignalCredentialStateException> credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(signalCredentialStateRequest);
        invokePlayServices2((SignalCredentialStateRequest) null, credentialManagerCallback, executor, cancellationSignal);
    }

    /* JADX INFO: renamed from: invokePlayServices, reason: avoid collision after fix types in other method */
    public void invokePlayServices2(SignalCredentialStateRequest request, final CredentialManagerCallback<androidx.credentials.SignalCredentialStateResponse, SignalCredentialStateException> callback, final Executor executor, CancellationSignal cancellationSignal) {
        Task<SignalCredentialStateResponse> taskSignalCredentialState = IdentityCredentialManager.INSTANCE.getClient(this.context).signalCredentialState(convertRequestToPlayServices(request));
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SignalCredentialStateController.$r8$lambda$6KEYjefjbL2D35k9qVaXsXXKNtY(executor, this, callback, (SignalCredentialStateResponse) obj);
            }
        };
        taskSignalCredentialState.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                SignalCredentialStateController.$r8$lambda$tFkdh6pwndChndQeiErFyM9E6N8(executor, callback, exc);
            }
        });
    }

    public static Unit $r8$lambda$6KEYjefjbL2D35k9qVaXsXXKNtY(Executor executor, SignalCredentialStateController signalCredentialStateController, final CredentialManagerCallback credentialManagerCallback, SignalCredentialStateResponse signalCredentialStateResponse) {
        if (signalCredentialStateResponse == null) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    SignalCredentialStateController.invokePlayServices$lambda$0$0(credentialManagerCallback);
                }
            });
            return Unit.INSTANCE;
        }
        final androidx.credentials.SignalCredentialStateResponse signalCredentialStateResponseConvertResponseToCredentialManager = signalCredentialStateController.convertResponseToCredentialManager(signalCredentialStateResponse);
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onResult(signalCredentialStateResponseConvertResponseToCredentialManager);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(SignalCredentialStateException.INSTANCE.createFrom("No SignalCredentialStateResponse received"));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, androidx.credentials.exceptions.publickeycredential.SignalCredentialStateException] */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, androidx.credentials.exceptions.publickeycredential.SignalCredentialRateLimitExceededException] */
    public static void $r8$lambda$tFkdh6pwndChndQeiErFyM9E6N8(Executor executor, final CredentialManagerCallback credentialManagerCallback, Exception exc) {
        String message;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = SignalCredentialStateException.INSTANCE.createFrom(exc.getMessage());
        if ((exc instanceof ApiException) && ((ApiException) exc).getStatusCode() == 16 && (message = exc.getMessage()) != null && StringsKt.contains$default((CharSequence) message, (CharSequence) "called too frequently", false, 2, (Object) null)) {
            objectRef.element = new SignalCredentialRateLimitExceededException(INSTANCE.parseRefillMinutesRegex(exc.getMessage()), exc.getMessage());
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SignalCredentialStateController.invokePlayServices$lambda$2$0(credentialManagerCallback, objectRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0(CredentialManagerCallback credentialManagerCallback, Ref.ObjectRef objectRef) {
        credentialManagerCallback.onError(objectRef.element);
    }

    public com.google.android.gms.identitycredentials.SignalCredentialStateRequest convertRequestToPlayServices(SignalCredentialStateRequest request) {
        throw null;
    }

    public androidx.credentials.SignalCredentialStateResponse convertResponseToCredentialManager(SignalCredentialStateResponse response) {
        return new androidx.credentials.SignalCredentialStateResponse();
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "SIGNAL_REQUEST_JSON_KEY", _UrlKt.FRAGMENT_ENCODE_SET, "RATE_LIMIT_EXCEPTION_MESSAGE_MATCHER", "MAX_RETRY_TIME", _UrlKt.FRAGMENT_ENCODE_SET, "parseRefillMinutesRegex", "exceptionMessage", "getInstance", "Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;", "context", "Landroid/content/Context;", "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final long parseRefillMinutesRegex(String exceptionMessage) {
            MatchResult matchResultFind$default;
            MatchGroupCollection groups;
            MatchGroup matchGroup;
            String value;
            Integer intOrNull;
            if (exceptionMessage == null || (matchResultFind$default = Regex.find$default(new Regex("^SignalCredentialState has been called too frequently\\. Please retry later after (\\d+) minutes\\.$"), exceptionMessage, 0, 2, null)) == null || (groups = matchResultFind$default.getGroups()) == null || (matchGroup = groups.get(1)) == null || (value = matchGroup.getValue()) == null || (intOrNull = StringsKt.toIntOrNull(value)) == null) {
                return 600000L;
            }
            return intOrNull.intValue();
        }

        @JvmStatic
        public final SignalCredentialStateController getInstance(Context context) {
            return new SignalCredentialStateController(context);
        }
    }
}
