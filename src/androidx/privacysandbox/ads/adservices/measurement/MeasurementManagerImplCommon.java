package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.core.os.OutcomeReceiverKt;
import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MeasurementManagerImplCommon extends MeasurementManager {
    private final android.adservices.measurement.MeasurementManager mMeasurementManager;

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object deleteRegistrations(DeletionRequest deletionRequest, Continuation<? super Unit> continuation) {
        return deleteRegistrations$suspendImpl(this, deletionRequest, continuation);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object getMeasurementApiStatus(Continuation<? super Integer> continuation) {
        return getMeasurementApiStatus$suspendImpl(this, continuation);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerSource(Uri uri, InputEvent inputEvent, Continuation<? super Unit> continuation) {
        return registerSource$suspendImpl(this, uri, inputEvent, continuation);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerSource(SourceRegistrationRequest sourceRegistrationRequest, Continuation<? super Unit> continuation) {
        return registerSource$suspendImpl(this, sourceRegistrationRequest, continuation);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerTrigger(Uri uri, Continuation<? super Unit> continuation) {
        return registerTrigger$suspendImpl(this, uri, continuation);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerWebSource(WebSourceRegistrationRequest webSourceRegistrationRequest, Continuation<? super Unit> continuation) {
        return registerWebSource$suspendImpl(this, webSourceRegistrationRequest, continuation);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerWebTrigger(WebTriggerRegistrationRequest webTriggerRegistrationRequest, Continuation<? super Unit> continuation) {
        return registerWebTrigger$suspendImpl(this, webTriggerRegistrationRequest, continuation);
    }

    protected final android.adservices.measurement.MeasurementManager getMMeasurementManager() {
        return this.mMeasurementManager;
    }

    public MeasurementManagerImplCommon(android.adservices.measurement.MeasurementManager mMeasurementManager) {
        Intrinsics.checkNotNullParameter(mMeasurementManager, "mMeasurementManager");
        this.mMeasurementManager = mMeasurementManager;
    }

    /* JADX INFO: renamed from: androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerImplCommon$registerSource$4 */
    static final class C07044 extends SuspendLambda implements Function2 {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ MeasurementManagerImplCommon this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07044(SourceRegistrationRequest sourceRegistrationRequest, MeasurementManagerImplCommon measurementManagerImplCommon, Continuation continuation) {
            super(2, continuation);
            this.this$0 = measurementManagerImplCommon;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C07044 c07044 = new C07044(null, this.this$0, continuation);
            c07044.L$0 = obj;
            return c07044;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07044) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            throw null;
        }
    }

    static /* synthetic */ Object registerSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, SourceRegistrationRequest sourceRegistrationRequest, Continuation<? super Unit> continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new C07044(sourceRegistrationRequest, measurementManagerImplCommon, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    static /* synthetic */ Object deleteRegistrations$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, DeletionRequest deletionRequest, Continuation<? super Unit> continuation) {
        new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1).initCancellability();
        measurementManagerImplCommon.getMMeasurementManager();
        throw null;
    }

    static /* synthetic */ Object getMeasurementApiStatus$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Continuation<? super Integer> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        measurementManagerImplCommon.getMMeasurementManager().getMeasurementApiStatus(new CredentialManager$$ExternalSyntheticLambda0(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    static /* synthetic */ Object registerSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, InputEvent inputEvent, Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        measurementManagerImplCommon.getMMeasurementManager().registerSource(uri, inputEvent, new CredentialManager$$ExternalSyntheticLambda0(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    static /* synthetic */ Object registerTrigger$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        measurementManagerImplCommon.getMMeasurementManager().registerTrigger(uri, new CredentialManager$$ExternalSyntheticLambda0(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    static /* synthetic */ Object registerWebSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, WebSourceRegistrationRequest webSourceRegistrationRequest, Continuation<? super Unit> continuation) {
        new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1).initCancellability();
        measurementManagerImplCommon.getMMeasurementManager();
        throw null;
    }

    static /* synthetic */ Object registerWebTrigger$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, WebTriggerRegistrationRequest webTriggerRegistrationRequest, Continuation<? super Unit> continuation) {
        new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1).initCancellability();
        measurementManagerImplCommon.getMMeasurementManager();
        throw null;
    }
}
