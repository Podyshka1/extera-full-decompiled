package androidx.camera.camera2.pipe.compat;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes3.dex */
public final class SessionSequencer {
    private final ConcurrentSessionSequencer concurrentSequencer;
    private final AtomicRef state;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.SessionSequencer$awaitSessionLock$1 */
    static final class C02201 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02201(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionSequencer.this.awaitSessionLock(this);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State PENDING = new State("PENDING", 0);
        public static final State CREATING = new State("CREATING", 1);
        public static final State CREATED = new State("CREATED", 2);

        private static final /* synthetic */ State[] $values() {
            return new State[]{PENDING, CREATING, CREATED};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        private State(String str, int i) {
        }

        static {
            State[] stateArr$values = $values();
            $VALUES = stateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(stateArr$values);
        }
    }

    public SessionSequencer(ConcurrentSessionSequencer concurrentSequencer) {
        Intrinsics.checkNotNullParameter(concurrentSequencer, "concurrentSequencer");
        this.concurrentSequencer = concurrentSequencer;
        this.state = AtomicFU.atomic(State.PENDING);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object awaitSessionLock(Continuation continuation) {
        C02201 c02201;
        if (continuation instanceof C02201) {
            c02201 = (C02201) continuation;
            int i = c02201.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02201.label = i - Integer.MIN_VALUE;
            } else {
                c02201 = new C02201(continuation);
            }
        }
        Object obj = c02201.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02201.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex sharedMutex = this.concurrentSequencer.getSharedMutex();
            c02201.label = 1;
            if (Mutex.DefaultImpls.lock$default(sharedMutex, null, c02201, 1, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        if (!this.state.compareAndSet(State.PENDING, State.CREATING)) {
            Mutex.DefaultImpls.unlock$default(this.concurrentSequencer.getSharedMutex(), null, 1, null);
        }
        return Unit.INSTANCE;
    }

    public final void release() {
        if (this.state.getAndSet(State.CREATED) == State.CREATING) {
            Mutex.DefaultImpls.unlock$default(this.concurrentSequencer.getSharedMutex(), null, 1, null);
        }
    }
}
