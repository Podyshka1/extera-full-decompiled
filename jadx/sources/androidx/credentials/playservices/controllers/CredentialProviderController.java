package androidx.credentials.playservices.controllers;

import android.content.Context;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CredentialProviderController extends CredentialProviderBaseController {
    public static final Companion Companion = new Companion(null);
    private final Context context;

    protected static final boolean maybeReportErrorResultCodeCreate(int i, Function2 function2, Function1 function1, CancellationSignal cancellationSignal) {
        return Companion.maybeReportErrorResultCodeCreate(i, function2, function1, cancellationSignal);
    }

    public abstract void invokePlayServices(Object obj, CredentialManagerCallback credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        protected final boolean maybeReportErrorResultCodeCreate(int i, Function2 cancelOnError, final Function1 onError, CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(cancelOnError, "cancelOnError");
            Intrinsics.checkNotNullParameter(onError, "onError");
            if (i == -1) {
                return false;
            }
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = new CreateCredentialUnknownException(m174x14b42947(i));
            if (i == 0) {
                ref$ObjectRef.element = new CreateCredentialCancellationException(m173x576fb150());
            }
            cancelOnError.invoke(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderController.Companion.maybeReportErrorResultCodeCreate$lambda$0(onError, ref$ObjectRef);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit maybeReportErrorResultCodeCreate$lambda$0(Function1 function1, Ref$ObjectRef ref$ObjectRef) {
            function1.invoke(ref$ObjectRef.element);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: generateErrorStringUnknown$credentials_play_services_auth_release */
        public final String m174x14b42947(int i) {
            return "activity with result code: " + i + " indicating not RESULT_OK";
        }

        /* JADX INFO: renamed from: generateErrorStringCanceled$credentials_play_services_auth_release */
        public final String m173x576fb150() {
            return "activity is cancelled by the user.";
        }

        /* JADX INFO: renamed from: maybeReportErrorResultCodeGet$credentials_play_services_auth_release */
        public final boolean m175x7474352d(int i, Function2 cancelOnError, final Function1 onError, CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(cancelOnError, "cancelOnError");
            Intrinsics.checkNotNullParameter(onError, "onError");
            if (i == -1) {
                return false;
            }
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = new GetCredentialUnknownException(m174x14b42947(i));
            if (i == 0) {
                ref$ObjectRef.element = new GetCredentialCancellationException(m173x576fb150());
            }
            cancelOnError.invoke(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderController.Companion.maybeReportErrorResultCodeGet$lambda$1(onError, ref$ObjectRef);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit maybeReportErrorResultCodeGet$lambda$1(Function1 function1, Ref$ObjectRef ref$ObjectRef) {
            function1.invoke(ref$ObjectRef.element);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release */
        public final void m172xd7d57380(CancellationSignal cancellationSignal, Function0 onResultOrException) {
            Intrinsics.checkNotNullParameter(onResultOrException, "onResultOrException");
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
                return;
            }
            onResultOrException.invoke();
        }
    }

    protected final boolean maybeReportErrorFromResultReceiver(Bundle resultData, Function2 conversionFn, final Executor executor, final CredentialManagerCallback callback, CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(resultData, "resultData");
        Intrinsics.checkNotNullParameter(conversionFn, "conversionFn");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!resultData.getBoolean("FAILURE_RESPONSE")) {
            return false;
        }
        final Object objInvoke = conversionFn.invoke(resultData.getString("EXCEPTION_TYPE"), resultData.getString("EXCEPTION_MESSAGE"));
        Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderController.maybeReportErrorFromResultReceiver$lambda$1(executor, callback, objInvoke);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit maybeReportErrorFromResultReceiver$lambda$1(Executor executor, final CredentialManagerCallback credentialManagerCallback, final Object obj) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onError(obj);
            }
        });
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void invokePlayServices$default(CredentialProviderController credentialProviderController, Object obj, CredentialManagerCallback credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokePlayServices");
        }
        if ((i & 8) != 0) {
            cancellationSignal = null;
        }
        credentialProviderController.invokePlayServices(obj, credentialManagerCallback, executor, cancellationSignal);
    }
}
