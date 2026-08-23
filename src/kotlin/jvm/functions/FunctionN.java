package kotlin.jvm.functions;

import kotlin.Function;
import kotlin.jvm.internal.FunctionBase;

/* JADX INFO: loaded from: classes5.dex */
public interface FunctionN<R> extends Function, FunctionBase<R> {
    @Override // kotlin.jvm.internal.FunctionBase
    int getArity();

    R invoke(Object... objArr);
}
