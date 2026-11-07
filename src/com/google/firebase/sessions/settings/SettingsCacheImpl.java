package com.google.firebase.sessions.settings;

import android.util.Log;
import androidx.datastore.core.DataStore;
import androidx.media3.exoplayer.mediacodec.AbstractC0748xa830b2f;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.sessions.TimeProvider;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B)\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0007H\u0096@¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001bR\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001cR\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0016\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/google/firebase/sessions/settings/SettingsCacheImpl;", "Lcom/google/firebase/sessions/settings/SettingsCache;", "Lkotlin/coroutines/CoroutineContext;", "backgroundDispatcher", "Lcom/google/firebase/sessions/TimeProvider;", "timeProvider", "Landroidx/datastore/core/DataStore;", "Lcom/google/firebase/sessions/settings/SessionConfigs;", "sessionConfigsDataStore", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/TimeProvider;Landroidx/datastore/core/DataStore;)V", _UrlKt.FRAGMENT_ENCODE_SET, "hasCacheExpired", "()Z", "sessionsEnabled", "()Ljava/lang/Boolean;", _UrlKt.FRAGMENT_ENCODE_SET, "sessionSamplingRate", "()Ljava/lang/Double;", _UrlKt.FRAGMENT_ENCODE_SET, "sessionRestartTimeout", "()Ljava/lang/Integer;", "sessionConfigs", _UrlKt.FRAGMENT_ENCODE_SET, "updateConfigs", "(Lcom/google/firebase/sessions/settings/SessionConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "Lcom/google/firebase/sessions/TimeProvider;", "Landroidx/datastore/core/DataStore;", "Ljava/util/concurrent/atomic/AtomicReference;", "sessionConfigsAtomicReference", "Ljava/util/concurrent/atomic/AtomicReference;", "getSessionConfigs", "()Lcom/google/firebase/sessions/settings/SessionConfigs;", "com.google.firebase-firebase-sessions"}, m862k = 1, mv = {2, 0, 0}, xi = 48)
public final class SettingsCacheImpl implements SettingsCache {
    private final CoroutineContext backgroundDispatcher;
    private final AtomicReference<SessionConfigs> sessionConfigsAtomicReference = new AtomicReference<>();
    private final DataStore<SessionConfigs> sessionConfigsDataStore;
    private final TimeProvider timeProvider;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$1 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m862k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m872c = "com.google.firebase.sessions.settings.SettingsCacheImpl", m873f = "SettingsCache.kt", m874i = {}, m875l = {98}, m876m = "updateConfigs", m877n = {}, m878s = {})
    public static final class C19591 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C19591(Continuation<? super C19591> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SettingsCacheImpl.this.updateConfigs(null, this);
        }
    }

    public SettingsCacheImpl(@Background CoroutineContext coroutineContext, TimeProvider timeProvider, DataStore<SessionConfigs> dataStore) {
        this.backgroundDispatcher = coroutineContext;
        this.timeProvider = timeProvider;
        this.sessionConfigsDataStore = dataStore;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineContext), null, null, new C19581(null), 3, null);
    }

    private final SessionConfigs getSessionConfigs() {
        if (this.sessionConfigsAtomicReference.get() == null) {
            AbstractC0748xa830b2f.m184m(this.sessionConfigsAtomicReference, null, BuildersKt__BuildersKt.runBlocking$default(null, new SettingsCacheImpl$sessionConfigs$1(this, null), 1, null));
        }
        return this.sessionConfigsAtomicReference.get();
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m872c = "com.google.firebase.sessions.settings.SettingsCacheImpl$1", m873f = "SettingsCache.kt", m874i = {}, m875l = {73}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C19581 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C19581(Continuation<? super C19581> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SettingsCacheImpl.this.new C19581(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C19581) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1$1, reason: invalid class name */
        @Metadata(m862k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class AnonymousClass1 implements FlowCollector, FunctionAdapter {
            final /* synthetic */ AtomicReference<SessionConfigs> $tmp0;

            public AnonymousClass1(AtomicReference<SessionConfigs> atomicReference) {
                this.$tmp0 = atomicReference;
            }

            public final boolean equals(Object obj) {
                if ((obj instanceof FlowCollector) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            }

            @Override // kotlin.jvm.internal.FunctionAdapter
            public final Function<?> getFunctionDelegate() {
                return new AdaptedFunctionReference(2, this.$tmp0, AtomicReference.class, "set", "set(Ljava/lang/Object;)V", 4);
            }

            public final int hashCode() {
                return getFunctionDelegate().hashCode();
            }

            public final Object emit(SessionConfigs sessionConfigs, Continuation<? super Unit> continuation) {
                Object objInvokeSuspend$set = C19581.invokeSuspend$set(this.$tmp0, sessionConfigs, continuation);
                return objInvokeSuspend$set == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvokeSuspend$set : Unit.INSTANCE;
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                return emit((SessionConfigs) obj, (Continuation<? super Unit>) continuation);
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow data = SettingsCacheImpl.this.sessionConfigsDataStore.getData();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(SettingsCacheImpl.this.sessionConfigsAtomicReference);
                this.label = 1;
                if (data.collect(anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ Object invokeSuspend$set(AtomicReference atomicReference, SessionConfigs sessionConfigs, Continuation continuation) {
            atomicReference.set(sessionConfigs);
            return Unit.INSTANCE;
        }
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public boolean hasCacheExpired() {
        Long cacheUpdatedTimeSeconds = getSessionConfigs().getCacheUpdatedTimeSeconds();
        Integer cacheDurationSeconds = getSessionConfigs().getCacheDurationSeconds();
        return cacheUpdatedTimeSeconds == null || cacheDurationSeconds == null || this.timeProvider.currentTime().getSeconds() - cacheUpdatedTimeSeconds.longValue() >= ((long) cacheDurationSeconds.intValue());
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public Boolean sessionsEnabled() {
        return getSessionConfigs().getSessionsEnabled();
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public Double sessionSamplingRate() {
        return getSessionConfigs().getSessionSamplingRate();
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public Integer sessionRestartTimeout() {
        return getSessionConfigs().getSessionTimeoutSeconds();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.firebase.sessions.settings.SettingsCache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object updateConfigs(SessionConfigs sessionConfigs, Continuation<? super Unit> continuation) {
        C19591 c19591;
        if (continuation instanceof C19591) {
            c19591 = (C19591) continuation;
            int i = c19591.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c19591.label = i - Integer.MIN_VALUE;
            } else {
                c19591 = new C19591(continuation);
            }
        }
        Object obj = c19591.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c19591.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                DataStore<SessionConfigs> dataStore = this.sessionConfigsDataStore;
                C19602 c19602 = new C19602(sessionConfigs, null);
                c19591.label = 1;
                if (dataStore.updateData(c19602, c19591) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (IOException e) {
            Log.w("FirebaseSessions", "Failed to update config values: " + e);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$2 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/google/firebase/sessions/settings/SessionConfigs;", "it"}, m862k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m872c = "com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$2", m873f = "SettingsCache.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C19602 extends SuspendLambda implements Function2<SessionConfigs, Continuation<? super SessionConfigs>, Object> {
        final /* synthetic */ SessionConfigs $sessionConfigs;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19602(SessionConfigs sessionConfigs, Continuation<? super C19602> continuation) {
            super(2, continuation);
            this.$sessionConfigs = sessionConfigs;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C19602(this.$sessionConfigs, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SessionConfigs sessionConfigs, Continuation<? super SessionConfigs> continuation) {
            return ((C19602) create(sessionConfigs, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                return this.$sessionConfigs;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }
}
