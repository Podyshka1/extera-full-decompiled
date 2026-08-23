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
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ResponseUtils {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void handleGetCredentialResponse(int i, int i2, Intent intent, final Executor executor, final CredentialManagerCallback callback, CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(executor, "executor");
            Intrinsics.checkNotNullParameter(callback, "callback");
            CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
            if (i != companion.m170xa2b31783()) {
                Log.w("GetCredentialController", "Returned request code " + companion.m170xa2b31783() + " which  does not match what was given " + i);
                return;
            }
            CredentialProviderController.Companion companion2 = CredentialProviderController.Companion;
            if (companion2.m175x7474352d(i2, new Function2() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ResponseUtils.Companion.handleGetCredentialResponse$lambda$0((CancellationSignal) obj, (Function0) obj2);
                }
            }, new Function1() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ResponseUtils.Companion.handleGetCredentialResponse$lambda$2(executor, callback, (GetCredentialException) obj);
                }
            }, cancellationSignal)) {
                return;
            }
            if (intent == null) {
                companion2.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ResponseUtils.Companion.handleGetCredentialResponse$lambda$4(executor, callback);
                    }
                });
                return;
            }
            PendingIntentHandler.Companion companion3 = PendingIntentHandler.Companion;
            final GetCredentialResponse getCredentialResponseRetrieveGetCredentialResponse = companion3.retrieveGetCredentialResponse(intent);
            if (getCredentialResponseRetrieveGetCredentialResponse != null) {
                companion2.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ResponseUtils.Companion.handleGetCredentialResponse$lambda$6(executor, callback, getCredentialResponseRetrieveGetCredentialResponse);
                    }
                });
            } else {
                final GetCredentialException getCredentialExceptionRetrieveGetCredentialException = companion3.retrieveGetCredentialException(intent);
                companion2.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ResponseUtils.Companion.handleGetCredentialResponse$lambda$8(executor, callback, getCredentialExceptionRetrieveGetCredentialException);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit handleGetCredentialResponse$lambda$0(CancellationSignal cancellationSignal, Function0 f) {
            Intrinsics.checkNotNullParameter(f, "f");
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, f);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit handleGetCredentialResponse$lambda$2(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    credentialManagerCallback.onError(e);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit handleGetCredentialResponse$lambda$4(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ResponseUtils.Companion.handleGetCredentialResponse$lambda$4$lambda$3(credentialManagerCallback);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void handleGetCredentialResponse$lambda$4$lambda$3(CredentialManagerCallback credentialManagerCallback) {
            credentialManagerCallback.onError(new GetCredentialUnknownException("No provider data returned."));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit handleGetCredentialResponse$lambda$6(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialResponse getCredentialResponse) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    credentialManagerCallback.onResult(getCredentialResponse);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit handleGetCredentialResponse$lambda$8(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialException getCredentialException) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.ResponseUtils$Companion$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ResponseUtils.Companion.handleGetCredentialResponse$lambda$8$lambda$7(credentialManagerCallback, getCredentialException);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void handleGetCredentialResponse$lambda$8$lambda$7(CredentialManagerCallback credentialManagerCallback, GetCredentialException getCredentialException) {
            if (getCredentialException == null) {
                getCredentialException = new GetCredentialUnknownException("No provider data returned");
            }
            credentialManagerCallback.onError(getCredentialException);
        }
    }
}
