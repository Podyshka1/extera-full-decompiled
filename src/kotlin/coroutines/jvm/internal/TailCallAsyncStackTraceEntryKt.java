package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.Continuation;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\u001a]\u0010\u0000\u001a\u0002H\u0001\"\u0014\b\u0000\u0010\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\f2\u0006\u0010\r\u001a\u0002H\u0001H\u0081\u0080\u0004¢\u0006\u0002\u0010\u000e\u001a]\u0010\u000f\u001a\u0002H\u0001\"\u0014\b\u0000\u0010\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\f2\u0006\u0010\r\u001a\u0002H\u0001H\u0080\u0080\u0004¢\u0006\u0002\u0010\u000e¨\u0006\u0010"}, d2 = {"wrapContinuation", "T", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "declaringClass", _UrlKt.FRAGMENT_ENCODE_SET, "methodName", "fileName", "lineNumber", _UrlKt.FRAGMENT_ENCODE_SET, "spilledVariables", _UrlKt.FRAGMENT_ENCODE_SET, "continuation", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "wrapContinuationReal", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class TailCallAsyncStackTraceEntryKt {
    /* JADX WARN: Incorrect return type in method signature: <T::Lkotlin/coroutines/Continuation<-Ljava/lang/Object;>;:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;TT;)TT; */
    @PublishedApi
    public static final Continuation wrapContinuation(String str, String str2, String str3, int i, Object[] objArr, Continuation continuation) {
        return continuation;
    }

    /* JADX WARN: Incorrect return type in method signature: <T::Lkotlin/coroutines/Continuation<-Ljava/lang/Object;>;:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;TT;)TT; */
    public static final Continuation wrapContinuationReal(String str, String str2, String str3, int i, Object[] objArr, Continuation continuation) {
        return new TailCallBaseContinuationImpl(str, str2, str3, i, objArr, continuation);
    }
}
