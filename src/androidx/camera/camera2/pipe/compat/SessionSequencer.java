package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.sync.Mutex;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.BuildConfig;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\rB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\t\u001a\u00020\nH\u0086@¢\u0006\u0002\u0010\u000bJ\u0006\u0010\f\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/camera/camera2/pipe/compat/SessionSequencer;", _UrlKt.FRAGMENT_ENCODE_SET, "concurrentSequencer", "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;", "<init>", "(Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;)V", "state", "Lkotlinx/atomicfu/AtomicRef;", "Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;", "awaitSessionLock", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.BUILD_TYPE, "State", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class SessionSequencer {
    private final ConcurrentSessionSequencer concurrentSequencer;
    private final AtomicRef<State> state = AtomicFU.atomic(State.PENDING);

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.SessionSequencer$awaitSessionLock$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.SessionSequencer", m766f = "ConcurrentSessionSequencers.kt", m767i = {}, m768l = {98}, m769m = "awaitSessionLock", m770n = {}, m771s = {}, m772v = 1)
    public static final class C02211 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C02211(Continuation<? super C02211> continuation) {
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
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "PENDING", "CREATING", "CREATED", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
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

    public SessionSequencer(ConcurrentSessionSequencer concurrentSessionSequencer) {
        this.concurrentSequencer = concurrentSessionSequencer;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object awaitSessionLock(Continuation<? super Unit> continuation) {
        C02211 c02211;
        if (continuation instanceof C02211) {
            c02211 = (C02211) continuation;
            int i = c02211.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02211.label = i - Integer.MIN_VALUE;
            } else {
                c02211 = new C02211(continuation);
            }
        }
        Object obj = c02211.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02211.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex sharedMutex = this.concurrentSequencer.getSharedMutex();
            c02211.label = 1;
            if (Mutex.DefaultImpls.lock$default(sharedMutex, null, c02211, 1, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
