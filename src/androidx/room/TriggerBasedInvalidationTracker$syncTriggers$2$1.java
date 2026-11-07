package androidx.room;

import androidx.room.ObservedTableStates;
import androidx.room.Transactor;
import com.google.android.gms.cast.MediaError;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "connection", "Landroidx/room/Transactor;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1", m873f = "InvalidationTracker.kt", m874i = {0, 1, 1}, m875l = {HttpStatusCodesKt.HTTP_TEMP_REDIRECT, MediaError.DetailedErrorCode.HLS_NETWORK_KEY_LOAD}, m876m = "invokeSuspend", m877n = {"connection", "this_$iv", "$this$withLock$iv$iv"}, m878s = {"L$0", "L$0", "L$1"})
@SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1\n+ 2 InvalidationTracker.kt\nandroidx/room/ObservedTableStates\n+ 3 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n*L\n1#1,640:1\n526#2:641\n527#2,21:645\n549#2,8:667\n28#3,3:642\n32#3:666\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1\n*L\n313#1:641\n313#1:645,21\n313#1:667,8\n313#1:642,3\n313#1:666\n*E\n"})
public final class TriggerBasedInvalidationTracker$syncTriggers$2$1 extends SuspendLambda implements Function2<Transactor, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$syncTriggers$2$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation<? super TriggerBasedInvalidationTracker$syncTriggers$2$1> continuation) {
        super(2, continuation);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this.this$0, continuation);
        triggerBasedInvalidationTracker$syncTriggers$2$1.L$0 = obj;
        return triggerBasedInvalidationTracker$syncTriggers$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Transactor transactor, Continuation<? super Unit> continuation) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1) create(transactor, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x00b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        Transactor transactor;
        Object objInTransaction;
        ObservedTableStates observedTableStates;
        ReentrantLock reentrantLock;
        ObservedTableStates.ObserveOp[] observeOpArr;
        ObservedTableStates.ObserveOp observeOp;
        ObservedTableStates observedTableStates2;
        ReentrantLock reentrantLock2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        boolean z = true;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            transactor = (Transactor) this.L$0;
            this.L$0 = transactor;
            this.label = 1;
            objInTransaction = transactor.inTransaction(this);
            if (objInTransaction != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            reentrantLock2 = (ReentrantLock) this.L$1;
            observedTableStates2 = (ObservedTableStates) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                reentrantLock = reentrantLock2;
                observedTableStates = observedTableStates2;
                observedTableStates.inProgressSync = false;
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return Unit.INSTANCE;
            } catch (Throwable th) {
                th = th;
                try {
                    observedTableStates2.inProgressSync = false;
                    throw th;
                } catch (Throwable th2) {
                    th = th2;
                    reentrantLock = reentrantLock2;
                    reentrantLock.unlock();
                    throw th;
                }
            }
        }
        transactor = (Transactor) this.L$0;
        ResultKt.throwOnFailure(obj);
        objInTransaction = obj;
        if (!((Boolean) objInTransaction).booleanValue()) {
            observedTableStates = this.this$0.observedTableStates;
            TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
            reentrantLock = observedTableStates.onSyncLock;
            reentrantLock.lock();
            try {
                observedTableStates.inProgressSync = true;
                ReentrantLock reentrantLock3 = observedTableStates.lock;
                reentrantLock3.lock();
                try {
                    if (observedTableStates.needsSync) {
                        observedTableStates.needsSync = false;
                        int length = observedTableStates.tableObserversCount.length;
                        observeOpArr = new ObservedTableStates.ObserveOp[length];
                        int i2 = 0;
                        boolean z2 = false;
                        while (i2 < length) {
                            boolean z3 = observedTableStates.tableObserversCount[i2] > 0 ? z : false;
                            if (z3 != observedTableStates.tableObservedState[i2]) {
                                observedTableStates.tableObservedState[i2] = z3;
                                observeOp = z3 ? ObservedTableStates.ObserveOp.ADD : ObservedTableStates.ObserveOp.REMOVE;
                                z2 = true;
                            } else {
                                observeOp = ObservedTableStates.ObserveOp.NO_OP;
                            }
                            observeOpArr[i2] = observeOp;
                            i2++;
                            z = true;
                        }
                        if (!z2) {
                        }
                        if (observeOpArr != null) {
                            try {
                                if (observeOpArr.length != 0) {
                                    Transactor.SQLiteTransactionType sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
                                    TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1 triggerBasedInvalidationTracker$syncTriggers$2$1$1$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(observeOpArr, triggerBasedInvalidationTracker, transactor, null);
                                    this.L$0 = observedTableStates;
                                    this.L$1 = reentrantLock;
                                    this.label = 2;
                                    if (transactor.withTransaction(sQLiteTransactionType, triggerBasedInvalidationTracker$syncTriggers$2$1$1$1, this) != coroutine_suspended) {
                                        observedTableStates2 = observedTableStates;
                                        reentrantLock2 = reentrantLock;
                                        reentrantLock = reentrantLock2;
                                        observedTableStates = observedTableStates2;
                                    }
                                    return coroutine_suspended;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                observedTableStates2 = observedTableStates;
                                reentrantLock2 = reentrantLock;
                                observedTableStates2.inProgressSync = false;
                                throw th;
                            }
                        }
                        observedTableStates.inProgressSync = false;
                        Unit unit2 = Unit.INSTANCE;
                        reentrantLock.unlock();
                        return Unit.INSTANCE;
                    }
                    observeOpArr = null;
                    if (observeOpArr != null) {
                    }
                    observedTableStates.inProgressSync = false;
                    Unit unit22 = Unit.INSTANCE;
                    reentrantLock.unlock();
                    return Unit.INSTANCE;
                } finally {
                    reentrantLock3.unlock();
                }
            } catch (Throwable th4) {
                th = th4;
                reentrantLock.unlock();
                throw th;
            }
        }
        return Unit.INSTANCE;
    }
}
