package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.view.MutableLiveData;
import androidx.work.Operation;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a5\u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0000¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/work/Tracer;", "tracer", _UrlKt.FRAGMENT_ENCODE_SET, "label", "Ljava/util/concurrent/Executor;", "executor", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "block", "Landroidx/work/Operation;", "launchOperation", "(Landroidx/work/Tracer;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Operation;", "work-runtime_release"}, m910k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/work/OperationKt\n+ 2 Tracer.kt\nandroidx/work/TracerKt\n*L\n1#1,71:1\n53#2,9:72\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/work/OperationKt\n*L\n48#1:72,9\n*E\n"})
public abstract class OperationKt {
    public static final Operation launchOperation(final Tracer tracer, final String str, final Executor executor, final Function0<Unit> function0) {
        final MutableLiveData mutableLiveData = new MutableLiveData(Operation.IN_PROGRESS);
        return new OperationImpl(mutableLiveData, CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.OperationKt$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return OperationKt.m2107$r8$lambda$4AmAQmnwY87AwH_dAIVRwuDub0(executor, tracer, str, function0, mutableLiveData, completer);
            }
        }));
    }

    /* JADX INFO: renamed from: $r8$lambda$4AmAQmnwY87AwH_dAIVR-wuDub0, reason: not valid java name */
    public static Unit m2107$r8$lambda$4AmAQmnwY87AwH_dAIVRwuDub0(Executor executor, final Tracer tracer, final String str, final Function0 function0, final MutableLiveData mutableLiveData, final CallbackToFutureAdapter.Completer completer) {
        executor.execute(new Runnable() { // from class: androidx.work.OperationKt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                OperationKt.$r8$lambda$XKAkIiEN7OgIvwuLUZRQpJhjmyE(tracer, str, function0, mutableLiveData, completer);
            }
        });
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$XKAkIiEN7OgIvwuLUZRQpJhjmyE(Tracer tracer, String str, Function0 function0, MutableLiveData mutableLiveData, CallbackToFutureAdapter.Completer completer) {
        boolean zIsEnabled = tracer.isEnabled();
        if (zIsEnabled) {
            try {
                tracer.beginSection(str);
            } finally {
                if (zIsEnabled) {
                    tracer.endSection();
                }
            }
        }
        try {
            function0.invoke();
            Operation.State.SUCCESS success = Operation.SUCCESS;
            mutableLiveData.postValue(success);
            completer.set(success);
        } catch (Throwable th) {
            mutableLiveData.postValue(new Operation.State.FAILURE(th));
            completer.setException(th);
        }
        Unit unit = Unit.INSTANCE;
    }
}
