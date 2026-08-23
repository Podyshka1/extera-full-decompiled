package org.telegram.p029ui.Components;

import java.util.function.Function;
import org.telegram.messenger.MessageObject;
import p022j$.util.function.Function$CC;

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
