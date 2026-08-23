package com.google.firebase.sessions.settings;

import android.util.Log;
import androidx.datastore.core.DataStore;
import com.google.android.exoplayer2.mediacodec.AbstractC1272xa830b30;
import com.google.firebase.sessions.TimeProvider;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Function;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
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

/* JADX INFO: loaded from: classes.dex */
public final class SettingsCacheImpl implements SettingsCache {
    private final CoroutineContext backgroundDispatcher;
    private final AtomicReference sessionConfigsAtomicReference;
    private final DataStore sessionConfigsDataStore;
    private final TimeProvider timeProvider;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$1 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C19161 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C19161(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SettingsCacheImpl.this.updateConfigs(null, this);
        }
    }

    public SettingsCacheImpl(CoroutineContext backgroundDispatcher, TimeProvider timeProvider, DataStore sessionConfigsDataStore) {
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(sessionConfigsDataStore, "sessionConfigsDataStore");
        this.backgroundDispatcher = backgroundDispatcher;
        this.timeProvider = timeProvider;
        this.sessionConfigsDataStore = sessionConfigsDataStore;
        this.sessionConfigsAtomicReference = new AtomicReference();
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(backgroundDispatcher), null, null, new C19151(null), 3, null);
    }

    private final SessionConfigs getSessionConfigs() {
        if (this.sessionConfigsAtomicReference.get() == null) {
            AbstractC1272xa830b30.m315m(this.sessionConfigsAtomicReference, null, BuildersKt__BuildersKt.runBlocking$default(null, new SettingsCacheImpl$sessionConfigs$1(this, null), 1, null));
        }
        Object obj = this.sessionConfigsAtomicReference.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return (SessionConfigs) obj;
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1 */
    static final class C19151 extends SuspendLambda implements Function2 {
        int label;

        C19151(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SettingsCacheImpl.this.new C19151(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C19151) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1$1, reason: invalid class name */
        /* synthetic */ class AnonymousClass1 implements FlowCollector, FunctionAdapter {
            final /* synthetic */ AtomicReference $tmp0;

            AnonymousClass1(AtomicReference atomicReference) {
                this.$tmp0 = atomicReference;
            }

            public final boolean equals(Object obj) {
                if ((obj instanceof FlowCollector) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            }

            @Override // kotlin.jvm.internal.FunctionAdapter
            public final Function getFunctionDelegate() {
                return new AdaptedFunctionReference(2, this.$tmp0, AtomicReference.class, "set", "set(Ljava/lang/Object;)V", 4);
            }

            public final int hashCode() {
                return getFunctionDelegate().hashCode();
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object emit(SessionConfigs sessionConfigs, Continuation continuation) {
                Object objInvokeSuspend$set = C19151.invokeSuspend$set(this.$tmp0, sessionConfigs, continuation);
                return objInvokeSuspend$set == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvokeSuspend$set : Unit.INSTANCE;
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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
    public Object updateConfigs(SessionConfigs sessionConfigs, Continuation continuation) {
        C19161 c19161;
        if (continuation instanceof C19161) {
            c19161 = (C19161) continuation;
            int i = c19161.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c19161.label = i - Integer.MIN_VALUE;
            } else {
                c19161 = new C19161(continuation);
            }
        }
        Object obj = c19161.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c19161.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                DataStore dataStore = this.sessionConfigsDataStore;
                C19172 c19172 = new C19172(sessionConfigs, null);
                c19161.label = 1;
                if (dataStore.updateData(c19172, c19161) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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
    static final class C19172 extends SuspendLambda implements Function2 {
        final /* synthetic */ SessionConfigs $sessionConfigs;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19172(SessionConfigs sessionConfigs, Continuation continuation) {
            super(2, continuation);
            this.$sessionConfigs = sessionConfigs;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C19172(this.$sessionConfigs, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SessionConfigs sessionConfigs, Continuation continuation) {
            return ((C19172) create(sessionConfigs, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return this.$sessionConfigs;
        }
    }
}
