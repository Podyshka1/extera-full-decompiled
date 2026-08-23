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
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0086@¢\u0006\u0002\u0010\u000bJ\u001c\u0010\f\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\tH\u0086@¢\u0006\u0002\u0010\u000bJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0013H\u0007J(\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00142\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00170\u0013H\u0007J\u001e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013H\u0007J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u000eH\u0007J\u001c\u0010\u001b\u001a\u00020\u00072\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\tH\u0086@¢\u0006\u0002\u0010\u000bJ\u001c\u0010\u001e\u001a\u00020\u00102\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\t0\u0013H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/api/db/DatabaseHelper;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "insertProfiles", _UrlKt.FRAGMENT_ENCODE_SET, "profiles", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/api/dto/ProfileDTO;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteProfiles", "ids", _UrlKt.FRAGMENT_ENCODE_SET, "getNowPlaying", _UrlKt.FRAGMENT_ENCODE_SET, "id", Callback.METHOD_NAME, "Ljava/util/function/Consumer;", "Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;", "updateNowPlaying", "newNowPlaying", _UrlKt.FRAGMENT_ENCODE_SET, "isRegDateAdded", "userId", "setRegDateAdded", "insertBoostySubscribers", "subscribers", "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;", "getBoostySubscribers", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class DatabaseHelper {
    public static final DatabaseHelper INSTANCE = new DatabaseHelper();
    private static final CoroutineScope scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$deleteProfiles$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.DatabaseHelper", m766f = "DatabaseHelper.kt", m767i = {0}, m768l = {42}, m769m = "deleteProfiles", m770n = {"ids"}, m771s = {"L$0"}, m772v = 1)
    public static final class C10001 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C10001(Continuation<? super C10001> continuation) {
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
    @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.DatabaseHelper", m766f = "DatabaseHelper.kt", m767i = {0}, m768l = {113}, m769m = "insertBoostySubscribers", m770n = {"subscribers"}, m771s = {"L$0"}, m772v = 1)
    public static final class C10041 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C10041(Continuation<? super C10041> continuation) {
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
    @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.DatabaseHelper", m766f = "DatabaseHelper.kt", m767i = {0}, m768l = {30}, m769m = "insertProfiles", m770n = {"profiles"}, m771s = {"L$0"}, m772v = 1)
    public static final class C10051 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C10051(Continuation<? super C10051> continuation) {
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
        C10051 c10051;
        if (continuation instanceof C10051) {
            c10051 = (C10051) continuation;
            int i = c10051.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10051.label = i - Integer.MIN_VALUE;
            } else {
                c10051 = new C10051(continuation);
            }
        }
        Object obj = c10051.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10051.label;
        boolean z = true;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ProfileDao profileDao = ExteraDatabase.INSTANCE.getInstance().profileDao();
                c10051.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c10051.label = 1;
                if (profileDao.insertAll(list, c10051) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            FileLog.m898e(th);
            z = false;
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object deleteProfiles(List<Long> list, Continuation<? super Boolean> continuation) {
        C10001 c10001;
        if (continuation instanceof C10001) {
            c10001 = (C10001) continuation;
            int i = c10001.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10001.label = i - Integer.MIN_VALUE;
            } else {
                c10001 = new C10001(continuation);
            }
        }
        Object obj = c10001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10001.label;
        boolean z = true;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ProfileDao profileDao = ExteraDatabase.INSTANCE.getInstance().profileDao();
                c10001.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c10001.label = 1;
                if (profileDao.deleteProfiles(list, c10001) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            FileLog.m898e(th);
            z = false;
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$getNowPlaying$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.DatabaseHelper$getNowPlaying$1", m766f = "DatabaseHelper.kt", m767i = {}, m768l = {56}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C10031 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<NowPlayingInfoDTO> $callback;
        final /* synthetic */ long $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10031(long j, Consumer<NowPlayingInfoDTO> consumer, Continuation<? super C10031> continuation) {
            super(2, continuation);
            this.$id = j;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10031(this.$id, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10031) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ProfileDTO profileDTO = (ProfileDTO) obj;
                this.$callback.accept(profileDTO != null ? profileDTO.getNowPlaying() : null);
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m898e(th);
                this.$callback.accept(null);
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void getNowPlaying(long id, Consumer<NowPlayingInfoDTO> callback) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10031(id, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1", m766f = "DatabaseHelper.kt", m767i = {}, m768l = {72}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C10081 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<Integer> $callback;
        final /* synthetic */ long $id;
        final /* synthetic */ NowPlayingInfoDTO $newNowPlaying;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10081(long j, NowPlayingInfoDTO nowPlayingInfoDTO, Consumer<Integer> consumer, Continuation<? super C10081> continuation) {
            super(2, continuation);
            this.$id = j;
            this.$newNowPlaying = nowPlayingInfoDTO;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10081(this.$id, this.$newNowPlaying, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.accept(Boxing.boxInt(((Number) obj).intValue()));
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m898e(th);
                this.$callback.accept(Boxing.boxInt(0));
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void updateNowPlaying(long id, NowPlayingInfoDTO newNowPlaying, Consumer<Integer> callback) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10081(id, newNowPlaying, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$isRegDateAdded$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.DatabaseHelper$isRegDateAdded$1", m766f = "DatabaseHelper.kt", m767i = {}, m768l = {87}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C10061 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<Boolean> $callback;
        final /* synthetic */ long $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10061(long j, Consumer<Boolean> consumer, Continuation<? super C10061> continuation) {
            super(2, continuation);
            this.$userId = j;
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10061(this.$userId, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10061) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$callback.accept(Boxing.boxBoolean(((Boolean) obj).booleanValue()));
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m898e(th);
                this.$callback.accept(Boxing.boxBoolean(false));
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void isRegDateAdded(long userId, Consumer<Boolean> callback) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10061(userId, callback, null), 3, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$setRegDateAdded$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.DatabaseHelper$setRegDateAdded$1", m766f = "DatabaseHelper.kt", m767i = {}, m768l = {102}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C10071 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10071(long j, Continuation<? super C10071> continuation) {
            super(2, continuation);
            this.$userId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10071(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10071) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                FileLog.m898e(th);
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void setRegDateAdded(long userId) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10071(userId, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object insertBoostySubscribers(List<BoostySubscriberDTO> list, Continuation<? super Boolean> continuation) {
        C10041 c10041;
        if (continuation instanceof C10041) {
            c10041 = (C10041) continuation;
            int i = c10041.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10041.label = i - Integer.MIN_VALUE;
            } else {
                c10041 = new C10041(continuation);
            }
        }
        Object obj = c10041.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10041.label;
        boolean z = true;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                BoostySubscriberDao boostySubscriberDao = ExteraDatabase.INSTANCE.getInstance().boostySubscriberDao();
                c10041.L$0 = SpillingKt.nullOutSpilledVariable(list);
                c10041.label = 1;
                if (boostySubscriberDao.replaceSubscribers(list, c10041) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            FileLog.m898e(th);
            z = false;
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1", m766f = "DatabaseHelper.kt", m767i = {}, m768l = {127}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    @SourceDebugExtension({"SMAP\nDatabaseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatabaseHelper.kt\ncom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1080#2:140\n*S KotlinDebug\n*F\n+ 1 DatabaseHelper.kt\ncom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1\n*L\n128#1:140\n*E\n"})
    public static final class C10011 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Consumer<List<BoostySubscriberDTO>> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10011(Consumer<List<BoostySubscriberDTO>> consumer, Continuation<? super C10011> continuation) {
            super(2, continuation);
            this.$callback = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10011(this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10011) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
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
                FileLog.m898e(th);
                this.$callback.accept(CollectionsKt.emptyList());
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final void getBoostySubscribers(Consumer<List<BoostySubscriberDTO>> callback) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10011(callback, null), 3, null);
    }
}
