package org.telegram.ui;

import java.util.function.Function;
import org.telegram.messenger.DialogObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CallLogActivity$$ExternalSyntheticLambda12 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Long.valueOf(DialogObject.getPeerDialogId((TLRPC.Peer) obj));
    }
}
