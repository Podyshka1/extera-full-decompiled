package com.google.firebase.sessions;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class SessionGenerator {
    private final TimeProvider timeProvider;
    private final UuidGenerator uuidGenerator;

    public SessionGenerator(TimeProvider timeProvider, UuidGenerator uuidGenerator) {
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(uuidGenerator, "uuidGenerator");
        this.timeProvider = timeProvider;
        this.uuidGenerator = uuidGenerator;
    }

    public final SessionDetails generateNewSession(SessionDetails sessionDetails) {
        String firstSessionId;
        String strGenerateSessionId = generateSessionId();
        if (sessionDetails == null || (firstSessionId = sessionDetails.getFirstSessionId()) == null) {
            firstSessionId = strGenerateSessionId;
        }
        return new SessionDetails(strGenerateSessionId, firstSessionId, sessionDetails != null ? sessionDetails.getSessionIndex() + 1 : 0, this.timeProvider.currentTime().getUs());
    }

    private final String generateSessionId() {
        String string = this.uuidGenerator.next().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String lowerCase = StringsKt.replace$default(string, "-", _UrlKt.FRAGMENT_ENCODE_SET, false, 4, (Object) null).toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }
}
