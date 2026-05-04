package com.exteragram.messenger.plugins.hooks;

import java.util.function.Function;
import org.mvel2.MVEL;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class HookFilter$$ExternalSyntheticLambda0 implements Function {
    public /* synthetic */ Function andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return MVEL.compileExpression((String) obj);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
