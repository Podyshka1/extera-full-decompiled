package com.exteragram.messenger.api.db;

import com.exteragram.messenger.api.dto.AddedRegDateDTO;
import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import com.exteragram.messenger.api.dto.NowPlayingInfoDTO;
import com.exteragram.messenger.api.dto.ProfileDTO;
import com.sun.jna.Callback;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.function.Consumer;
import kotlin.Metadata;
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
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0086@¢\u0006\u0002\u0010\u000bJ\u001c\u0010\f\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\tH\u0086@¢\u0006\u0002\u0010\u000bJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0013H\u0007J(\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00142\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00170\u0013H\u0007J\u001e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013H\u0007J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u000eH\u0007J\u001c\u0010\u001b\u001a\u00020\u00072\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\tH\u0086@¢\u0006\u0002\u0010\u000bJ\u001c\u0010\u001e\u001a\u00020\u00102\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\t0\u0013H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/api/db/DatabaseHelper;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "insertProfiles", _UrlKt.FRAGMENT_ENCODE_SET, "profiles", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/api/dto/ProfileDTO;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteProfiles", "ids", _UrlKt.FRAGMENT_ENCODE_SET, "getNowPlaying", _UrlKt.FRAGMENT_ENCODE_SET, "id", Callback.METHOD_NAME, "Ljava/util/function/Consumer;", "Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;", "updateNowPlaying", "newNowPlaying", _UrlKt.FRAGMENT_ENCODE_SET, "isRegDateAdded", "userId", "setRegDateAdded", "insertBoostySubscribers", "subscribers", "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;", "getBoostySubscribers", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class DatabaseHelper {
    public static final DatabaseHelper INSTANCE = new DatabaseHelper();
    private static final CoroutineScope scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$deleteProfiles$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.DatabaseHelper", m873f = "DatabaseHelper.kt", m874i = {0}, m875l = {42}, m876m = "deleteProfiles", m877n = {"ids"}, m878s = {"L$0"})
    public static final class C12221 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C12221(Continuation<? super C12221> continuation) {
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
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.DatabaseHelper", m873f = "DatabaseHelper.kt", m874i = {0}, m875l = {113}, m876m = "insertBoostySubscribers", m877n = {"subscribers"}, m878s = {"L$0"})
    public static final class C12261 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C12261(Continuation<? super C12261> continuation) {
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
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.DatabaseHelper", m873f = "DatabaseHelper.kt", m874i = {0}, m875l = {30}, m876m = "insertProfiles", m877n = {"profiles"}, m878s = {"L$0"})
    public static final class C12271 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C12271(Continuation<? super C12271> continuation) {
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
    public final Object insertProfiles(List<ProfileDTO> list, Continuation<? super Boolean> continuation) {
        C12271 c12271;
        if (continuation instanceof C12271) {
            c12271 = (C12271) continuation;
            int i = c12271.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c12271.label = i - Integer.MIN_VALUE;
            } else {
                c12271 = new C12271(continuation);
            }
        }
        Object obj = c12271.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c12271.label;
        boolean z = true;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ProfileDao profileDao = ExteraDatabase.INSTANCE.getInstance().profileDao();
                c12271.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c12271.label = 1;
                if (profileDao.insertAll(list, c12271) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            FileLog.m992e(th);
            z = false;
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object deleteProfiles(List<Long> list, Continuation<? super Boolean> continuation) {
        C12221 c12221;
        if (continuation instanceof C12221) {
            c12221 = (C12221) continuation;
            int i = c12221.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c12221.label = i - Integer.MIN_VALUE;
            } else {
                c12221 = new C12221(continuation);
            }
        }
        Object obj = c12221.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c12221.label;
        boolean z = true;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ProfileDao profileDao = ExteraDatabase.INSTANCE.getInstance().profileDao();
                c12221.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c12221.label = 1;
                if (profileDao.deleteProfiles(list, c12221) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            FileLog.m992e(th);
            z = false;
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$getNowPlaying$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.DatabaseHelper$getNowPlaying$1", m873f = "DatabaseHelper.kt", m874i = {}, m875l = {56}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C12251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<NowPlayingInfoDTO> $callback;
        final /* synthetic */ long $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12251(long j, Consumer<NowPlayingInfoDTO> consumer, Continuation<? super C12251> continuation) {
            super(2, continuation);
            this.$id = j;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12251(this.$id, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ProfileDao profileDao = ExteraDatabase.INSTANCE.getInstance().profileDao();
                    long j = this.$id;
                    this.label = 1;
                    obj = profileDao.getById(j, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ProfileDTO profileDTO = (ProfileDTO) obj;
                this.$callback.accept(profileDTO != null ? profileDTO.getNowPlaying() : null);
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m992e(th);
                this.$callback.accept(null);
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void getNowPlaying(long id, Consumer<NowPlayingInfoDTO> callback) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C12251(id, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1", m873f = "DatabaseHelper.kt", m874i = {}, m875l = {72}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C12301 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<Integer> $callback;
        final /* synthetic */ long $id;
        final /* synthetic */ NowPlayingInfoDTO $newNowPlaying;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12301(long j, NowPlayingInfoDTO nowPlayingInfoDTO, Consumer<Integer> consumer, Continuation<? super C12301> continuation) {
            super(2, continuation);
            this.$id = j;
            this.$newNowPlaying = nowPlayingInfoDTO;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12301(this.$id, this.$newNowPlaying, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12301) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ProfileDao profileDao = ExteraDatabase.INSTANCE.getInstance().profileDao();
                    long j = this.$id;
                    NowPlayingInfoDTO nowPlayingInfoDTO = this.$newNowPlaying;
                    this.label = 1;
                    obj = profileDao.updateNowPlaying(j, nowPlayingInfoDTO, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.accept(Boxing.boxInt(((Number) obj).intValue()));
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m992e(th);
                this.$callback.accept(Boxing.boxInt(0));
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void updateNowPlaying(long id, NowPlayingInfoDTO newNowPlaying, Consumer<Integer> callback) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C12301(id, newNowPlaying, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$isRegDateAdded$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.DatabaseHelper$isRegDateAdded$1", m873f = "DatabaseHelper.kt", m874i = {}, m875l = {87}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C12281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<Boolean> $callback;
        final /* synthetic */ long $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12281(long j, Consumer<Boolean> consumer, Continuation<? super C12281> continuation) {
            super(2, continuation);
            this.$userId = j;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12281(this.$userId, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    AddedRegDateDao addedRegDateDao = ExteraDatabase.INSTANCE.getInstance().addedRegDateDao();
                    long j = this.$userId;
                    this.label = 1;
                    obj = addedRegDateDao.isAdded(j, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.accept(Boxing.boxBoolean(((Boolean) obj).booleanValue()));
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m992e(th);
                this.$callback.accept(Boxing.boxBoolean(false));
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void isRegDateAdded(long userId, Consumer<Boolean> callback) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C12281(userId, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$setRegDateAdded$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.DatabaseHelper$setRegDateAdded$1", m873f = "DatabaseHelper.kt", m874i = {}, m875l = {102}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C12291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12291(long j, Continuation<? super C12291> continuation) {
            super(2, continuation);
            this.$userId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12291(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    AddedRegDateDao addedRegDateDao = ExteraDatabase.INSTANCE.getInstance().addedRegDateDao();
                    AddedRegDateDTO addedRegDateDTO = new AddedRegDateDTO(this.$userId);
                    this.label = 1;
                    if (addedRegDateDao.insert(addedRegDateDTO, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m992e(th);
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void setRegDateAdded(long userId) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C12291(userId, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object insertBoostySubscribers(List<BoostySubscriberDTO> list, Continuation<? super Boolean> continuation) {
        C12261 c12261;
        if (continuation instanceof C12261) {
            c12261 = (C12261) continuation;
            int i = c12261.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c12261.label = i - Integer.MIN_VALUE;
            } else {
                c12261 = new C12261(continuation);
            }
        }
        Object obj = c12261.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c12261.label;
        boolean z = true;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                BoostySubscriberDao boostySubscriberDao = ExteraDatabase.INSTANCE.getInstance().boostySubscriberDao();
                c12261.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c12261.label = 1;
                if (boostySubscriberDao.replaceSubscribers(list, c12261) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            FileLog.m992e(th);
            z = false;
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1", m873f = "DatabaseHelper.kt", m874i = {}, m875l = {127}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    @SourceDebugExtension({"SMAP\nDatabaseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatabaseHelper.kt\ncom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1080#2:140\n*S KotlinDebug\n*F\n+ 1 DatabaseHelper.kt\ncom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1\n*L\n128#1:140\n*E\n"})
    public static final class C12231 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<List<BoostySubscriberDTO>> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12231(Consumer<List<BoostySubscriberDTO>> consumer, Continuation<? super C12231> continuation) {
            super(2, continuation);
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12231(this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C12231) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    BoostySubscriberDao boostySubscriberDao = ExteraDatabase.INSTANCE.getInstance().boostySubscriberDao();
                    this.label = 1;
                    obj = boostySubscriberDao.getAll(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.accept(CollectionsKt.sortedWith((List) obj, new Comparator() { // from class: com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1$invokeSuspend$$inlined$sortedByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(((BoostySubscriberDTO) t2).getTotalAmountRub(), ((BoostySubscriberDTO) t).getTotalAmountRub());
                    }
                }));
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m992e(th);
                this.$callback.accept(CollectionsKt.emptyList());
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void getBoostySubscribers(Consumer<List<BoostySubscriberDTO>> callback) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C12231(callback, null), 3, null);
    }
}
