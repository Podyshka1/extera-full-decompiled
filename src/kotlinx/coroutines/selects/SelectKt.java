package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u001aj\u0010\r\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\u00010\u00002O\u0010\u000b\u001aK\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\r\u0010\u000e\u001a\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013\"c\u0010\u0018\u001aQ\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0002j\u0002`\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019\"\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c\"\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001c\"\u0014\u0010\u001e\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001c\"\u0014\u0010\u001f\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001c\"\u001a\u0010 \u001a\u00020\u001a8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b \u0010\u001c\u001a\u0004\b!\u0010\"*¢\u0001\b\u0007\u0010%\"M\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0014\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030#¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b($\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00010\u00022M\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0014\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030#¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b($\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00010\u0002*¢\u0001\b\u0007\u0010&\"M\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00022M\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0002*Ú\u0001\b\u0000\u0010(\"i\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030#¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b($\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b('\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u00020\u00022i\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030#¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b($\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b('\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u00020\u0002¨\u0006)"}, d2 = {"Lkotlinx/coroutines/CancellableContinuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Function3;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ParameterName;", "name", "cause", _UrlKt.FRAGMENT_ENCODE_SET, "value", "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", _UrlKt.FRAGMENT_ENCODE_SET, "tryResume", "(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function3;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "trySelectInternalResult", "Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "TrySelectDetailedResult", "(I)Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "clauseObject", "param", "clauseResult", "Lkotlinx/coroutines/selects/ProcessResultFunction;", "DUMMY_PROCESS_RESULT_FUNCTION", "Lkotlin/jvm/functions/Function3;", "Lkotlinx/coroutines/internal/Symbol;", "STATE_REG", "Lkotlinx/coroutines/internal/Symbol;", "STATE_COMPLETED", "STATE_CANCELLED", "NO_RESULT", "PARAM_CLAUSE_0", "getPARAM_CLAUSE_0", "()Lkotlinx/coroutines/internal/Symbol;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "RegistrationFunction", "ProcessResultFunction", "internalResult", "OnCancellationConstructor", "kotlinx-coroutines-core"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class SelectKt {
    private static final Function3<Object, Object, Object, Object> DUMMY_PROCESS_RESULT_FUNCTION = new Function3() { // from class: kotlinx.coroutines.selects.SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1
        @Override // kotlin.jvm.functions.Function3
        public final Void invoke(Object obj, Object obj2, Object obj3) {
            return null;
        }
    };
    private static final Symbol STATE_REG = new Symbol("STATE_REG");
    private static final Symbol STATE_COMPLETED = new Symbol("STATE_COMPLETED");
    private static final Symbol STATE_CANCELLED = new Symbol("STATE_CANCELLED");
    private static final Symbol NO_RESULT = new Symbol("NO_RESULT");
    private static final Symbol PARAM_CLAUSE_0 = new Symbol("PARAM_CLAUSE_0");

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean tryResume(CancellableContinuation<? super Unit> cancellableContinuation, Function3<? super Throwable, Object, ? super CoroutineContext, Unit> function3) {
        Object objTryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, function3);
        if (objTryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(objTryResume);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TrySelectDetailedResult TrySelectDetailedResult(int i) {
        if (i == 0) {
            return TrySelectDetailedResult.SUCCESSFUL;
        }
        if (i == 1) {
            return TrySelectDetailedResult.REREGISTER;
        }
        if (i == 2) {
            return TrySelectDetailedResult.CANCELLED;
        }
        if (i == 3) {
            return TrySelectDetailedResult.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i).toString());
    }

    public static final Symbol getPARAM_CLAUSE_0() {
        return PARAM_CLAUSE_0;
    }
}
