package androidx.credentials.playservices.controllers;

import android.content.Intent;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.ResponseUtils;
import androidx.credentials.provider.PendingIntentHandler;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0001\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/playservices/controllers/ResponseUtils;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ResponseUtils {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JH\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "handleGetCredentialResponse", _UrlKt.FRAGMENT_ENCODE_SET, "uniqueRequestCode", _UrlKt.FRAGMENT_ENCODE_SET, "resultCode", "data", "Landroid/content/Intent;", "executor", "Ljava/util/concurrent/Executor;", Callback.METHOD_NAME, "Landroidx/credentials/CredentialManagerCallback;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "cancellationSignal", "Landroid/os/CancellationSignal;", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final void handleGetCredentialResponse(int uniqueRequestCode, int resultCode, Intent data, final Executor executor, final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback, CancellationSignal cancellationSignal) {
            CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.INSTANCE;
            if (uniqueRequestCode != companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
                Log.w("GetCredentialController", "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " which  does not match what was given " + uniqueRequestCode);
                return;
            }
            CredentialProviderController.Companion companion2 = CredentialProviderController.INSTANCE;
            if (companion2.maybeReportErrorResultCodeGet$credentials_play_services_auth(resultCode, new Function2() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ResponseUtils.Companion.$r8$lambda$4xDG5tuFzF9vPvJ3Fz0XD1ZPNoc((CancellationSignal) obj, (Function0) obj2);
                }
            }, new Function1() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ResponseUtils.Companion.m1655$r8$lambda$Y1y08ow1t71qyW_XseA_tVzVBA(executor, callback, (GetCredentialException) obj);
                }
            }, cancellationSignal)) {
                return;
            }
            if (data == null) {
                companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ResponseUtils.Companion.$r8$lambda$Rj_QcAAEo31zdXJsqOqntcts71A(executor, callback);
                    }
                });
                return;
            }
            PendingIntentHandler.Companion companion3 = PendingIntentHandler.INSTANCE;
            final GetCredentialResponse getCredentialResponseRetrieveGetCredentialResponse = companion3.retrieveGetCredentialResponse(data);
            if (getCredentialResponseRetrieveGetCredentialResponse != null) {
                companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ResponseUtils.Companion.$r8$lambda$oiqC25vkrJEjP1b7huHgFi11C9A(executor, callback, getCredentialResponseRetrieveGetCredentialResponse);
                    }
                });
            } else {
                final GetCredentialException getCredentialExceptionRetrieveGetCredentialException = companion3.retrieveGetCredentialException(data);
                companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ResponseUtils.Companion.m1657$r8$lambda$udknnXJUkCi6PtqNHxZRjzMAXc(executor, callback, getCredentialExceptionRetrieveGetCredentialException);
                    }
                });
            }
        }

        public static Unit $r8$lambda$4xDG5tuFzF9vPvJ3Fz0XD1ZPNoc(CancellationSignal cancellationSignal, Function0 function0) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, function0);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: $r8$lambda$Y1y08ow1t71qyW_X-seA_tVzVBA, reason: not valid java name */
        public static Unit m1655$r8$lambda$Y1y08ow1t71qyW_XseA_tVzVBA(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialException getCredentialException) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    credentialManagerCallback.onError(getCredentialException);
                }
            });
            return Unit.INSTANCE;
        }

        public static Unit $r8$lambda$Rj_QcAAEo31zdXJsqOqntcts71A(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ResponseUtils.Companion.handleGetCredentialResponse$lambda$2$0(credentialManagerCallback);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void handleGetCredentialResponse$lambda$2$0(CredentialManagerCallback credentialManagerCallback) {
            credentialManagerCallback.onError(new GetCredentialUnknownException("No provider data returned."));
        }

        public static Unit $r8$lambda$oiqC25vkrJEjP1b7huHgFi11C9A(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialResponse getCredentialResponse) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    credentialManagerCallback.onResult(getCredentialResponse);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: $r8$lambda$udknnXJUkCi6PtqNHxZRjz-MAXc, reason: not valid java name */
        public static Unit m1657$r8$lambda$udknnXJUkCi6PtqNHxZRjzMAXc(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialException getCredentialException) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    ResponseUtils.Companion.handleGetCredentialResponse$lambda$4$0(credentialManagerCallback, getCredentialException);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void handleGetCredentialResponse$lambda$4$0(CredentialManagerCallback credentialManagerCallback, GetCredentialException getCredentialException) {
            if (getCredentialException == null) {
                getCredentialException = new GetCredentialUnknownException("No provider data returned");
            }
            credentialManagerCallback.onError(getCredentialException);
        }
    }
}
