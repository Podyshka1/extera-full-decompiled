package com.google.firebase.sessions;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseAppLifecycleListener;
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
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseSessions {
    public static final Companion Companion = new Companion(null);
    private final FirebaseApp firebaseApp;
    private final SessionsSettings settings;

    public FirebaseSessions(FirebaseApp firebaseApp, SessionsSettings settings, CoroutineContext backgroundDispatcher, SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks) {
        Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.checkNotNullParameter(sessionsActivityLifecycleCallbacks, "sessionsActivityLifecycleCallbacks");
        this.firebaseApp = firebaseApp;
        this.settings = settings;
        Log.d("FirebaseSessions", "Initializing Firebase Sessions 3.0.3.");
        Context applicationContext = firebaseApp.getApplicationContext().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(sessionsActivityLifecycleCallbacks);
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(backgroundDispatcher), null, null, new C18961(sessionsActivityLifecycleCallbacks, null), 3, null);
            return;
        }
        Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessions$1 */
    static final class C18961 extends SuspendLambda implements Function2 {
        final /* synthetic */ SessionsActivityLifecycleCallbacks $sessionsActivityLifecycleCallbacks;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18961(SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks, Continuation continuation) {
            super(2, continuation);
            this.$sessionsActivityLifecycleCallbacks = sessionsActivityLifecycleCallbacks;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return FirebaseSessions.this.new C18961(this.$sessionsActivityLifecycleCallbacks, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C18961) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
        
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
