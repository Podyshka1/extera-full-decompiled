package com.google.firebase.sessions;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseAppLifecycleListener;
import com.google.firebase.annotations.concurrent.Background;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000 \f2\u00020\u0001:\u0001\fB+\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessions;", _UrlKt.FRAGMENT_ENCODE_SET, "firebaseApp", "Lcom/google/firebase/FirebaseApp;", "settings", "Lcom/google/firebase/sessions/settings/SessionsSettings;", "backgroundDispatcher", "Lkotlin/coroutines/CoroutineContext;", "sessionsActivityLifecycleCallbacks", "Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;", "<init>", "(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;)V", "Companion", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class FirebaseSessions {
    private final FirebaseApp firebaseApp;
    private final SessionsSettings settings;

    public FirebaseSessions(FirebaseApp firebaseApp, SessionsSettings sessionsSettings, @Background CoroutineContext coroutineContext, SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks) {
        this.firebaseApp = firebaseApp;
        this.settings = sessionsSettings;
        Log.d("FirebaseSessions", "Initializing Firebase Sessions 3.0.5.");
        Context applicationContext = firebaseApp.getApplicationContext().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(sessionsActivityLifecycleCallbacks);
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineContext), null, null, new C18441(sessionsActivityLifecycleCallbacks, null), 3, null);
        } else {
            Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessions$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m765c = "com.google.firebase.sessions.FirebaseSessions$1", m766f = "FirebaseSessions.kt", m767i = {}, m768l = {51, 55}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    @SourceDebugExtension({"SMAP\nFirebaseSessions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseSessions.kt\ncom/google/firebase/sessions/FirebaseSessions$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n2632#2,3:85\n*S KotlinDebug\n*F\n+ 1 FirebaseSessions.kt\ncom/google/firebase/sessions/FirebaseSessions$1\n*L\n52#1:85,3\n*E\n"})
    public static final class C18441 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ SessionsActivityLifecycleCallbacks $sessionsActivityLifecycleCallbacks;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18441(SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks, Continuation<? super C18441> continuation) {
            super(2, continuation);
            this.$sessionsActivityLifecycleCallbacks = sessionsActivityLifecycleCallbacks;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FirebaseSessions.this.new C18441(this.$sessionsActivityLifecycleCallbacks, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C18441) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
        
            if (r6.updateSettings(r5) == r0) goto L25;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
                this.label = 1;
                obj = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                if (FirebaseSessions.this.settings.getSessionsEnabled()) {
                    FirebaseApp firebaseApp = FirebaseSessions.this.firebaseApp;
                    final SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks = this.$sessionsActivityLifecycleCallbacks;
                    firebaseApp.addLifecycleEventListener(new FirebaseAppLifecycleListener() { // from class: com.google.firebase.sessions.FirebaseSessions$1$$ExternalSyntheticLambda0
                    });
                    Unit unit = Unit.INSTANCE;
                } else {
                    Boxing.boxInt(Log.d("FirebaseSessions", "Sessions SDK disabled. Not listening to lifecycle events."));
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            Collection collectionValues = ((Map) obj).values();
            if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
                Iterator it = collectionValues.iterator();
                while (it.hasNext()) {
                    if (((SessionSubscriber) it.next()).isDataCollectionEnabled()) {
                        SessionsSettings sessionsSettings = FirebaseSessions.this.settings;
                        this.label = 2;
                    }
                }
            }
            Boxing.boxInt(Log.d("FirebaseSessions", "No Sessions subscribers. Not listening to lifecycle events."));
            return Unit.INSTANCE;
        }
    }
}
