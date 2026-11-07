package kotlin;

import kotlin.Result;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0081\u0080\u0004\u001a\u0017\u0010\u0004\u001a\u00020\u0005*\u0006\u0012\u0002\b\u00030\u0006H\u0081\u0080\u0004¢\u0006\u0002\u0010\u0007\u001a,\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b\u0000\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\f\u001aA\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b\u0000\u0010\r\"\u0004\b\u0001\u0010\t*\u0002H\r2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\t0\u000e¢\u0006\u0002\b\u000fH\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001a\u001f\u0010\u0011\u001a\u0002H\r\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u0006H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0012\u001a\\\u0010\u0013\u001a\u0002H\t\"\u0004\b\u0000\u0010\t\"\b\b\u0001\u0010\r*\u0002H\t*\b\u0012\u0004\u0012\u0002H\r0\u00062!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0002\u0012\u0004\u0012\u0002H\t0\u000eH\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0002\u0010\u0010\u001a1\u0010\u0017\u001a\u0002H\t\"\u0004\b\u0000\u0010\t\"\b\b\u0001\u0010\r*\u0002H\t*\b\u0012\u0004\u0012\u0002H\r0\u00062\u0006\u0010\u0018\u001a\u0002H\tH\u0087\u0088\u0004¢\u0006\u0002\u0010\u0019\u001a\u0085\u0001\u0010\u001a\u001a\u0002H\t\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u00062!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u0011H\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u0002H\t0\u000e2!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0002\u0012\u0004\u0012\u0002H\t0\u000eH\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\u0014\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0000¢\u0006\u0002\u0010\u001d\u001a^\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u00062!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u0011H\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u0002H\t0\u000eH\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0002\u0010\u0010\u001aQ\u0010 \u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u00062!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u0011H\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u0002H\t0\u000eH\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001ab\u0010!\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b\u0000\u0010\t\"\b\b\u0001\u0010\r*\u0002H\t*\b\u0012\u0004\u0012\u0002H\r0\u00062!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0002\u0012\u0004\u0012\u0002H\t0\u000eH\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0002\u0010\u0010\u001aU\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b\u0000\u0010\t\"\b\b\u0001\u0010\r*\u0002H\t*\b\u0012\u0004\u0012\u0002H\r0\u00062!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0002\u0012\u0004\u0012\u0002H\t0\u000eH\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001aX\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\r0\u0006\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u00062!\u0010#\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0002\u0012\u0004\u0012\u00020\u00050\u000eH\u0087\u0088\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0002\u0010\u0010\u001aX\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\r0\u0006\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u00062!\u0010#\u001a\u001d\u0012\u0013\u0012\u0011H\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u00050\u000eH\u0087\u0088\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0002\u0010\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006$"}, d2 = {"createFailure", _UrlKt.FRAGMENT_ENCODE_SET, "exception", _UrlKt.FRAGMENT_ENCODE_SET, "throwOnFailure", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Result;", "(Ljava/lang/Object;)V", "runCatching", "R", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "T", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "getOrThrow", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrElse", "onFailure", "Lkotlin/ParameterName;", "name", "getOrDefault", "defaultValue", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "fold", "onSuccess", "value", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "map", "transform", "mapCatching", "recover", "recoverCatching", "action", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Result.kt\nkotlin/ResultKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n1#2:343\n*E\n"})
public final class ResultKt {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Object createFailure(Throwable th) {
        return new Result.Failure(th);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final void throwOnFailure(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R> Object runCatching(Function0<? extends R> function0) {
        try {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3087constructorimpl(function0.invoke());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3087constructorimpl(createFailure(th));
        }
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T, R> Object runCatching(T t, Function1<? super T, ? extends R> function1) {
        try {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3087constructorimpl(function1.invoke(t));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3087constructorimpl(createFailure(th));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> T getOrThrow(Object obj) {
        throwOnFailure(obj);
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T extends R> R getOrElse(Object obj, Function1<? super Throwable, ? extends R> function1) {
        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(obj);
        return thM3090exceptionOrNullimpl == null ? obj : function1.invoke(thM3090exceptionOrNullimpl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T extends R> R getOrDefault(Object obj, R r) {
        return Result.m3093isFailureimpl(obj) ? r : obj;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> R fold(Object obj, Function1<? super T, ? extends R> function1, Function1<? super Throwable, ? extends R> function12) {
        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(obj);
        if (thM3090exceptionOrNullimpl == null) {
            return function1.invoke(obj);
        }
        return function12.invoke(thM3090exceptionOrNullimpl);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> Object map(Object obj, Function1<? super T, ? extends R> function1) {
        return Result.m3094isSuccessimpl(obj) ? Result.m3087constructorimpl(function1.invoke(obj)) : Result.m3087constructorimpl(obj);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> Object mapCatching(Object obj, Function1<? super T, ? extends R> function1) {
        if (!Result.m3094isSuccessimpl(obj)) {
            return Result.m3087constructorimpl(obj);
        }
        try {
            return Result.m3087constructorimpl(function1.invoke(obj));
        } catch (Throwable th) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3087constructorimpl(createFailure(th));
        }
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T extends R> Object recover(Object obj, Function1<? super Throwable, ? extends R> function1) {
        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(obj);
        return thM3090exceptionOrNullimpl == null ? obj : Result.m3087constructorimpl(function1.invoke(thM3090exceptionOrNullimpl));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T extends R> Object recoverCatching(Object obj, Function1<? super Throwable, ? extends R> function1) {
        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(obj);
        if (thM3090exceptionOrNullimpl == null) {
            return obj;
        }
        try {
            return Result.m3087constructorimpl(function1.invoke(thM3090exceptionOrNullimpl));
        } catch (Throwable th) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3087constructorimpl(createFailure(th));
        }
    }

    @SinceKotlin(version = "1.3")
    @IgnorableReturnValue
    @InlineOnly
    private static final <T> Object onFailure(Object obj, Function1<? super Throwable, Unit> function1) {
        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(obj);
        if (thM3090exceptionOrNullimpl != null) {
            function1.invoke(thM3090exceptionOrNullimpl);
        }
        return obj;
    }

    @SinceKotlin(version = "1.3")
    @IgnorableReturnValue
    @InlineOnly
    private static final <T> Object onSuccess(Object obj, Function1<? super T, Unit> function1) {
        if (Result.m3094isSuccessimpl(obj)) {
            function1.invoke(obj);
        }
        return obj;
    }
}
