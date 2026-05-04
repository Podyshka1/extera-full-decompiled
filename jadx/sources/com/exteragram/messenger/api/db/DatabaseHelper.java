package com.exteragram.messenger.api.db;

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
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.DatabaseHelper", m916f = "DatabaseHelper.kt", m917l = {37}, m918m = "deleteProfiles", m919v = 1)
    static final class C09871 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C09871(Continuation<? super C09871> continuation) {
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
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.DatabaseHelper", m916f = "DatabaseHelper.kt", m917l = {97}, m918m = "insertBoostySubscribers", m919v = 1)
    static final class C09911 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C09911(Continuation<? super C09911> continuation) {
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
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.DatabaseHelper", m916f = "DatabaseHelper.kt", m917l = {29}, m918m = "insertProfiles", m919v = 1)
    static final class C09921 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C09921(Continuation<? super C09921> continuation) {
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
        C09921 c09921;
        if (continuation instanceof C09921) {
            c09921 = (C09921) continuation;
            int i = c09921.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c09921.label = i - Integer.MIN_VALUE;
            } else {
                c09921 = new C09921(continuation);
            }
        }
        Object obj = c09921.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c09921.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ProfileDao profileDao = ExteraDatabase.Companion.getInstance().profileDao();
                c09921.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c09921.label = 1;
                if (profileDao.insertAll(list, c09921) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (Throwable th) {
            FileLog.m955e(th);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object deleteProfiles(List<Long> list, Continuation<? super Integer> continuation) {
        C09871 c09871;
        int iIntValue;
        if (continuation instanceof C09871) {
            c09871 = (C09871) continuation;
            int i = c09871.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c09871.label = i - Integer.MIN_VALUE;
            } else {
                c09871 = new C09871(continuation);
            }
        }
        Object objDeleteProfiles = c09871.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c09871.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objDeleteProfiles);
                ProfileDao profileDao = ExteraDatabase.Companion.getInstance().profileDao();
                c09871.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c09871.label = 1;
                objDeleteProfiles = profileDao.deleteProfiles(list, c09871);
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
            FileLog.m955e(th);
            iIntValue = 0;
        }
        return Boxing.boxInt(iIntValue);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$getNowPlaying$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.DatabaseHelper$getNowPlaying$1", m916f = "DatabaseHelper.kt", m917l = {48}, m918m = "invokeSuspend", m919v = 1)
    static final class C09901 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<NowPlayingInfoDTO> $callback;
        final /* synthetic */ long $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09901(long j, Consumer<NowPlayingInfoDTO> consumer, Continuation<? super C09901> continuation) {
            super(2, continuation);
            this.$id = j;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09901(this.$id, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09901) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                this.$callback.m800v(profileDTO != null ? profileDTO.getNowPlaying() : null);
            } catch (Throwable th) {
                FileLog.m955e(th);
                this.$callback.m800v(null);
            }
            return Unit.INSTANCE;
        }
    }

    public static final void getNowPlaying(long j, Consumer<NowPlayingInfoDTO> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C09901(j, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1", m916f = "DatabaseHelper.kt", m917l = {62}, m918m = "invokeSuspend", m919v = 1)
    static final class C09951 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<Integer> $callback;
        final /* synthetic */ long $id;
        final /* synthetic */ NowPlayingInfoDTO $newNowPlaying;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09951(long j, NowPlayingInfoDTO nowPlayingInfoDTO, Consumer<Integer> consumer, Continuation<? super C09951> continuation) {
            super(2, continuation);
            this.$id = j;
            this.$newNowPlaying = nowPlayingInfoDTO;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09951(this.$id, this.$newNowPlaying, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09951) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                this.$callback.m800v(Boxing.boxInt(((Number) obj).intValue()));
            } catch (Throwable th) {
                FileLog.m955e(th);
                this.$callback.m800v(Boxing.boxInt(0));
            }
            return Unit.INSTANCE;
        }
    }

    public static final void updateNowPlaying(long j, NowPlayingInfoDTO nowPlayingInfoDTO, Consumer<Integer> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C09951(j, nowPlayingInfoDTO, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$isRegDateAdded$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.DatabaseHelper$isRegDateAdded$1", m916f = "DatabaseHelper.kt", m917l = {75}, m918m = "invokeSuspend", m919v = 1)
    static final class C09931 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<Boolean> $callback;
        final /* synthetic */ long $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09931(long j, Consumer<Boolean> consumer, Continuation<? super C09931> continuation) {
            super(2, continuation);
            this.$userId = j;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09931(this.$userId, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09931) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                this.$callback.m800v(Boxing.boxBoolean(((Boolean) obj).booleanValue()));
            } catch (Throwable th) {
                FileLog.m955e(th);
                this.$callback.m800v(Boxing.boxBoolean(false));
            }
            return Unit.INSTANCE;
        }
    }

    public static final void isRegDateAdded(long j, Consumer<Boolean> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C09931(j, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$setRegDateAdded$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.DatabaseHelper$setRegDateAdded$1", m916f = "DatabaseHelper.kt", m917l = {88}, m918m = "invokeSuspend", m919v = 1)
    static final class C09941 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09941(long j, Continuation<? super C09941> continuation) {
            super(2, continuation);
            this.$userId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09941(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09941) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                FileLog.m955e(th);
            }
            return Unit.INSTANCE;
        }
    }

    public static final void setRegDateAdded(long j) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C09941(j, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object insertBoostySubscribers(List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
        C09911 c09911;
        if (continuation instanceof C09911) {
            c09911 = (C09911) continuation;
            int i = c09911.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c09911.label = i - Integer.MIN_VALUE;
            } else {
                c09911 = new C09911(continuation);
            }
        }
        Object obj = c09911.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c09911.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                BoostySubscriberDao boostySubscriberDao = ExteraDatabase.Companion.getInstance().boostySubscriberDao();
                c09911.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c09911.label = 1;
                if (boostySubscriberDao.replaceSubscribers(list, c09911) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (Throwable th) {
            FileLog.m955e(th);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1 */
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1", m916f = "DatabaseHelper.kt", m917l = {107}, m918m = "invokeSuspend", m919v = 1)
    static final class C09881 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<List<BoostySubscriberDTO>> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09881(Consumer<List<BoostySubscriberDTO>> consumer, Continuation<? super C09881> continuation) {
            super(2, continuation);
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09881(this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09881) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                this.$callback.m800v(CollectionsKt.sortedWith((List) obj, new Comparator() { // from class: com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1$invokeSuspend$$inlined$sortedByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(((BoostySubscriberDTO) t2).getTotalAmountRub(), ((BoostySubscriberDTO) t).getTotalAmountRub());
                    }
                }));
            } catch (Throwable th) {
                FileLog.m955e(th);
                this.$callback.m800v(CollectionsKt.emptyList());
            }
            return Unit.INSTANCE;
        }
    }

    public static final void getBoostySubscribers(Consumer<List<BoostySubscriberDTO>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C09881(callback, null), 3, null);
    }
}
