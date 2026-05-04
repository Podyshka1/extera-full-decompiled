package com.google.firebase.sessions;

import android.util.Log;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class SharedSessionRepositoryImpl implements SharedSessionRepository {
    private final CoroutineContext backgroundDispatcher;
    private boolean isInForeground;
    public SessionData localSessionData;
    private NotificationType previousNotificationType;
    private String previousSessionId;
    private final ProcessDataManager processDataManager;
    private final DataStore sessionDataStore;
    private final SessionFirelogPublisher sessionFirelogPublisher;
    private final SessionGenerator sessionGenerator;
    private final SessionsSettings sessionsSettings;
    private final TimeProvider timeProvider;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NotificationType.values().length];
            try {
                iArr[NotificationType.GENERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NotificationType.FALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$notifySubscribers$1 */
    static final class C19111 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C19111(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SharedSessionRepositoryImpl.this.notifySubscribers(null, null, this);
        }
    }

    public SharedSessionRepositoryImpl(SessionsSettings sessionsSettings, SessionGenerator sessionGenerator, SessionFirelogPublisher sessionFirelogPublisher, TimeProvider timeProvider, DataStore sessionDataStore, ProcessDataManager processDataManager, CoroutineContext backgroundDispatcher) {
        Intrinsics.checkNotNullParameter(sessionsSettings, "sessionsSettings");
        Intrinsics.checkNotNullParameter(sessionGenerator, "sessionGenerator");
        Intrinsics.checkNotNullParameter(sessionFirelogPublisher, "sessionFirelogPublisher");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(sessionDataStore, "sessionDataStore");
        Intrinsics.checkNotNullParameter(processDataManager, "processDataManager");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        this.sessionsSettings = sessionsSettings;
        this.sessionGenerator = sessionGenerator;
        this.sessionFirelogPublisher = sessionFirelogPublisher;
        this.timeProvider = timeProvider;
        this.sessionDataStore = sessionDataStore;
        this.processDataManager = processDataManager;
        this.backgroundDispatcher = backgroundDispatcher;
        this.previousNotificationType = NotificationType.GENERAL;
        this.previousSessionId = _UrlKt.FRAGMENT_ENCODE_SET;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(backgroundDispatcher), null, null, new C19081(null), 3, null);
    }

    public final SessionData getLocalSessionData$com_google_firebase_firebase_sessions() {
        SessionData sessionData = this.localSessionData;
        if (sessionData != null) {
            return sessionData;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localSessionData");
        return null;
    }

    public final void setLocalSessionData$com_google_firebase_firebase_sessions(SessionData sessionData) {
        Intrinsics.checkNotNullParameter(sessionData, "<set-?>");
        this.localSessionData = sessionData;
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    public boolean isInForeground() {
        return this.isInForeground;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class NotificationType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ NotificationType[] $VALUES;
        public static final NotificationType GENERAL = new NotificationType("GENERAL", 0);
        public static final NotificationType FALLBACK = new NotificationType("FALLBACK", 1);

        private static final /* synthetic */ NotificationType[] $values() {
            return new NotificationType[]{GENERAL, FALLBACK};
        }

        private NotificationType(String str, int i) {
        }

        static {
            NotificationType[] notificationTypeArr$values = $values();
            $VALUES = notificationTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(notificationTypeArr$values);
        }

        public static NotificationType valueOf(String str) {
            return (NotificationType) Enum.valueOf(NotificationType.class, str);
        }

        public static NotificationType[] values() {
            return (NotificationType[]) $VALUES.clone();
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1 */
    static final class C19081 extends SuspendLambda implements Function2 {
        int label;

        C19081(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SharedSessionRepositoryImpl.this.new C19081(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C19081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow flowM3689catch = FlowKt.m3689catch(SharedSessionRepositoryImpl.this.sessionDataStore.getData(), new AnonymousClass1(SharedSessionRepositoryImpl.this, null));
                final SharedSessionRepositoryImpl sharedSessionRepositoryImpl = SharedSessionRepositoryImpl.this;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.google.firebase.sessions.SharedSessionRepositoryImpl.1.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(SessionData sessionData, Continuation continuation) {
                        sharedSessionRepositoryImpl.setLocalSessionData$com_google_firebase_firebase_sessions(sessionData);
                        Object objNotifySubscribers = sharedSessionRepositoryImpl.notifySubscribers(sessionData.getSessionDetails().getSessionId(), NotificationType.GENERAL, continuation);
                        return objNotifySubscribers == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objNotifySubscribers : Unit.INSTANCE;
                    }
                };
                this.label = 1;
                if (flowM3689catch.collect(flowCollector, this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function3 {
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;
            final /* synthetic */ SharedSessionRepositoryImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, Continuation continuation) {
                super(3, continuation);
                this.this$0 = sharedSessionRepositoryImpl;
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(FlowCollector flowCollector, Throwable th, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.L$0 = flowCollector;
                anonymousClass1.L$1 = th;
                return anonymousClass1.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector flowCollector = (FlowCollector) this.L$0;
                    Throwable th = (Throwable) this.L$1;
                    SessionData sessionData = new SessionData(this.this$0.sessionGenerator.generateNewSession(null), (Time) null, (Map) null, 4, (DefaultConstructorMarker) null);
                    Log.d("FirebaseSessions", "Init session datastore failed with exception message: " + th.getMessage() + ". Emit fallback session " + sessionData.getSessionDetails().getSessionId());
                    this.L$0 = null;
                    this.label = 1;
                    if (flowCollector.emit(sessionData, this) == coroutine_suspended) {
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
        }
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    public void appBackground() {
        this.isInForeground = false;
        if (this.localSessionData == null) {
            Log.d("FirebaseSessions", "App backgrounded, but local SessionData not initialized");
            return;
        }
        Log.d("FirebaseSessions", "App backgrounded on " + this.processDataManager.getMyProcessName());
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.backgroundDispatcher), null, null, new C19091(null), 3, null);
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C19091 extends SuspendLambda implements Function2 {
        int label;

        C19091(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SharedSessionRepositoryImpl.this.new C19091(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C19091) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    DataStore dataStore = SharedSessionRepositoryImpl.this.sessionDataStore;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(SharedSessionRepositoryImpl.this, null);
                    this.label = 1;
                    if (dataStore.updateData(anonymousClass1, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Exception e) {
                Log.d("FirebaseSessions", "App backgrounded, failed to update data. Message: " + e.getMessage());
                SharedSessionRepositoryImpl sharedSessionRepositoryImpl = SharedSessionRepositoryImpl.this;
                sharedSessionRepositoryImpl.setLocalSessionData$com_google_firebase_firebase_sessions(SessionData.copy$default(sharedSessionRepositoryImpl.getLocalSessionData$com_google_firebase_firebase_sessions(), null, SharedSessionRepositoryImpl.this.timeProvider.currentTime(), null, 5, null));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SharedSessionRepositoryImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, Continuation continuation) {
                super(2, continuation);
                this.this$0 = sharedSessionRepositoryImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(SessionData sessionData, Continuation continuation) {
                return ((AnonymousClass1) create(sessionData, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    return SessionData.copy$default((SessionData) this.L$0, null, this.this$0.timeProvider.currentTime(), null, 5, null);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    public void appForeground() {
        this.isInForeground = true;
        if (this.localSessionData == null) {
            Log.d("FirebaseSessions", "App foregrounded, but local SessionData not initialized");
            return;
        }
        SessionData localSessionData$com_google_firebase_firebase_sessions = getLocalSessionData$com_google_firebase_firebase_sessions();
        Log.d("FirebaseSessions", "App foregrounded on " + this.processDataManager.getMyProcessName());
        if (isSessionExpired(localSessionData$com_google_firebase_firebase_sessions) || isMyProcessStale(localSessionData$com_google_firebase_firebase_sessions)) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.backgroundDispatcher), null, null, new C19101(localSessionData$com_google_firebase_firebase_sessions, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1 */
    static final class C19101 extends SuspendLambda implements Function2 {
        final /* synthetic */ SessionData $sessionData;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19101(SessionData sessionData, Continuation continuation) {
            super(2, continuation);
            this.$sessionData = sessionData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SharedSessionRepositoryImpl.this.new C19101(this.$sessionData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C19101) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        
            if (r10.updateData(r0, r9) == r1) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0097, code lost:
        
            if (r10.notifySubscribers(r0, r3, r9) == r1) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0099, code lost:
        
            return r1;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                Log.d("FirebaseSessions", "App foregrounded, failed to update data. Message: " + e.getMessage());
                if (SharedSessionRepositoryImpl.this.isSessionExpired(this.$sessionData)) {
                    SessionDetails sessionDetailsGenerateNewSession = SharedSessionRepositoryImpl.this.sessionGenerator.generateNewSession(this.$sessionData.getSessionDetails());
                    SharedSessionRepositoryImpl.this.setLocalSessionData$com_google_firebase_firebase_sessions(SessionData.copy$default(this.$sessionData, sessionDetailsGenerateNewSession, null, null, 4, null));
                    SharedSessionRepositoryImpl.this.sessionFirelogPublisher.mayLogSession(sessionDetailsGenerateNewSession);
                    SharedSessionRepositoryImpl sharedSessionRepositoryImpl = SharedSessionRepositoryImpl.this;
                    String sessionId = sessionDetailsGenerateNewSession.getSessionId();
                    NotificationType notificationType = NotificationType.FALLBACK;
                    this.label = 2;
                }
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DataStore dataStore = SharedSessionRepositoryImpl.this.sessionDataStore;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(SharedSessionRepositoryImpl.this, null);
                this.label = 1;
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SharedSessionRepositoryImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, Continuation continuation) {
                super(2, continuation);
                this.this$0 = sharedSessionRepositoryImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(SessionData sessionData, Continuation continuation) {
                return ((AnonymousClass1) create(sessionData, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Map mapUpdateProcessDataMap;
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    SessionData sessionData = (SessionData) this.L$0;
                    boolean zIsSessionExpired = this.this$0.isSessionExpired(sessionData);
                    boolean zIsColdStart = this.this$0.isColdStart(sessionData);
                    boolean zIsMyProcessStale = this.this$0.isMyProcessStale(sessionData);
                    if (zIsColdStart) {
                        mapUpdateProcessDataMap = this.this$0.processDataManager.generateProcessDataMap();
                    } else {
                        mapUpdateProcessDataMap = zIsMyProcessStale ? this.this$0.processDataManager.updateProcessDataMap(sessionData.getProcessDataMap()) : sessionData.getProcessDataMap();
                    }
                    SessionDetails sessionDetails = zIsColdStart ? null : sessionData.getSessionDetails();
                    if (!zIsSessionExpired && !zIsColdStart) {
                        return zIsMyProcessStale ? SessionData.copy$default(sessionData, null, null, this.this$0.processDataManager.updateProcessDataMap(mapUpdateProcessDataMap), 3, null) : sessionData;
                    }
                    SessionDetails sessionDetailsGenerateNewSession = this.this$0.sessionGenerator.generateNewSession(sessionDetails);
                    this.this$0.sessionFirelogPublisher.mayLogSession(sessionDetailsGenerateNewSession);
                    this.this$0.processDataManager.onSessionGenerated();
                    return sessionData.copy(sessionDetailsGenerateNewSession, null, mapUpdateProcessDataMap);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object notifySubscribers(String str, NotificationType notificationType, Continuation continuation) {
        C19111 c19111;
        String str2;
        if (continuation instanceof C19111) {
            c19111 = (C19111) continuation;
            int i = c19111.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c19111.label = i - Integer.MIN_VALUE;
            } else {
                c19111 = new C19111(continuation);
            }
        }
        Object registeredSubscribers$com_google_firebase_firebase_sessions = c19111.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c19111.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
            this.previousNotificationType = notificationType;
            if (Intrinsics.areEqual(this.previousSessionId, str)) {
                return Unit.INSTANCE;
            }
            this.previousSessionId = str;
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
            c19111.L$0 = str;
            c19111.L$1 = notificationType;
            c19111.label = 1;
            registeredSubscribers$com_google_firebase_firebase_sessions = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(c19111);
            if (registeredSubscribers$com_google_firebase_firebase_sessions == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            notificationType = (NotificationType) c19111.L$1;
            str = (String) c19111.L$0;
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
        }
        for (SessionSubscriber sessionSubscriber : ((Map) registeredSubscribers$com_google_firebase_firebase_sessions).values()) {
            sessionSubscriber.onSessionChanged(new SessionSubscriber.SessionDetails(str));
            int i3 = WhenMappings.$EnumSwitchMapping$0[notificationType.ordinal()];
            if (i3 == 1) {
                str2 = "Notified " + sessionSubscriber.getSessionSubscriberName() + " of new session " + str;
            } else {
                if (i3 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                str2 = "Notified " + sessionSubscriber.getSessionSubscriberName() + " of new fallback session " + str;
            }
            Log.d("FirebaseSessions", str2);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSessionExpired(SessionData sessionData) {
        Time backgroundTime = sessionData.getBackgroundTime();
        if (backgroundTime != null) {
            boolean z = Duration.m3628compareToLRDsOJo(this.timeProvider.currentTime().m3567minus5sfh64U(backgroundTime), this.sessionsSettings.m3570getSessionRestartTimeoutUwyO8pc()) > 0;
            if (z) {
                Log.d("FirebaseSessions", "Session " + sessionData.getSessionDetails().getSessionId() + " is expired");
            }
            return z;
        }
        Log.d("FirebaseSessions", "Session " + sessionData.getSessionDetails().getSessionId() + " has not backgrounded yet");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isColdStart(SessionData sessionData) {
        Map processDataMap = sessionData.getProcessDataMap();
        if (processDataMap != null) {
            boolean zIsColdStart = this.processDataManager.isColdStart(processDataMap);
            if (zIsColdStart) {
                Log.d("FirebaseSessions", "Cold app start detected");
            }
            return zIsColdStart;
        }
        Log.d("FirebaseSessions", "No process data map");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isMyProcessStale(SessionData sessionData) {
        Map processDataMap = sessionData.getProcessDataMap();
        if (processDataMap != null) {
            boolean zIsMyProcessStale = this.processDataManager.isMyProcessStale(processDataMap);
            if (zIsMyProcessStale) {
                Log.d("FirebaseSessions", "Process " + this.processDataManager.getMyProcessName() + " is stale");
            }
            return zIsMyProcessStale;
        }
        Log.d("FirebaseSessions", "No process data for " + this.processDataManager.getMyProcessName());
        return true;
    }
}
