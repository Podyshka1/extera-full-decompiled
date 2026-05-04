package org.telegram.ui.Components;

import j$.util.function.Function$CC;
import java.util.function.Function;
import org.telegram.messenger.MessageObject;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class DeleteMessagesBottomSheet$$ExternalSyntheticLambda8 implements Function {
    public /* synthetic */ Function andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Integer.valueOf(((MessageObject) obj).getId());
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
