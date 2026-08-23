package androidx.core.os;

import android.p000os.OutcomeReceiver;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OutcomeReceiverKt {
    public static final OutcomeReceiver asOutcomeReceiver(Continuation continuation) {
        return new ContinuationOutcomeReceiver(continuation);
    }
}
