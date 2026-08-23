package com.google.firebase.sessions.api;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface SessionSubscriber {
    Name getSessionSubscriberName();

    boolean isDataCollectionEnabled();

    void onSessionChanged(SessionDetails sessionDetails);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Name {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Name[] $VALUES;
        public static final Name CRASHLYTICS = new Name("CRASHLYTICS", 0);
        public static final Name PERFORMANCE = new Name("PERFORMANCE", 1);
        public static final Name MATT_SAYS_HI = new Name("MATT_SAYS_HI", 2);

        private static final /* synthetic */ Name[] $values() {
            return new Name[]{CRASHLYTICS, PERFORMANCE, MATT_SAYS_HI};
        }

        private Name(String str, int i) {
        }

        static {
            Name[] nameArr$values = $values();
            $VALUES = nameArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(nameArr$values);
        }

        public static Name valueOf(String str) {
            return (Name) Enum.valueOf(Name.class, str);
        }

        public static Name[] values() {
            return (Name[]) $VALUES.clone();
        }
    }

    public static final class SessionDetails {
        private final String sessionId;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SessionDetails) && Intrinsics.areEqual(this.sessionId, ((SessionDetails) obj).sessionId);
        }

        public int hashCode() {
            return this.sessionId.hashCode();
        }

        public String toString() {
            return "SessionDetails(sessionId=" + this.sessionId + ')';
        }

        public SessionDetails(String sessionId) {
            Intrinsics.checkNotNullParameter(sessionId, "sessionId");
            this.sessionId = sessionId;
        }

        public final String getSessionId() {
            return this.sessionId;
        }
    }
}
