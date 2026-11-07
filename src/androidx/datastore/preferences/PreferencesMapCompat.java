package androidx.datastore.preferences;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/datastore/preferences/PreferencesMapCompat;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "datastore-preferences-proto"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class PreferencesMapCompat {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Landroidx/datastore/preferences/PreferencesMapCompat$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "()V", "readFrom", "Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;", PluginsConstants.Settings.TYPE_INPUT, "Ljava/io/InputStream;", "datastore-preferences-proto"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PreferencesProto$PreferenceMap readFrom(InputStream input) throws CorruptionException {
            try {
                return PreferencesProto$PreferenceMap.parseFrom(input);
            } catch (InvalidProtocolBufferException e) {
                throw new CorruptionException("Unable to parse preferences proto.", e);
            }
        }
    }
}
