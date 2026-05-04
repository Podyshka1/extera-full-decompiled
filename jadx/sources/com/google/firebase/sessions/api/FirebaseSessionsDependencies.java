package com.google.firebase.sessions.api;

import android.util.Log;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseSessionsDependencies {
    public static final FirebaseSessionsDependencies INSTANCE = new FirebaseSessionsDependencies();
    private static final Map dependencies = DesugarCollections.synchronizedMap(new LinkedHashMap());

    private FirebaseSessionsDependencies() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void addDependency(SessionSubscriber.Name subscriberName) {
        Intrinsics.checkNotNullParameter(subscriberName, "subscriberName");
        Map dependencies2 = dependencies;
        if (dependencies2.containsKey(subscriberName)) {
            Log.d("FirebaseSessions", "Dependency " + subscriberName + " already added.");
            return;
        }
        Intrinsics.checkNotNullExpressionValue(dependencies2, "dependencies");
        dependencies2.put(subscriberName, new Dependency(MutexKt.Mutex(true), null, 2, 0 == true ? 1 : 0));
        Log.d("FirebaseSessions", "Dependency to " + subscriberName + " added.");
    }

    public static final void register(SessionSubscriber subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        SessionSubscriber.Name sessionSubscriberName = subscriber.getSessionSubscriberName();
        Dependency dependency = INSTANCE.getDependency(sessionSubscriberName);
        if (dependency.getSubscriber() != null) {
            Log.d("FirebaseSessions", "Subscriber " + sessionSubscriberName + " already registered.");
            return;
        }
        dependency.setSubscriber(subscriber);
        Log.d("FirebaseSessions", "Subscriber " + sessionSubscriberName + " registered.");
        Mutex.DefaultImpls.unlock$default(dependency.getMutex(), null, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009f -> B:27:0x00a0). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object getRegisteredSubscribers$com_google_firebase_firebase_sessions(Continuation continuation) {
        FirebaseSessionsDependencies$getRegisteredSubscribers$1 firebaseSessionsDependencies$getRegisteredSubscribers$1;
        Iterator it;
        Map map;
        if (continuation instanceof FirebaseSessionsDependencies$getRegisteredSubscribers$1) {
            firebaseSessionsDependencies$getRegisteredSubscribers$1 = (FirebaseSessionsDependencies$getRegisteredSubscribers$1) continuation;
            int i = firebaseSessionsDependencies$getRegisteredSubscribers$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                firebaseSessionsDependencies$getRegisteredSubscribers$1.label = i - Integer.MIN_VALUE;
            } else {
                firebaseSessionsDependencies$getRegisteredSubscribers$1 = new FirebaseSessionsDependencies$getRegisteredSubscribers$1(this, continuation);
            }
        }
        Object obj = firebaseSessionsDependencies$getRegisteredSubscribers$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = firebaseSessionsDependencies$getRegisteredSubscribers$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Map dependencies2 = dependencies;
            Intrinsics.checkNotNullExpressionValue(dependencies2, "dependencies");
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(dependencies2.size()));
            it = dependencies2.entrySet().iterator();
            map = linkedHashMap;
            if (it.hasNext()) {
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object key = firebaseSessionsDependencies$getRegisteredSubscribers$1.L$5;
            map = (Map) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$4;
            Mutex mutex = (Mutex) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$3;
            SessionSubscriber.Name name = (SessionSubscriber.Name) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$2;
            it = (Iterator) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$1;
            Map map2 = (Map) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$0;
            ResultKt.throwOnFailure(obj);
            try {
                SessionSubscriber subscriber$com_google_firebase_firebase_sessions = INSTANCE.getSubscriber$com_google_firebase_firebase_sessions(name);
                mutex.unlock(null);
                map.put(key, subscriber$com_google_firebase_firebase_sessions);
                map = map2;
                if (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    key = entry.getKey();
                    name = (SessionSubscriber.Name) entry.getKey();
                    mutex = ((Dependency) entry.getValue()).getMutex();
                    firebaseSessionsDependencies$getRegisteredSubscribers$1.L$0 = map;
                    firebaseSessionsDependencies$getRegisteredSubscribers$1.L$1 = it;
                    firebaseSessionsDependencies$getRegisteredSubscribers$1.L$2 = name;
                    firebaseSessionsDependencies$getRegisteredSubscribers$1.L$3 = mutex;
                    firebaseSessionsDependencies$getRegisteredSubscribers$1.L$4 = map;
                    firebaseSessionsDependencies$getRegisteredSubscribers$1.L$5 = key;
                    firebaseSessionsDependencies$getRegisteredSubscribers$1.label = 1;
                    if (mutex.lock(null, firebaseSessionsDependencies$getRegisteredSubscribers$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    map2 = map;
                    SessionSubscriber subscriber$com_google_firebase_firebase_sessions2 = INSTANCE.getSubscriber$com_google_firebase_firebase_sessions(name);
                    mutex.unlock(null);
                    map.put(key, subscriber$com_google_firebase_firebase_sessions2);
                    map = map2;
                    if (it.hasNext()) {
                        return map;
                    }
                }
            } catch (Throwable th) {
                mutex.unlock(null);
                throw th;
            }
        }
    }

    public final SessionSubscriber getSubscriber$com_google_firebase_firebase_sessions(SessionSubscriber.Name subscriberName) {
        Intrinsics.checkNotNullParameter(subscriberName, "subscriberName");
        SessionSubscriber subscriber = getDependency(subscriberName).getSubscriber();
        if (subscriber != null) {
            return subscriber;
        }
        throw new IllegalStateException("Subscriber " + subscriberName + " has not been registered.");
    }

    private final Dependency getDependency(SessionSubscriber.Name name) {
        Map dependencies2 = dependencies;
        Intrinsics.checkNotNullExpressionValue(dependencies2, "dependencies");
        Object obj = dependencies2.get(name);
        if (obj != null) {
            Intrinsics.checkNotNullExpressionValue(obj, "getOrElse(...)");
            return (Dependency) obj;
        }
        throw new IllegalStateException("Cannot get dependency " + name + ". Dependencies should be added at class load time.");
    }

    private static final class Dependency {
        private final Mutex mutex;
        private SessionSubscriber subscriber;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Dependency)) {
                return false;
            }
            Dependency dependency = (Dependency) obj;
            return Intrinsics.areEqual(this.mutex, dependency.mutex) && Intrinsics.areEqual(this.subscriber, dependency.subscriber);
        }

        public int hashCode() {
            int iHashCode = this.mutex.hashCode() * 31;
            SessionSubscriber sessionSubscriber = this.subscriber;
            return iHashCode + (sessionSubscriber == null ? 0 : sessionSubscriber.hashCode());
        }

        public String toString() {
            return "Dependency(mutex=" + this.mutex + ", subscriber=" + this.subscriber + ')';
        }

        public Dependency(Mutex mutex, SessionSubscriber sessionSubscriber) {
            Intrinsics.checkNotNullParameter(mutex, "mutex");
            this.mutex = mutex;
            this.subscriber = sessionSubscriber;
        }

        public /* synthetic */ Dependency(Mutex mutex, SessionSubscriber sessionSubscriber, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(mutex, (i & 2) != 0 ? null : sessionSubscriber);
        }

        public final Mutex getMutex() {
            return this.mutex;
        }

        public final SessionSubscriber getSubscriber() {
            return this.subscriber;
        }

        public final void setSubscriber(SessionSubscriber sessionSubscriber) {
            this.subscriber = sessionSubscriber;
        }
    }
}
