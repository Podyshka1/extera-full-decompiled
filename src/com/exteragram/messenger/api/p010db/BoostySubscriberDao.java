package com.exteragram.messenger.api.p010db;

import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;

/* JADX INFO: loaded from: classes.dex */
public interface BoostySubscriberDao {

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.BoostySubscriberDao$replaceSubscribers$1 */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.BoostySubscriberDao", m1084f = "BoostySubscriberDao.kt", m1085l = {34, 35}, m1086m = "replaceSubscribers$suspendImpl", m1087v = 1)
    static final class C10401 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10401(Continuation<? super C10401> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CC.replaceSubscribers$suspendImpl(BoostySubscriberDao.this, null, this);
        }
    }

    Object deleteAll(Continuation<? super Unit> continuation);

    Object getAll(Continuation<? super List<BoostySubscriberDTO>> continuation);

    Object insertAll(List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation);

    Object replaceSubscribers(List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation);

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.BoostySubscriberDao$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
        
            if (r5.insertAll(r6, r0) == r1) goto L21;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static /* synthetic */ Object replaceSubscribers$suspendImpl(BoostySubscriberDao boostySubscriberDao, List list, Continuation continuation) {
            C10401 c10401;
            BoostySubscriberDao boostySubscriberDao2;
            if (continuation instanceof C10401) {
                c10401 = (C10401) continuation;
                int i = c10401.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c10401.label = i - Integer.MIN_VALUE;
                } else {
                    c10401 = boostySubscriberDao.new C10401(continuation);
                }
            }
            Object obj = c10401.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = c10401.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                c10401.L$0 = boostySubscriberDao;
                c10401.L$1 = list;
                c10401.label = 1;
                Object objDeleteAll = boostySubscriberDao.deleteAll(c10401);
                boostySubscriberDao2 = boostySubscriberDao;
                if (objDeleteAll != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            list = (List) c10401.L$1;
            BoostySubscriberDao boostySubscriberDao3 = (BoostySubscriberDao) c10401.L$0;
            ResultKt.throwOnFailure(obj);
            boostySubscriberDao2 = boostySubscriberDao3;
            c10401.L$0 = SpillingKt.nullOutSpilledVariable(boostySubscriberDao2);
            c10401.L$1 = SpillingKt.nullOutSpilledVariable(list);
            c10401.label = 2;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static Object replaceSubscribers(BoostySubscriberDao boostySubscriberDao, List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
            return CC.replaceSubscribers$suspendImpl(boostySubscriberDao, list, continuation);
        }
    }
}
