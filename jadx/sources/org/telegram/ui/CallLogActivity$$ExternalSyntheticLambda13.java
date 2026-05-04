package org.telegram.ui;

import j$.util.function.Function$CC;
import java.util.function.Function;
import org.telegram.messenger.DialogObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class CallLogActivity$$ExternalSyntheticLambda13 implements Function {
    public /* synthetic */ Function andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Long.valueOf(DialogObject.getPeerDialogId((TLRPC.Peer) obj));
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
