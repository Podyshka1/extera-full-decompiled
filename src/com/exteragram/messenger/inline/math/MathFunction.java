package com.exteragram.messenger.inline.math;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u000b\u0018\u00002\u00020\u0001BD\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\u0002\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\t¢\u0006\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R,\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\u0002\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathFunction;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "arity", "Lkotlin/ranges/IntRange;", "angle", "Lcom/exteragram/messenger/inline/math/AngleUse;", "apply", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ParameterName;", "args", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;Lkotlin/ranges/IntRange;Lcom/exteragram/messenger/inline/math/AngleUse;Lkotlin/jvm/functions/Function1;)V", "getName", "()Ljava/lang/String;", "getArity", "()Lkotlin/ranges/IntRange;", "getAngle", "()Lcom/exteragram/messenger/inline/math/AngleUse;", "getApply", "()Lkotlin/jvm/functions/Function1;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class MathFunction {
    private final AngleUse angle;
    private final Function1<double[], Double> apply;
    private final IntRange arity;
    private final String name;

    /* JADX WARN: Multi-variable type inference failed */
    public MathFunction(String str, IntRange intRange, AngleUse angleUse, Function1<? super double[], Double> function1) {
        this.name = str;
        this.arity = intRange;
        this.angle = angleUse;
        this.apply = function1;
    }

    public final String getName() {
        return this.name;
    }

    public final IntRange getArity() {
        return this.arity;
    }

    public /* synthetic */ MathFunction(String str, IntRange intRange, AngleUse angleUse, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, intRange, (i & 4) != 0 ? AngleUse.NONE : angleUse, function1);
    }

    public final AngleUse getAngle() {
        return this.angle;
    }

    public final Function1<double[], Double> getApply() {
        return this.apply;
    }
}
