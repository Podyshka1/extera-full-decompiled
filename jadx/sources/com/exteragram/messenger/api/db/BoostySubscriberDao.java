package com.exteragram.messenger.api.db;

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
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.BoostySubscriberDao", m916f = "BoostySubscriberDao.kt", m917l = {34, 35}, m918m = "replaceSubscribers$suspendImpl", m919v = 1)
    static final class C09841 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C09841(Continuation<? super C09841> continuation) {
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
            C09841 c09841;
            BoostySubscriberDao boostySubscriberDao2;
            if (continuation instanceof C09841) {
                c09841 = (C09841) continuation;
                int i = c09841.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c09841.label = i - Integer.MIN_VALUE;
                } else {
                    c09841 = boostySubscriberDao.new C09841(continuation);
                }
            }
            Object obj = c09841.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = c09841.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                c09841.L$0 = boostySubscriberDao;
                c09841.L$1 = list;
                c09841.label = 1;
                Object objDeleteAll = boostySubscriberDao.deleteAll(c09841);
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
            list = (List) c09841.L$1;
            BoostySubscriberDao boostySubscriberDao3 = (BoostySubscriberDao) c09841.L$0;
            ResultKt.throwOnFailure(obj);
            boostySubscriberDao2 = boostySubscriberDao3;
            c09841.L$0 = SpillingKt.nullOutSpilledVariable(boostySubscriberDao2);
            c09841.L$1 = SpillingKt.nullOutSpilledVariable(list);
            c09841.label = 2;
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
