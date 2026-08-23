package androidx.datastore.preferences;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import java.io.InputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferencesMapCompat {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PreferencesProto$PreferenceMap readFrom(InputStream input) throws CorruptionException {
            Intrinsics.checkNotNullParameter(input, "input");
            try {
                PreferencesProto$PreferenceMap from = PreferencesProto$PreferenceMap.parseFrom(input);
                Intrinsics.checkNotNullExpressionValue(from, "{\n                Prefer…From(input)\n            }");
                return from;
            } catch (InvalidProtocolBufferException e) {
                throw new CorruptionException("Unable to parse preferences proto.", e);
            }
        }
    }
}
