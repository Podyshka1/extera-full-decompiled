package com.google.firebase.sessions;

import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.InstallationId;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B3\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0001\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u0016H\u0082@¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0016H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;", "Lcom/google/firebase/sessions/SessionFirelogPublisher;", "firebaseApp", "Lcom/google/firebase/FirebaseApp;", "firebaseInstallations", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "sessionSettings", "Lcom/google/firebase/sessions/settings/SessionsSettings;", "eventGDTLogger", "Lcom/google/firebase/sessions/EventGDTLoggerInterface;", "backgroundDispatcher", "Lkotlin/coroutines/CoroutineContext;", "<init>", "(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/settings/SessionsSettings;Lcom/google/firebase/sessions/EventGDTLoggerInterface;Lkotlin/coroutines/CoroutineContext;)V", "mayLogSession", _UrlKt.FRAGMENT_ENCODE_SET, "sessionDetails", "Lcom/google/firebase/sessions/SessionDetails;", "attemptLoggingSessionEvent", "sessionEvent", "Lcom/google/firebase/sessions/SessionEvent;", "shouldLogSession", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldCollectEvents", "Companion", "com.google.firebase-firebase-sessions"}, m862k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSessionFirelogPublisher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionFirelogPublisher.kt\ncom/google/firebase/sessions/SessionFirelogPublisherImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n2632#2,3:130\n*S KotlinDebug\n*F\n+ 1 SessionFirelogPublisher.kt\ncom/google/firebase/sessions/SessionFirelogPublisherImpl\n*L\n99#1:130,3\n*E\n"})
public final class SessionFirelogPublisherImpl implements SessionFirelogPublisher {
    private static final double randomValueForSampling = Math.random();
    private final CoroutineContext backgroundDispatcher;
    private final EventGDTLoggerInterface eventGDTLogger;
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final SessionsSettings sessionSettings;

