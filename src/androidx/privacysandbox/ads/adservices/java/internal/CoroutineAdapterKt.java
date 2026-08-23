package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a*\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0000¨\u0006\u0006"}, d2 = {"asListenableFuture", "Lcom/google/common/util/concurrent/ListenableFuture;", "T", "Lkotlinx/coroutines/Deferred;", "tag", _UrlKt.FRAGMENT_ENCODE_SET, "ads-adservices-java_release"}, m754k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class CoroutineAdapterKt {
    public static /* synthetic */ ListenableFuture asListenableFuture$default(Deferred deferred, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(deferred, obj);
    }

    public static final <T> ListenableFuture<T> asListenableFuture(final Deferred<? extends T> deferred, final Object obj) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return CoroutineAdapterKt.$r8$lambda$u17zFg4_yVVb03rPOrSamnVgzLA(deferred, obj, completer);
            }
        });
    }

    public static Object $r8$lambda$u17zFg4_yVVb03rPOrSamnVgzLA(final Deferred deferred, Object obj, final CallbackToFutureAdapter.Completer completer) {
        deferred.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$asListenableFuture$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (th != null) {
                    boolean z = th instanceof CancellationException;
                    CallbackToFutureAdapter.Completer<T> completer2 = completer;
                    if (z) {
                        completer2.setCancelled();
                        return;
                    } else {
                        completer2.setException(th);
                        return;
                    }
                }
                completer.set((T) deferred.getCompleted());
            }
        });
        return obj;
    }
}
