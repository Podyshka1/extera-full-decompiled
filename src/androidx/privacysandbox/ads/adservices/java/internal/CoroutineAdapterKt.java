package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CoroutineAdapterKt {
    public static /* synthetic */ ListenableFuture asListenableFuture$default(Deferred deferred, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(deferred, obj);
    }

    public static final ListenableFuture asListenableFuture(final Deferred deferred, final Object obj) {
        Intrinsics.checkNotNullParameter(deferred, "<this>");
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return CoroutineAdapterKt.asListenableFuture$lambda$0(deferred, obj, completer);
            }
        });
        Intrinsics.checkNotNullExpressionValue(future, "getFuture { completer ->…      }\n        tag\n    }");
        return future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object asListenableFuture$lambda$0(final Deferred this_asListenableFuture, Object obj, final CallbackToFutureAdapter.Completer completer) {
        Intrinsics.checkNotNullParameter(this_asListenableFuture, "$this_asListenableFuture");
        Intrinsics.checkNotNullParameter(completer, "completer");
        this_asListenableFuture.invokeOnCompletion(new Function1() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$asListenableFuture$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                invoke((Throwable) obj2);
                return Unit.INSTANCE;
            }

            public final void invoke(Throwable th) {
                if (th != null) {
                    if (th instanceof CancellationException) {
                        completer.setCancelled();
                        return;
                    } else {
                        completer.setException(th);
                        return;
                    }
                }
                completer.set(this_asListenableFuture.getCompleted());
            }
        });
        return obj;
    }
}
