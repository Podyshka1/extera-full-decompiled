package androidx.media3.session;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.media3.common.Player;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CommandButton {
    private static final String FIELD_SESSION_COMMAND = Util.intToStringMaxRadix(0);
    private static final String FIELD_PLAYER_COMMAND = Util.intToStringMaxRadix(1);
    private static final String FIELD_ICON_RES_ID = Util.intToStringMaxRadix(2);
    private static final String FIELD_DISPLAY_NAME = Util.intToStringMaxRadix(3);
    private static final String FIELD_EXTRAS = Util.intToStringMaxRadix(4);
    private static final String FIELD_ENABLED = Util.intToStringMaxRadix(5);
    private static final String FIELD_ICON_URI = Util.intToStringMaxRadix(6);
    private static final String FIELD_ICON = Util.intToStringMaxRadix(7);
    private static final String FIELD_SLOTS = Util.intToStringMaxRadix(8);

    public static ImmutableList<CommandButton> copyWithUnavailableButtonsDisabled(List<CommandButton> list, SessionCommands sessionCommands, Player.Commands commands) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (int i = 0; i < list.size(); i++) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list.get(i));
            if (isButtonCommandAvailable(null, sessionCommands, commands)) {
                builder.add((Object) null);
            } else {
                throw null;
            }
        }
        return builder.build();
    }

    public static boolean isButtonCommandAvailable(CommandButton commandButton, SessionCommands sessionCommands, Player.Commands commands) {
        throw null;
    }

    public static ImmutableList<CommandButton> getCustomLayoutFromMediaButtonPreferences(List<CommandButton> list, boolean z, boolean z2) {
        if (list.isEmpty()) {
            return ImmutableList.of();
        }
        if (list.size() > 0) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list.get(0));
            throw null;
        }
        ImmutableList.Builder builder = ImmutableList.builder();
        if (list.size() > 0) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list.get(0));
            throw null;
        }
        return builder.build();
    }

    public static boolean containsButtonForSlot(List<CommandButton> list, int i) {
        if (list.size() <= 0) {
            return false;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list.get(0));
        throw null;
    }
}
