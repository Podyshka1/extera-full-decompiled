package com.exteragram.messenger.api.db;

import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\bg\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H§@¢\u0006\u0002\u0010\u0007J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H§@¢\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\tJ\u001c\u0010\u000b\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0097@¢\u0006\u0002\u0010\u0007¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/api/db/BoostySubscriberDao;", _UrlKt.FRAGMENT_ENCODE_SET, "insertAll", _UrlKt.FRAGMENT_ENCODE_SET, "subscribers", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAll", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAll", "replaceSubscribers", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public interface BoostySubscriberDao {

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.BoostySubscriberDao$replaceSubscribers$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.BoostySubscriberDao", m873f = "BoostySubscriberDao.kt", m874i = {0, 0, 1, 1}, m875l = {34, 35}, m876m = "replaceSubscribers$suspendImpl", m877n = {"$this", "subscribers", "$this", "subscribers"}, m878s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class C12191 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C12191(Continuation<? super C12191> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BoostySubscriberDao.replaceSubscribers$suspendImpl(BoostySubscriberDao.this, null, this);
        }
    }

    Object deleteAll(Continuation<? super Unit> continuation);

    Object getAll(Continuation<? super List<BoostySubscriberDTO>> continuation);

    Object insertAll(List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation);

    default Object replaceSubscribers(List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
        return replaceSubscribers$suspendImpl(this, list, continuation);
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final class DefaultImpls {
        @Deprecated
        public static Object replaceSubscribers(BoostySubscriberDao boostySubscriberDao, List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
            return BoostySubscriberDao.super.replaceSubscribers(list, continuation);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
    
        if (r5.insertAll(r6, r0) == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static /* synthetic */ Object replaceSubscribers$suspendImpl(BoostySubscriberDao boostySubscriberDao, List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
        C12191 c12191;
        if (continuation instanceof C12191) {
            c12191 = (C12191) continuation;
            int i = c12191.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c12191.label = i - Integer.MIN_VALUE;
            } else {
                c12191 = boostySubscriberDao.new C12191(continuation);
            }
        }
        Object obj = c12191.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c12191.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            c12191.L$0 = boostySubscriberDao;
            c12191.L$1 = list;
            c12191.label = 1;
            if (boostySubscriberDao.deleteAll(c12191) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        list = (List) c12191.L$1;
        boostySubscriberDao = (BoostySubscriberDao) c12191.L$0;
        ResultKt.throwOnFailure(obj);
        c12191.L$0 = SpillingKt.nullOutSpilledVariable(boostySubscriberDao);
        c12191.L$1 = SpillingKt.nullOutSpilledVariable(list);
        c12191.label = 2;
    }
}