    /* JADX INFO: renamed from: com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1 */
    @Metadata(m862k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m872c = "com.google.firebase.sessions.SessionFirelogPublisherImpl", m873f = "SessionFirelogPublisher.kt", m874i = {}, m875l = {98, 104}, m876m = "shouldLogSession", m877n = {}, m878s = {})
    public static final class C19501 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C19501(Continuation<? super C19501> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionFirelogPublisherImpl.this.shouldLogSession(this);
        }
    }

    public SessionFirelogPublisherImpl(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, SessionsSettings sessionsSettings, EventGDTLoggerInterface eventGDTLoggerInterface, @Background CoroutineContext coroutineContext) {
        this.firebaseApp = firebaseApp;
        this.firebaseInstallations = firebaseInstallationsApi;
        this.sessionSettings = sessionsSettings;
        this.eventGDTLogger = eventGDTLoggerInterface;
        this.backgroundDispatcher = coroutineContext;
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SessionFirelogPublisherImpl$mayLogSession$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m872c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$mayLogSession$1", m873f = "SessionFirelogPublisher.kt", m874i = {2}, m875l = {70, 71, 77}, m876m = "invokeSuspend", m877n = {"installationId"}, m878s = {"L$0"})
    public static final class C19491 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ SessionDetails $sessionDetails;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19491(SessionDetails sessionDetails, Continuation<? super C19491> continuation) {
            super(2, continuation);
            this.$sessionDetails = sessionDetails;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SessionFirelogPublisherImpl.this.new C19491(this.$sessionDetails, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C19491) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0094  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            SessionFirelogPublisherImpl sessionFirelogPublisherImpl;
            FirebaseApp firebaseApp;
            Object registeredSubscribers$com_google_firebase_firebase_sessions;
            InstallationId installationId;
            SessionEvents sessionEvents;
            SessionDetails sessionDetails;
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
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
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
                    sessionFirelogPublisherImpl.attemptLoggingSessionEvent(sessionEvents.buildSession(firebaseApp, sessionDetails, sessionsSettings, (Map) obj, installationId.getFid(), installationId.getAuthToken()));
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
                InstallationId installationId2 = (InstallationId) obj;
                sessionFirelogPublisherImpl = SessionFirelogPublisherImpl.this;
                SessionEvents sessionEvents3 = SessionEvents.INSTANCE;
                firebaseApp = sessionFirelogPublisherImpl.firebaseApp;
                SessionDetails sessionDetails3 = this.$sessionDetails;
                SessionsSettings sessionsSettings3 = SessionFirelogPublisherImpl.this.sessionSettings;
                FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
                this.L$0 = installationId2;
                this.L$1 = sessionFirelogPublisherImpl;
                this.L$2 = sessionEvents3;
                this.L$3 = firebaseApp;
                this.L$4 = sessionDetails3;
                this.L$5 = sessionsSettings3;
                this.label = 3;
                registeredSubscribers$com_google_firebase_firebase_sessions = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(this);
                if (registeredSubscribers$com_google_firebase_firebase_sessions != coroutine_suspended) {
                    obj = registeredSubscribers$com_google_firebase_firebase_sessions;
                    installationId = installationId2;
                    sessionEvents = sessionEvents3;
                    sessionDetails = sessionDetails3;
                    sessionsSettings = sessionsSettings3;
                    sessionFirelogPublisherImpl.attemptLoggingSessionEvent(sessionEvents.buildSession(firebaseApp, sessionDetails, sessionsSettings, (Map) obj, installationId.getFid(), installationId.getAuthToken()));
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            }
            ResultKt.throwOnFailure(obj);
            if (((Boolean) obj).booleanValue()) {
                InstallationId.Companion companion = InstallationId.INSTANCE;
                FirebaseInstallationsApi firebaseInstallationsApi = SessionFirelogPublisherImpl.this.firebaseInstallations;
                this.label = 2;
                obj = companion.create(firebaseInstallationsApi, this);
                if (obj != coroutine_suspended) {
                    InstallationId installationId22 = (InstallationId) obj;
                    sessionFirelogPublisherImpl = SessionFirelogPublisherImpl.this;
                    SessionEvents sessionEvents32 = SessionEvents.INSTANCE;
                    firebaseApp = sessionFirelogPublisherImpl.firebaseApp;
                    SessionDetails sessionDetails32 = this.$sessionDetails;
                    SessionsSettings sessionsSettings32 = SessionFirelogPublisherImpl.this.sessionSettings;
                    FirebaseSessionsDependencies firebaseSessionsDependencies2 = FirebaseSessionsDependencies.INSTANCE;
                    this.L$0 = installationId22;
                    this.L$1 = sessionFirelogPublisherImpl;
                    this.L$2 = sessionEvents32;
                    this.L$3 = firebaseApp;
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
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.backgroundDispatcher), null, null, new C19491(sessionDetails, null), 3, null);
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
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007c, code lost:
    
        if (r8.updateSettings(r0) == r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object shouldLogSession(Continuation<? super Boolean> continuation) {
        C19501 c19501;
        if (continuation instanceof C19501) {
            c19501 = (C19501) continuation;
            int i = c19501.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c19501.label = i - Integer.MIN_VALUE;
            } else {
                c19501 = new C19501(continuation);
            }
        }
        Object registeredSubscribers$com_google_firebase_firebase_sessions = c19501.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c19501.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
            c19501.label = 1;
            registeredSubscribers$com_google_firebase_firebase_sessions = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(c19501);
            if (registeredSubscribers$com_google_firebase_firebase_sessions != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
            if (!this.sessionSettings.getSessionsEnabled()) {
                Log.d("FirebaseSessions", "Sessions SDK disabled through settings API. Events will not be sent.");
                return Boxing.boxBoolean(false);
            }
            if (!shouldCollectEvents()) {
                Log.d("FirebaseSessions", "Sessions SDK has dropped this session due to sampling.");
                return Boxing.boxBoolean(false);
            }
            return Boxing.boxBoolean(true);
        }
        ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
        Collection collectionValues = ((Map) registeredSubscribers$com_google_firebase_firebase_sessions).values();
        if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                if (((SessionSubscriber) it.next()).isDataCollectionEnabled()) {
                    SessionsSettings sessionsSettings = this.sessionSettings;
                    c19501.label = 2;
                }
            }
        }
        Log.d("FirebaseSessions", "Sessions SDK disabled through data collection. Events will not be sent.");
        return Boxing.boxBoolean(false);
    }

    private final boolean shouldCollectEvents() {
        return randomValueForSampling <= this.sessionSettings.getSamplingRate();
    }
}
