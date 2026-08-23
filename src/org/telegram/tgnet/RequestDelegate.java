package org.telegram.tgnet;

import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public interface RequestDelegate {
    void run(TLObject tLObject, TLRPC.TL_error tL_error);
}
