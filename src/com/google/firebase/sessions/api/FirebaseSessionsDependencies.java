package com.google.firebase.sessions.api;

import android.util.Log;
import androidx.view.LiveData$$ExternalSyntheticBUOutline0;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u0010H\u0080@¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\u0014\u0010\u0015RT\u0010\u0019\u001aB\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\u00040\u0004\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\r0\r \u0018* \u0012\f\u0012\n \u0018*\u0004\u0018\u00010\u00040\u0004\u0012\f\u0012\n \u0018*\u0004\u0018\u00010\r0\r\u0018\u00010\u00100\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Lcom/google/firebase/sessions/api/SessionSubscriber$Name;", "subscriberName", _UrlKt.FRAGMENT_ENCODE_SET, "addDependency", "(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)V", "Lcom/google/firebase/sessions/api/SessionSubscriber;", "subscriber", "register", "(Lcom/google/firebase/sessions/api/SessionSubscriber;)V", "Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;", "getDependency", "(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;", _UrlKt.FRAGMENT_ENCODE_SET, "getRegisteredSubscribers$com_google_firebase_firebase_sessions", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRegisteredSubscribers", "getSubscriber$com_google_firebase_firebase_sessions", "(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)Lcom/google/firebase/sessions/api/SessionSubscriber;", "getSubscriber", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin.jvm.PlatformType", "dependencies", "Ljava/util/Map;", "Dependency", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFirebaseSessionsDependencies.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseSessionsDependencies.kt\ncom/google/firebase/sessions/api/FirebaseSessionsDependencies\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,100:1\n462#2:101\n412#2:102\n1246#3,2:103\n1249#3:116\n116#4,11:105\n*S KotlinDebug\n*F\n+ 1 FirebaseSessionsDependencies.kt\ncom/google/firebase/sessions/api/FirebaseSessionsDependencies\n*L\n75#1:101\n75#1:102\n75#1:103,2\n75#1:116\n76#1:105,11\n*E\n"})
public final class FirebaseSessionsDependencies {
    public static final FirebaseSessionsDependencies INSTANCE = new FirebaseSessionsDependencies();
    private static final Map<SessionSubscriber.Name, Dependency> dependencies = Collections.synchronizedMap(new LinkedHashMap());

    private FirebaseSessionsDependencies() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmStatic
    public static final void addDependency(SessionSubscriber.Name subscriberName) {
        Map<SessionSubscriber.Name, Dependency> map = dependencies;
        if (map.containsKey(subscriberName)) {
            Log.d("FirebaseSessions", "Dependency " + subscriberName + " already added.");
            return;
        }
        map.put(subscriberName, new Dependency(MutexKt.Mutex(true), null, 2, 0 == true ? 1 : 0));
        Log.d("FirebaseSessions", "Dependency to " + subscriberName + " added.");
    }

    @JvmStatic
    public static final void register(SessionSubscriber subscriber) {
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

    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0098 -> B:27:0x0099). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object getRegisteredSubscribers$com_google_firebase_firebase_sessions(Continuation<? super Map<SessionSubscriber.Name, ? extends SessionSubscriber>> continuation) {
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
            Map<SessionSubscriber.Name, Dependency> map2 = dependencies;
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map2.size()));
            it = map2.entrySet().iterator();
            map = linkedHashMap;
            if (it.hasNext()) {
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Object key = firebaseSessionsDependencies$getRegisteredSubscribers$1.L$5;
            map = (Map) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$4;
            Mutex mutex = (Mutex) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$3;
            SessionSubscriber.Name name = (SessionSubscriber.Name) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$2;
            it = (Iterator) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$1;
            Map map3 = (Map) firebaseSessionsDependencies$getRegisteredSubscribers$1.L$0;
            ResultKt.throwOnFailure(obj);
            try {
                SessionSubscriber subscriber$com_google_firebase_firebase_sessions = INSTANCE.getSubscriber$com_google_firebase_firebase_sessions(name);
                mutex.unlock(null);
                map.put(key, subscriber$com_google_firebase_firebase_sessions);
                map = map3;
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
                    map3 = map;
                    SessionSubscriber subscriber$com_google_firebase_firebase_sessions2 = INSTANCE.getSubscriber$com_google_firebase_firebase_sessions(name);
                    mutex.unlock(null);
                    map.put(key, subscriber$com_google_firebase_firebase_sessions2);
                    map = map3;
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
        SessionSubscriber subscriber = getDependency(subscriberName).getSubscriber();
        if (subscriber != null) {
            return subscriber;
        }
        LiveData$$ExternalSyntheticBUOutline0.m151m("Subscriber ", subscriberName, " has not been registered.");
        return null;
    }

    private final Dependency getDependency(SessionSubscriber.Name subscriberName) {
        Dependency dependency = dependencies.get(subscriberName);
        if (dependency != null) {
            return dependency;
        }
        LiveData$$ExternalSyntheticBUOutline0.m151m("Cannot get dependency ", subscriberName, ". Dependencies should be added at class load time.");
        return null;
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0082\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/sync/Mutex;", "mutex", "Lcom/google/firebase/sessions/api/SessionSubscriber;", "subscriber", "<init>", "(Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/sync/Mutex;", "getMutex", "()Lkotlinx/coroutines/sync/Mutex;", "Lcom/google/firebase/sessions/api/SessionSubscriber;", "getSubscriber", "()Lcom/google/firebase/sessions/api/SessionSubscriber;", "setSubscriber", "(Lcom/google/firebase/sessions/api/SessionSubscriber;)V", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Dependency {
        private final Mutex mutex;
        private SessionSubscriber subscriber;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Dependency)) {
                return false;
            }
            Dependency dependency = (Dependency) other;
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
