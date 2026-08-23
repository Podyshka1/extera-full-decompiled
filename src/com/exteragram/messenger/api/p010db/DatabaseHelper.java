package com.exteragram.messenger.api.p010db;

import com.exteragram.messenger.api.dto.AddedRegDateDTO;
import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import com.exteragram.messenger.api.dto.NowPlayingInfoDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public final class DatabaseHelper {
    public static final DatabaseHelper INSTANCE = new DatabaseHelper();
    private static final CoroutineScope scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$deleteProfiles$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.DatabaseHelper", m1084f = "DatabaseHelper.kt", m1085l = {37}, m1086m = "deleteProfiles", m1087v = 1)
    static final class C10431 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10431(Continuation<? super C10431> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DatabaseHelper.this.deleteProfiles(null, this);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$insertBoostySubscribers$1 */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.DatabaseHelper", m1084f = "DatabaseHelper.kt", m1085l = {97}, m1086m = "insertBoostySubscribers", m1087v = 1)
    static final class C10471 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10471(Continuation<? super C10471> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DatabaseHelper.this.insertBoostySubscribers(null, this);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$insertProfiles$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.DatabaseHelper", m1084f = "DatabaseHelper.kt", m1085l = {29}, m1086m = "insertProfiles", m1087v = 1)
    static final class C10481 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10481(Continuation<? super C10481> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DatabaseHelper.this.insertProfiles(null, this);
        }
    }

    private DatabaseHelper() {
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object insertProfiles(List<ProfileDTO> list, Continuation<? super Unit> continuation) {
        C10481 c10481;
        if (continuation instanceof C10481) {
            c10481 = (C10481) continuation;
            int i = c10481.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10481.label = i - Integer.MIN_VALUE;
            } else {
                c10481 = new C10481(continuation);
            }
        }
        Object obj = c10481.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10481.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ProfileDao profileDao = ExteraDatabase.Companion.getInstance().profileDao();
                c10481.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c10481.label = 1;
                if (profileDao.insertAll(list, c10481) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object deleteProfiles(List<Long> list, Continuation<? super Integer> continuation) {
        C10431 c10431;
        int iIntValue;
        if (continuation instanceof C10431) {
            c10431 = (C10431) continuation;
            int i = c10431.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10431.label = i - Integer.MIN_VALUE;
            } else {
                c10431 = new C10431(continuation);
            }
        }
        Object objDeleteProfiles = c10431.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10431.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objDeleteProfiles);
                ProfileDao profileDao = ExteraDatabase.Companion.getInstance().profileDao();
                c10431.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c10431.label = 1;
                objDeleteProfiles = profileDao.deleteProfiles(list, c10431);
                if (objDeleteProfiles == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objDeleteProfiles);
            }
            iIntValue = ((Number) objDeleteProfiles).intValue();
        } catch (Throwable th) {
            FileLog.m1136e(th);
            iIntValue = 0;
        }
        return Boxing.boxInt(iIntValue);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$getNowPlaying$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.DatabaseHelper$getNowPlaying$1", m1084f = "DatabaseHelper.kt", m1085l = {48}, m1086m = "invokeSuspend", m1087v = 1)
    static final class C10461 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<NowPlayingInfoDTO> $callback;
        final /* synthetic */ long $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10461(long j, Consumer<NowPlayingInfoDTO> consumer, Continuation<? super C10461> continuation) {
            super(2, continuation);
            this.$id = j;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10461(this.$id, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10461) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ProfileDao profileDao = ExteraDatabase.Companion.getInstance().profileDao();
                    long j = this.$id;
                    this.label = 1;
                    obj = profileDao.getById(j, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ProfileDTO profileDTO = (ProfileDTO) obj;
                this.$callback.m940v(profileDTO != null ? profileDTO.getNowPlaying() : null);
            } catch (Throwable th) {
                FileLog.m1136e(th);
                this.$callback.m940v(null);
            }
            return Unit.INSTANCE;
        }
    }

    public static final void getNowPlaying(long j, Consumer<NowPlayingInfoDTO> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10461(j, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1", m1084f = "DatabaseHelper.kt", m1085l = {62}, m1086m = "invokeSuspend", m1087v = 1)
    static final class C10511 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<Integer> $callback;
        final /* synthetic */ long $id;
        final /* synthetic */ NowPlayingInfoDTO $newNowPlaying;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10511(long j, NowPlayingInfoDTO nowPlayingInfoDTO, Consumer<Integer> consumer, Continuation<? super C10511> continuation) {
            super(2, continuation);
            this.$id = j;
            this.$newNowPlaying = nowPlayingInfoDTO;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10511(this.$id, this.$newNowPlaying, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10511) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ProfileDao profileDao = ExteraDatabase.Companion.getInstance().profileDao();
                    long j = this.$id;
                    NowPlayingInfoDTO nowPlayingInfoDTO = this.$newNowPlaying;
                    this.label = 1;
                    obj = profileDao.updateNowPlaying(j, nowPlayingInfoDTO, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.m940v(Boxing.boxInt(((Number) obj).intValue()));
            } catch (Throwable th) {
                FileLog.m1136e(th);
                this.$callback.m940v(Boxing.boxInt(0));
            }
            return Unit.INSTANCE;
        }
    }

    public static final void updateNowPlaying(long j, NowPlayingInfoDTO nowPlayingInfoDTO, Consumer<Integer> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10511(j, nowPlayingInfoDTO, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$isRegDateAdded$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.DatabaseHelper$isRegDateAdded$1", m1084f = "DatabaseHelper.kt", m1085l = {75}, m1086m = "invokeSuspend", m1087v = 1)
    static final class C10491 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<Boolean> $callback;
        final /* synthetic */ long $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10491(long j, Consumer<Boolean> consumer, Continuation<? super C10491> continuation) {
            super(2, continuation);
            this.$userId = j;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10491(this.$userId, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10491) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    AddedRegDateDao addedRegDateDao = ExteraDatabase.Companion.getInstance().addedRegDateDao();
                    long j = this.$userId;
                    this.label = 1;
                    obj = addedRegDateDao.isAdded(j, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.m940v(Boxing.boxBoolean(((Boolean) obj).booleanValue()));
            } catch (Throwable th) {
                FileLog.m1136e(th);
                this.$callback.m940v(Boxing.boxBoolean(false));
            }
            return Unit.INSTANCE;
        }
    }

    public static final void isRegDateAdded(long j, Consumer<Boolean> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10491(j, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$setRegDateAdded$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.DatabaseHelper$setRegDateAdded$1", m1084f = "DatabaseHelper.kt", m1085l = {88}, m1086m = "invokeSuspend", m1087v = 1)
    static final class C10501 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10501(long j, Continuation<? super C10501> continuation) {
            super(2, continuation);
            this.$userId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10501(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10501) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    AddedRegDateDao addedRegDateDao = ExteraDatabase.Companion.getInstance().addedRegDateDao();
                    AddedRegDateDTO addedRegDateDTO = new AddedRegDateDTO(this.$userId);
                    this.label = 1;
                    if (addedRegDateDao.insert(addedRegDateDTO, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Throwable th) {
                FileLog.m1136e(th);
            }
            return Unit.INSTANCE;
        }
    }

    public static final void setRegDateAdded(long j) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10501(j, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object insertBoostySubscribers(List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
        C10471 c10471;
        if (continuation instanceof C10471) {
            c10471 = (C10471) continuation;
            int i = c10471.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10471.label = i - Integer.MIN_VALUE;
            } else {
                c10471 = new C10471(continuation);
            }
        }
        Object obj = c10471.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10471.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                BoostySubscriberDao boostySubscriberDao = ExteraDatabase.Companion.getInstance().boostySubscriberDao();
                c10471.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c10471.label = 1;
                if (boostySubscriberDao.replaceSubscribers(list, c10471) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1 */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1", m1084f = "DatabaseHelper.kt", m1085l = {107}, m1086m = "invokeSuspend", m1087v = 1)
    static final class C10441 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<List<BoostySubscriberDTO>> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10441(Consumer<List<BoostySubscriberDTO>> consumer, Continuation<? super C10441> continuation) {
            super(2, continuation);
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10441(this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10441) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    BoostySubscriberDao boostySubscriberDao = ExteraDatabase.Companion.getInstance().boostySubscriberDao();
                    this.label = 1;
                    obj = boostySubscriberDao.getAll(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.m940v(CollectionsKt.sortedWith((List) obj, new Comparator() { // from class: com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1$invokeSuspend$$inlined$sortedByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(((BoostySubscriberDTO) t2).getTotalAmountRub(), ((BoostySubscriberDTO) t).getTotalAmountRub());
                    }
                }));
            } catch (Throwable th) {
                FileLog.m1136e(th);
                this.$callback.m940v(CollectionsKt.emptyList());
            }
            return Unit.INSTANCE;
        }
    }

    public static final void getBoostySubscribers(Consumer<List<BoostySubscriberDTO>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10441(callback, null), 3, null);
    }
}
