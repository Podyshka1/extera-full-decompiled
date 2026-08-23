package androidx.credentials;

import android.app.PendingIntent;
import android.content.Context;
import android.os.CancellationSignal;
import androidx.credentials.exceptions.CreateCredentialException;
import java.util.concurrent.Executor;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
public interface CredentialManager {
    public static final Companion Companion = Companion.$$INSTANCE;

    Object createCredential(Context context, CreateCredentialRequest createCredentialRequest, Continuation continuation);

    void createCredentialAsync(Context context, CreateCredentialRequest createCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback);

    PendingIntent createSettingsPendingIntent();

    void getCredentialAsync(Context context, GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final CredentialManager create(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new CredentialManagerImpl(context);
        }
    }

    /* JADX INFO: renamed from: androidx.credentials.CredentialManager$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            Companion companion = CredentialManager.Companion;
        }

        public static CredentialManager create(Context context) {
            return CredentialManager.Companion.create(context);
        }

        public static /* synthetic */ Object createCredential$suspendImpl(CredentialManager credentialManager, Context context, CreateCredentialRequest createCredentialRequest, Continuation continuation) {
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            final CancellationSignal cancellationSignal = new CancellationSignal();
            cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: androidx.credentials.CredentialManager$createCredential$2$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(Throwable th) {
                    cancellationSignal.cancel();
                }
            });
            credentialManager.createCredentialAsync(context, createCredentialRequest, cancellationSignal, new CredentialManager$$ExternalSyntheticLambda0(), new CredentialManagerCallback() { // from class: androidx.credentials.CredentialManager$createCredential$2$callback$1
                @Override // androidx.credentials.CredentialManagerCallback
                public void onResult(CreateCredentialResponse result) {
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (cancellableContinuationImpl.isActive()) {
                        cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(result));
                    }
                }

                @Override // androidx.credentials.CredentialManagerCallback
                public void onError(CreateCredentialException e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    if (cancellableContinuationImpl.isActive()) {
                        CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
                        Result.Companion companion = Result.Companion;
                        cancellableContinuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(e)));
                    }
                }
            });
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        }
    }
}
