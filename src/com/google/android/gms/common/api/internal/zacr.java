package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zacr extends com.google.android.gms.internal.base.zao {
    final /* synthetic */ zacs zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zacr(zacs zacsVar, Looper looper) {
        super(looper);
        Objects.requireNonNull(zacsVar);
        this.zaa = zacsVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 0) {
            if (i == 1) {
                RuntimeException runtimeException = (RuntimeException) message.obj;
                Log.e("TransformedResultImpl", "Runtime exception on the transformation worker thread: ".concat(String.valueOf(runtimeException.getMessage())));
                throw runtimeException;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 59);
            sb.append("TransformationResultHandler received unknown message type: ");
            sb.append(i);
            Log.e("TransformedResultImpl", sb.toString());
            return;
        }
        PendingResult pendingResult = (PendingResult) message.obj;
        zacs zacsVar = this.zaa;
        synchronized (zacsVar.zaf()) {
            try {
                zacs zacsVar2 = (zacs) Preconditions.checkNotNull(zacsVar.zae());
                if (pendingResult == null) {
                    zacsVar2.zac(new Status(13, "Transform returned null"));
                } else {
                    zacsVar2.zaa(pendingResult);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
