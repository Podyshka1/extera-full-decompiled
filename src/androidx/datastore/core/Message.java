package androidx.datastore.core;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes.dex */
public abstract class Message {
    public /* synthetic */ Message(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private Message() {
    }

    public static final class Update extends Message {
        private final CompletableDeferred ack;
        private final CoroutineContext callerContext;
        private final State lastState;
        private final Function2 transform;

        public final Function2 getTransform() {
            return this.transform;
        }

        public final CompletableDeferred getAck() {
            return this.ack;
        }

        public State getLastState() {
            return this.lastState;
        }

        public final CoroutineContext getCallerContext() {
            return this.callerContext;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Update(Function2 transform, CompletableDeferred ack, State state, CoroutineContext callerContext) {
            super(null);
            Intrinsics.checkNotNullParameter(transform, "transform");
            Intrinsics.checkNotNullParameter(ack, "ack");
            Intrinsics.checkNotNullParameter(callerContext, "callerContext");
            this.transform = transform;
            this.ack = ack;
            this.lastState = state;
            this.callerContext = callerContext;
        }
    }
}
