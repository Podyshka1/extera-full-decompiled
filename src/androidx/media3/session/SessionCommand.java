package androidx.media3.session;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionCommand {
    public final int commandCode;
    public final String customAction;
    public final Bundle customExtras;
    static final ImmutableList<Integer> SESSION_COMMANDS = ImmutableList.of(40010);
    static final ImmutableList<Integer> LIBRARY_COMMANDS = ImmutableList.of(50000, 50001, 50002, 50003, 50004, 50005, 50006);
    private static final String FIELD_COMMAND_CODE = Util.intToStringMaxRadix(0);
    private static final String FIELD_CUSTOM_ACTION = Util.intToStringMaxRadix(1);
    private static final String FIELD_CUSTOM_EXTRAS = Util.intToStringMaxRadix(2);

    public SessionCommand(int i) {
        Assertions.checkArgument(i != 0, "commandCode shouldn't be COMMAND_CODE_CUSTOM");
        this.commandCode = i;
        this.customAction = _UrlKt.FRAGMENT_ENCODE_SET;
        this.customExtras = Bundle.EMPTY;
    }

    public SessionCommand(String str, Bundle bundle) {
        this.commandCode = 0;
        this.customAction = (String) Assertions.checkNotNull(str);
        this.customExtras = new Bundle((Bundle) Assertions.checkNotNull(bundle));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionCommand)) {
            return false;
        }
        SessionCommand sessionCommand = (SessionCommand) obj;
        return this.commandCode == sessionCommand.commandCode && TextUtils.equals(this.customAction, sessionCommand.customAction);
    }

    public int hashCode() {
        return Objects.hash(this.customAction, Integer.valueOf(this.commandCode));
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_COMMAND_CODE, this.commandCode);
        bundle.putString(FIELD_CUSTOM_ACTION, this.customAction);
        bundle.putBundle(FIELD_CUSTOM_EXTRAS, this.customExtras);
        return bundle;
    }

    public static SessionCommand fromBundle(Bundle bundle) {
        int i = bundle.getInt(FIELD_COMMAND_CODE, 0);
        if (i != 0) {
            return new SessionCommand(i);
        }
        String str = (String) Assertions.checkNotNull(bundle.getString(FIELD_CUSTOM_ACTION));
        Bundle bundle2 = bundle.getBundle(FIELD_CUSTOM_EXTRAS);
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        return new SessionCommand(str, bundle2);
    }
}
