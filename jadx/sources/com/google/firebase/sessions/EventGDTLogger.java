package com.google.firebase.sessions;

import android.util.Log;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.TransportFactory;
import com.google.firebase.inject.Provider;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes.dex */
public final class EventGDTLogger implements EventGDTLoggerInterface {
    public static final Companion Companion = new Companion(null);
    private final Provider transportFactoryProvider;

    public EventGDTLogger(Provider transportFactoryProvider) {
        Intrinsics.checkNotNullParameter(transportFactoryProvider, "transportFactoryProvider");
        this.transportFactoryProvider = transportFactoryProvider;
    }

    @Override // com.google.firebase.sessions.EventGDTLoggerInterface
    public void log(SessionEvent sessionEvent) {
        Intrinsics.checkNotNullParameter(sessionEvent, "sessionEvent");
        ((TransportFactory) this.transportFactoryProvider.get()).getTransport("FIREBASE_APPQUALITY_SESSION", SessionEvent.class, Encoding.m295of("json"), new Transformer() { // from class: com.google.firebase.sessions.EventGDTLogger$$ExternalSyntheticLambda0
            @Override // com.google.android.datatransport.Transformer
            public final Object apply(Object obj) {
                return this.f$0.encode((SessionEvent) obj);
            }
        }).send(Event.ofData(sessionEvent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] encode(SessionEvent sessionEvent) {
        String strEncode = SessionEvents.INSTANCE.getSESSION_EVENT_ENCODER$com_google_firebase_firebase_sessions().encode(sessionEvent);
        Intrinsics.checkNotNullExpressionValue(strEncode, "encode(...)");
        Log.d("FirebaseSessions", "Session Event Type: " + sessionEvent.getEventType().name());
        byte[] bytes = strEncode.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
