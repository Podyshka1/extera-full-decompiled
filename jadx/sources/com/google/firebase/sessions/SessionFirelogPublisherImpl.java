package com.google.firebase.sessions;

import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.InstallationId;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
public final class SessionFirelogPublisherImpl implements SessionFirelogPublisher {
    public static final Companion Companion = new Companion(null);
    private static final double randomValueForSampling = Math.random();
    private final CoroutineContext backgroundDispatcher;
    private final EventGDTLoggerInterface eventGDTLogger;
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final SessionsSettings sessionSettings;

    /* JADX INFO: renamed from: com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1 */
    static final class C19071 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C19071(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionFirelogPublisherImpl.this.shouldLogSession(this);
        }
    }

    public SessionFirelogPublisherImpl(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallations, SessionsSettings sessionSettings, EventGDTLoggerInterface eventGDTLogger, CoroutineContext backgroundDispatcher) {
        Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
        Intrinsics.checkNotNullParameter(firebaseInstallations, "firebaseInstallations");
        Intrinsics.checkNotNullParameter(sessionSettings, "sessionSettings");
        Intrinsics.checkNotNullParameter(eventGDTLogger, "eventGDTLogger");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        this.firebaseApp = firebaseApp;
        this.firebaseInstallations = firebaseInstallations;
        this.sessionSettings = sessionSettings;
        this.eventGDTLogger = eventGDTLogger;
        this.backgroundDispatcher = backgroundDispatcher;
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SessionFirelogPublisherImpl$mayLogSession$1 */
    static final class C19061 extends SuspendLambda implements Function2 {
        final /* synthetic */ SessionDetails $sessionDetails;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19061(SessionDetails sessionDetails, Continuation continuation) {
            super(2, continuation);
            this.$sessionDetails = sessionDetails;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SessionFirelogPublisherImpl.this.new C19061(this.$sessionDetails, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C19061) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            InstallationId installationId;
            SessionFirelogPublisherImpl sessionFirelogPublisherImpl;
            Object registeredSubscribers$com_google_firebase_firebase_sessions;
            FirebaseApp firebaseApp;
            SessionDetails sessionDetails;
            SessionEvents sessionEvents;
            SessionsSettings sessionsSettings;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SessionFirelogPublisherImpl sessionFirelogPublisherImpl2 = SessionFirelogPublisherImpl.this;
                this.label = 1;
                obj = sessionFirelogPublisherImpl2.shouldLogSession(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    SessionsSettings sessionsSettings2 = (SessionsSettings) this.L$5;
                    SessionDetails sessionDetails2 = (SessionDetails) this.L$4;
                    FirebaseApp firebaseApp2 = (FirebaseApp) this.L$3;
                    SessionEvents sessionEvents2 = (SessionEvents) this.L$2;
                    sessionFirelogPublisherImpl = (SessionFirelogPublisherImpl) this.L$1;
                    installationId = (InstallationId) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    sessionsSettings = sessionsSettings2;
                    sessionEvents = sessionEvents2;
                    sessionDetails = sessionDetails2;
                    firebaseApp = firebaseApp2;
                    SessionFirelogPublisherImpl sessionFirelogPublisherImpl3 = sessionFirelogPublisherImpl;
                    Map map = (Map) obj;
                    InstallationId installationId2 = installationId;
                    sessionFirelogPublisherImpl3.attemptLoggingSessionEvent(sessionEvents.buildSession(firebaseApp, sessionDetails, sessionsSettings, map, installationId2.getFid(), installationId2.getAuthToken()));
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
                installationId = (InstallationId) obj;
                sessionFirelogPublisherImpl = SessionFirelogPublisherImpl.this;
                SessionEvents sessionEvents3 = SessionEvents.INSTANCE;
                FirebaseApp firebaseApp3 = sessionFirelogPublisherImpl.firebaseApp;
                SessionDetails sessionDetails3 = this.$sessionDetails;
                SessionsSettings sessionsSettings3 = SessionFirelogPublisherImpl.this.sessionSettings;
                FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
                this.L$0 = installationId;
                this.L$1 = sessionFirelogPublisherImpl;
                this.L$2 = sessionEvents3;
                this.L$3 = firebaseApp3;
                this.L$4 = sessionDetails3;
                this.L$5 = sessionsSettings3;
                this.label = 3;
                registeredSubscribers$com_google_firebase_firebase_sessions = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(this);
                if (registeredSubscribers$com_google_firebase_firebase_sessions != coroutine_suspended) {
                    firebaseApp = firebaseApp3;
                    obj = registeredSubscribers$com_google_firebase_firebase_sessions;
                    sessionDetails = sessionDetails3;
                    sessionEvents = sessionEvents3;
                    sessionsSettings = sessionsSettings3;
                    SessionFirelogPublisherImpl sessionFirelogPublisherImpl32 = sessionFirelogPublisherImpl;
                    Map map2 = (Map) obj;
                    InstallationId installationId22 = installationId;
                    sessionFirelogPublisherImpl32.attemptLoggingSessionEvent(sessionEvents.buildSession(firebaseApp, sessionDetails, sessionsSettings, map2, installationId22.getFid(), installationId22.getAuthToken()));
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            }
            ResultKt.throwOnFailure(obj);
            if (((Boolean) obj).booleanValue()) {
                InstallationId.Companion companion = InstallationId.Companion;
                FirebaseInstallationsApi firebaseInstallationsApi = SessionFirelogPublisherImpl.this.firebaseInstallations;
                this.label = 2;
                obj = companion.create(firebaseInstallationsApi, this);
                if (obj != coroutine_suspended) {
                    installationId = (InstallationId) obj;
                    sessionFirelogPublisherImpl = SessionFirelogPublisherImpl.this;
                    SessionEvents sessionEvents32 = SessionEvents.INSTANCE;
                    FirebaseApp firebaseApp32 = sessionFirelogPublisherImpl.firebaseApp;
                    SessionDetails sessionDetails32 = this.$sessionDetails;
                    SessionsSettings sessionsSettings32 = SessionFirelogPublisherImpl.this.sessionSettings;
                    FirebaseSessionsDependencies firebaseSessionsDependencies2 = FirebaseSessionsDependencies.INSTANCE;
                    this.L$0 = installationId;
                    this.L$1 = sessionFirelogPublisherImpl;
                    this.L$2 = sessionEvents32;
                    this.L$3 = firebaseApp32;
                    this.L$4 = sessionDetails32;
                    this.L$5 = sessionsSettings32;
                    this.label = 3;
                    registeredSubscribers$com_google_firebase_firebase_sessions = firebaseSessionsDependencies2.getRegisteredSubscribers$com_google_firebase_firebase_sessions(this);
                    if (registeredSubscribers$com_google_firebase_firebase_sessions != coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.google.firebase.sessions.SessionFirelogPublisher
    public void mayLogSession(SessionDetails sessionDetails) {
        Intrinsics.checkNotNullParameter(sessionDetails, "sessionDetails");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.backgroundDispatcher), null, null, new C19061(sessionDetails, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void attemptLoggingSessionEvent(SessionEvent sessionEvent) {
        try {
            this.eventGDTLogger.log(sessionEvent);
            Log.d("FirebaseSessions", "Successfully logged Session Start event.");
        } catch (RuntimeException e) {
            Log.e("FirebaseSessions", "Error logging Session Start event to DataTransport: ", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object shouldLogSession(Continuation continuation) {
        C19071 c19071;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl2;
        if (continuation instanceof C19071) {
            c19071 = (C19071) continuation;
            int i = c19071.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c19071.label = i - Integer.MIN_VALUE;
            } else {
                c19071 = new C19071(continuation);
            }
        }
        Object registeredSubscribers$com_google_firebase_firebase_sessions = c19071.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c19071.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
            c19071.L$0 = this;
            c19071.label = 1;
            registeredSubscribers$com_google_firebase_firebase_sessions = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(c19071);
            if (registeredSubscribers$com_google_firebase_firebase_sessions != coroutine_suspended) {
                sessionFirelogPublisherImpl = this;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sessionFirelogPublisherImpl2 = (SessionFirelogPublisherImpl) c19071.L$0;
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
            if (sessionFirelogPublisherImpl2.sessionSettings.getSessionsEnabled()) {
                Log.d("FirebaseSessions", "Sessions SDK disabled through settings API. Events will not be sent.");
                return Boxing.boxBoolean(false);
            }
            if (!sessionFirelogPublisherImpl2.shouldCollectEvents()) {
                Log.d("FirebaseSessions", "Sessions SDK has dropped this session due to sampling.");
                return Boxing.boxBoolean(false);
            }
            return Boxing.boxBoolean(true);
        }
        sessionFirelogPublisherImpl = (SessionFirelogPublisherImpl) c19071.L$0;
        ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
        Collection collectionValues = ((Map) registeredSubscribers$com_google_firebase_firebase_sessions).values();
        if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                if (((SessionSubscriber) it.next()).isDataCollectionEnabled()) {
                    SessionsSettings sessionsSettings = sessionFirelogPublisherImpl.sessionSettings;
                    c19071.L$0 = sessionFirelogPublisherImpl;
                    c19071.label = 2;
                    if (sessionsSettings.updateSettings(c19071) != coroutine_suspended) {
                        sessionFirelogPublisherImpl2 = sessionFirelogPublisherImpl;
                        if (sessionFirelogPublisherImpl2.sessionSettings.getSessionsEnabled()) {
                        }
                    }
                    return coroutine_suspended;
                }
            }
        }
        Log.d("FirebaseSessions", "Sessions SDK disabled through data collection. Events will not be sent.");
        return Boxing.boxBoolean(false);
    }

    private final boolean shouldCollectEvents() {
        return randomValueForSampling <= this.sessionSettings.getSamplingRate();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
