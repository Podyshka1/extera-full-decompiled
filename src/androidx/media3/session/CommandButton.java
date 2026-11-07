package androidx.media3.session;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.common.Rating;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.ImmutableIntArray;
import java.util.List;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class CommandButton {
    public final CharSequence displayName;
    public final Bundle extras;
    public final int icon;
    public final int iconResId;
    public final Uri iconUri;
    public final boolean isEnabled;
    public final Object parameter;
    public final int playerCommand;
    public final SessionCommand sessionCommand;
    public final ImmutableIntArray slots;
    private static final String FIELD_SESSION_COMMAND = Util.intToStringMaxRadix(0);
    private static final String FIELD_PLAYER_COMMAND = Util.intToStringMaxRadix(1);
    private static final String FIELD_ICON_RES_ID = Util.intToStringMaxRadix(2);
    private static final String FIELD_DISPLAY_NAME = Util.intToStringMaxRadix(3);
    private static final String FIELD_EXTRAS = Util.intToStringMaxRadix(4);
    private static final String FIELD_ENABLED = Util.intToStringMaxRadix(5);
    private static final String FIELD_ICON_URI = Util.intToStringMaxRadix(6);
    private static final String FIELD_ICON = Util.intToStringMaxRadix(7);
    private static final String FIELD_SLOTS = Util.intToStringMaxRadix(8);
    private static final String FIELD_PARAMETER = Util.intToStringMaxRadix(9);

    public static int getDefaultSlot(int i, int i2) {
        if (i == 1 || i2 == 57399 || i2 == 57396) {
            return 1;
        }
        if (i == 11 || i == 7 || i == 6 || i2 == 57413 || i2 == 57376 || i2 == 57410 || i2 == 57435 || i2 == 57433 || i2 == 1040473 || i2 == 57434) {
            return 2;
        }
        return (i == 12 || i == 9 || i == 8 || i2 == 57412 || i2 == 57375 || i2 == 63220 || i2 == 57432 || i2 == 57430 || i2 == 1040470 || i2 == 57431) ? 3 : 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getParameterTypeForPlayerCommand(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 5) {
            return 1;
        }
        if (i == 10) {
            return 2;
        }
        if (i == 19) {
            return 7;
        }
        if (i == 24) {
            return 4;
        }
        if (i == 29) {
            return 8;
        }
        if (i == 31) {
            return 6;
        }
        switch (i) {
            case 13:
                return 4;
            case 14:
                return 3;
            case 15:
                return 2;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getParameterTypeForSessionCommand(int i) {
        return i == 40010 ? 5 : 0;
    }

    public static final class Builder {
        private CharSequence displayName;
        private boolean enabled;
        private Bundle extras;
        private final int icon;
        private int iconResId;
        private Uri iconUri;
        private Object parameter;
        private int playerCommand;
        private SessionCommand sessionCommand;
        private ImmutableIntArray slots;

        public Builder(int i) {
            this(i, CommandButton.getIconResIdForIconConstant(i));
        }

        public Builder(int i, int i2) {
            this.icon = i;
            this.iconResId = i2;
            this.displayName = _UrlKt.FRAGMENT_ENCODE_SET;
            this.extras = Bundle.EMPTY;
            this.playerCommand = -1;
            this.enabled = true;
        }

        public Builder setSessionCommand(SessionCommand sessionCommand, Object obj) {
            Preconditions.checkNotNull(sessionCommand, "sessionCommand should not be null.");
            Preconditions.checkArgument(this.playerCommand == -1, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
            this.sessionCommand = sessionCommand;
            this.parameter = CommandButton.verifyParameterType(obj, CommandButton.getParameterTypeForSessionCommand(sessionCommand.commandCode));
            return this;
        }

        public Builder setPlayerCommand(int i, Object obj) {
            Preconditions.checkArgument(this.sessionCommand == null, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set.");
            this.playerCommand = i;
            this.parameter = CommandButton.verifyParameterType(obj, CommandButton.getParameterTypeForPlayerCommand(i));
            return this;
        }

        public CommandButton build() {
            Preconditions.checkState((this.sessionCommand == null) != (this.playerCommand == -1), "Exactly one of sessionCommand and playerCommand should be set");
            if (this.slots == null) {
                this.slots = ImmutableIntArray.of(CommandButton.getDefaultSlot(this.playerCommand, this.icon));
            }
            return new CommandButton(this.sessionCommand, this.playerCommand, this.icon, this.iconResId, this.iconUri, this.displayName, this.extras, this.enabled, this.slots, this.parameter);
        }
    }

    private CommandButton(SessionCommand sessionCommand, int i, int i2, int i3, Uri uri, CharSequence charSequence, Bundle bundle, boolean z, ImmutableIntArray immutableIntArray, Object obj) {
        this.sessionCommand = sessionCommand;
        this.playerCommand = i;
        this.icon = i2;
        this.iconResId = i3;
        this.iconUri = uri;
        this.displayName = charSequence;
        this.extras = new Bundle(bundle);
        this.isEnabled = z;
        this.slots = immutableIntArray;
        this.parameter = obj;
    }

    public void executePlayerAction(Player player) {
        if (this.isEnabled) {
            int i = this.playerCommand;
            if (i == 19) {
                Object obj = this.parameter;
                if (obj != null) {
                    player.setPlaylistMetadata((MediaMetadata) obj);
                    return;
                }
                return;
            }
            if (i == 24) {
                Object obj2 = this.parameter;
                if (obj2 != null) {
                    player.setVolume(((Float) obj2).floatValue());
                    return;
                } else if (player.getVolume() == 0.0f) {
                    player.unmute();
                    return;
                } else {
                    player.mute();
                    return;
                }
            }
            if (i == 29) {
                Object obj3 = this.parameter;
                if (obj3 != null) {
                    player.setTrackSelectionParameters((TrackSelectionParameters) obj3);
                    return;
                }
                return;
            }
            if (i != 31) {
                switch (i) {
                    case 1:
                        Object obj4 = this.parameter;
                        if (obj4 != null) {
                            player.setPlayWhenReady(((Boolean) obj4).booleanValue());
                        } else {
                            player.setPlayWhenReady(!player.getPlayWhenReady());
                        }
                        break;
                    case 2:
                        player.prepare();
                        break;
                    case 3:
                        player.stop();
                        break;
                    case 4:
                        player.seekToDefaultPosition();
                        break;
                    case 5:
                        Object obj5 = this.parameter;
                        if (obj5 != null) {
                            player.seekTo(((Long) obj5).longValue());
                        }
                        break;
                    case 6:
                        player.seekToPreviousMediaItem();
                        break;
                    case 7:
                        player.seekToPrevious();
                        break;
                    case 8:
                        player.seekToNextMediaItem();
                        break;
                    case 9:
                        player.seekToNext();
                        break;
                    case 10:
                        Object obj6 = this.parameter;
                        if (obj6 != null) {
                            player.seekToDefaultPosition(((Integer) obj6).intValue());
                        }
                        break;
                    case 11:
                        player.seekBack();
                        break;
                    case 12:
                        player.seekForward();
                        break;
                    case 13:
                        Object obj7 = this.parameter;
                        if (obj7 != null) {
                            player.setPlaybackSpeed(((Float) obj7).floatValue());
                        }
                        break;
                    case 14:
                        Object obj8 = this.parameter;
                        if (obj8 != null) {
                            player.setShuffleModeEnabled(((Boolean) obj8).booleanValue());
                        } else {
                            player.setShuffleModeEnabled(!player.getShuffleModeEnabled());
                        }
                        break;
                    case 15:
                        Object obj9 = this.parameter;
                        if (obj9 != null) {
                            player.setRepeatMode(((Integer) obj9).intValue());
                        }
                        break;
                }
                return;
            }
            Object obj10 = this.parameter;
            if (obj10 != null) {
                player.setMediaItem((MediaItem) obj10);
            }
        }
    }

    public boolean isPlayRequestPlayerAction(Player player) {
        if (this.playerCommand != 1) {
            return false;
        }
        Object obj = this.parameter;
        return obj == null ? !player.getPlayWhenReady() : ((Boolean) obj).booleanValue();
    }

    public boolean canExecuteAction() {
        SessionCommand sessionCommand = this.sessionCommand;
        if (sessionCommand != null) {
            int i = sessionCommand.commandCode;
            if (i != 0) {
                return i == 40010 && this.parameter != null;
            }
            return true;
        }
        int i2 = this.playerCommand;
        if (i2 != 19) {
            if (i2 != 24) {
                if (i2 != 29 && i2 != 31) {
                    switch (i2) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 11:
                        case 12:
                        case 14:
                            break;
                        case 5:
                        case 10:
                        case 13:
                        case 15:
                            break;
                        default:
                            return false;
                    }
                }
            }
            return true;
        }
        return this.parameter != null;
    }

    public CommandButton copyWithIsEnabled(boolean z) {
        return this.isEnabled == z ? this : new CommandButton(this.sessionCommand, this.playerCommand, this.icon, this.iconResId, this.iconUri, this.displayName, new Bundle(this.extras), z, this.slots, this.parameter);
    }

    public CommandButton copyWithSlots(ImmutableIntArray immutableIntArray) {
        return this.slots.equals(immutableIntArray) ? this : new CommandButton(this.sessionCommand, this.playerCommand, this.icon, this.iconResId, this.iconUri, this.displayName, new Bundle(this.extras), this.isEnabled, immutableIntArray, this.parameter);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommandButton)) {
            return false;
        }
        CommandButton commandButton = (CommandButton) obj;
        return Objects.equals(this.sessionCommand, commandButton.sessionCommand) && this.playerCommand == commandButton.playerCommand && this.icon == commandButton.icon && this.iconResId == commandButton.iconResId && Objects.equals(this.iconUri, commandButton.iconUri) && TextUtils.equals(this.displayName, commandButton.displayName) && this.isEnabled == commandButton.isEnabled && this.slots.equals(commandButton.slots) && Objects.equals(this.parameter, commandButton.parameter);
    }

    public int hashCode() {
        return Objects.hash(this.sessionCommand, Integer.valueOf(this.playerCommand), Integer.valueOf(this.icon), Integer.valueOf(this.iconResId), this.displayName, Boolean.valueOf(this.isEnabled), this.iconUri, this.slots, this.parameter);
    }

    private CommandButton convertToPredefinedCustomCommandButton(int i, int i2) {
        String str;
        SessionCommand sessionCommand = this.sessionCommand;
        if (sessionCommand != null && sessionCommand.commandCode == 0) {
            return copyWithSlots(ImmutableIntArray.of(i));
        }
        Bundle bundle = Bundle.EMPTY;
        if (this.parameter != null) {
            bundle = new Bundle();
            writeParameterToBundle(bundle, "androidx.media3.session.CUSTOM_COMMAND_PARAMETER", i2);
        }
        if (this.sessionCommand != null) {
            str = "androidx.media3.session.SESSION_COMMAND_" + this.sessionCommand.commandCode;
        } else {
            str = "androidx.media3.session.PLAYER_COMMAND_" + this.playerCommand;
        }
        return new CommandButton(new SessionCommand(str, bundle), -1, this.icon, this.iconResId, this.iconUri, this.displayName, this.extras, this.isEnabled, ImmutableIntArray.of(i), null);
    }

    public static ImmutableList<CommandButton> copyWithUnavailableButtonsDisabled(List<CommandButton> list, SessionCommands sessionCommands, Player.Commands commands) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (int i = 0; i < list.size(); i++) {
            CommandButton commandButton = list.get(i);
            if (isButtonCommandAvailable(commandButton, sessionCommands, commands)) {
                builder.add(commandButton);
            } else {
                builder.add(commandButton.copyWithIsEnabled(false));
            }
        }
        return builder.build();
    }

    public static boolean isButtonCommandAvailable(CommandButton commandButton, SessionCommands sessionCommands, Player.Commands commands) {
        SessionCommand sessionCommand = commandButton.sessionCommand;
        if (sessionCommand != null && sessionCommands.contains(sessionCommand)) {
            return true;
        }
        int i = commandButton.playerCommand;
        return i != -1 && commands.contains(i);
    }

    public Bundle toBundle(int i) {
        Bundle bundle = new Bundle();
        SessionCommand sessionCommand = this.sessionCommand;
        if (sessionCommand != null) {
            bundle.putBundle(FIELD_SESSION_COMMAND, sessionCommand.toBundle());
        }
        int i2 = this.playerCommand;
        if (i2 != -1) {
            bundle.putInt(FIELD_PLAYER_COMMAND, i2);
        }
        int i3 = this.icon;
        if (i3 != 0) {
            bundle.putInt(FIELD_ICON, i3);
        }
        int i4 = this.iconResId;
        if (i4 != 0) {
            bundle.putInt(FIELD_ICON_RES_ID, i4);
        }
        CharSequence charSequence = this.displayName;
        if (charSequence != _UrlKt.FRAGMENT_ENCODE_SET) {
            bundle.putCharSequence(FIELD_DISPLAY_NAME, charSequence);
        }
        if (!this.extras.isEmpty()) {
            bundle.putBundle(FIELD_EXTRAS, this.extras);
        }
        Uri uri = this.iconUri;
        if (uri != null) {
            bundle.putParcelable(FIELD_ICON_URI, uri);
        }
        boolean z = this.isEnabled;
        if (!z) {
            bundle.putBoolean(FIELD_ENABLED, z);
        }
        if (this.slots.length() != 1 || this.slots.get(0) != 6) {
            bundle.putIntArray(FIELD_SLOTS, this.slots.toArray());
        }
        if (this.parameter != null) {
            writeParameterToBundle(bundle, FIELD_PARAMETER, i);
        }
        return bundle;
    }

    public static int getIconResIdForIconConstant(int i) {
        switch (i) {
            case 57369:
                return R$drawable.media3_icon_album;
            case 57370:
                return R$drawable.media3_icon_artist;
            case 57372:
                return R$drawable.media3_icon_closed_captions;
            case 57375:
                return R$drawable.media3_icon_fast_forward;
            case 57376:
                return R$drawable.media3_icon_rewind;
            case 57396:
                return R$drawable.media3_icon_pause;
            case 57399:
                return R$drawable.media3_icon_play;
            case 57403:
                return R$drawable.media3_icon_playlist_add;
            case 57408:
                return R$drawable.media3_icon_repeat_all;
            case 57409:
                return R$drawable.media3_icon_repeat_one;
            case 57410:
                return R$drawable.media3_icon_skip_back;
            case 57411:
                return R$drawable.media3_icon_shuffle_on;
            case 57412:
                return R$drawable.media3_icon_next;
            case 57413:
                return R$drawable.media3_icon_previous;
            case 57415:
                return R$drawable.media3_icon_stop;
            case 57416:
                return R$drawable.media3_icon_subtitles;
            case 57421:
                return R$drawable.media3_icon_volume_down;
            case 57423:
                return R$drawable.media3_icon_volume_off;
            case 57424:
                return R$drawable.media3_icon_volume_up;
            case 57430:
                return R$drawable.media3_icon_skip_forward_10;
            case 57431:
                return R$drawable.media3_icon_skip_forward_30;
            case 57432:
                return R$drawable.media3_icon_skip_forward_5;
            case 57433:
                return R$drawable.media3_icon_skip_back_10;
            case 57434:
                return R$drawable.media3_icon_skip_back_30;
            case 57435:
                return R$drawable.media3_icon_skip_back_5;
            case 57436:
                return R$drawable.media3_icon_queue_add;
            case 57446:
                return R$drawable.media3_icon_queue_next;
            case 57447:
                return R$drawable.media3_icon_queue_remove;
            case 57448:
                return R$drawable.media3_icon_playback_speed;
            case 57573:
                return R$drawable.media3_icon_feed;
            case 57669:
                return R$drawable.media3_icon_plus;
            case 57671:
                return R$drawable.media3_icon_plus_circle_unfilled;
            case 57675:
                return R$drawable.media3_icon_block;
            case 57683:
                return R$drawable.media3_icon_flag_unfilled;
            case 57691:
                return R$drawable.media3_icon_minus;
            case 58409:
                return R$drawable.media3_icon_quality;
            case 58654:
                return R$drawable.media3_icon_radio;
            case 58919:
                return R$drawable.media3_icon_sync;
            case 59405:
                return R$drawable.media3_icon_share;
            case 59448:
                return R$drawable.media3_icon_star_unfilled;
            case 59494:
                return R$drawable.media3_icon_bookmark_unfilled;
            case 59500:
                return R$drawable.media3_icon_check_circle_unfilled;
            case 59517:
                return R$drawable.media3_icon_heart_unfilled;
            case 59576:
                return R$drawable.media3_icon_settings;
            case 59611:
                return R$drawable.media3_icon_thumb_down_unfilled;
            case 59612:
                return R$drawable.media3_icon_thumb_up_unfilled;
            case 60288:
                return R$drawable.media3_icon_playlist_remove;
            case 61298:
                return R$drawable.media3_icon_subtitles_off;
            case 61389:
                return R$drawable.media3_icon_playback_speed_1_0;
            case 61512:
                return R$drawable.media3_icon_signal;
            case 61916:
                return R$drawable.media3_icon_closed_captions_off;
            case 62688:
                return R$drawable.media3_icon_playback_speed_1_5;
            case 62689:
                return R$drawable.media3_icon_playback_speed_1_2;
            case 62690:
                return R$drawable.media3_icon_playback_speed_0_5;
            case 62699:
                return R$drawable.media3_icon_playback_speed_2_0;
            case 63220:
                return R$drawable.media3_icon_skip_forward;
            case 1040448:
                return R$drawable.media3_icon_repeat_off;
            case 1040451:
                return R$drawable.media3_icon_shuffle_star;
            case 1040452:
                return R$drawable.media3_icon_shuffle_off;
            case 1040470:
                return R$drawable.media3_icon_skip_forward_15;
            case 1040473:
                return R$drawable.media3_icon_skip_back_15;
            case 1040711:
                return R$drawable.media3_icon_plus_circle_filled;
            case 1040712:
                return R$drawable.media3_icon_minus_circle_filled;
            case 1040713:
                return R$drawable.media3_icon_minus_circle_unfilled;
            case 1040723:
                return R$drawable.media3_icon_flag_filled;
            case 1042488:
                return R$drawable.media3_icon_star_filled;
            case 1042534:
                return R$drawable.media3_icon_bookmark_filled;
            case 1042540:
                return R$drawable.media3_icon_check_circle_filled;
            case 1042557:
                return R$drawable.media3_icon_heart_filled;
            case 1042651:
                return R$drawable.media3_icon_thumb_down_filled;
            case 1042652:
                return R$drawable.media3_icon_thumb_up_filled;
            case 1045728:
                return R$drawable.media3_icon_playback_speed_1_8;
            case 1045730:
                return R$drawable.media3_icon_playback_speed_0_8;
            default:
                return 0;
        }
    }

    public static ImmutableList<CommandButton> getCustomLayoutFromMediaButtonPreferences(List<CommandButton> list, boolean z, boolean z2, int i) {
        int i2;
        if (list.isEmpty()) {
            return ImmutableList.of();
        }
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < list.size(); i5++) {
            CommandButton commandButton = list.get(i5);
            if (commandButton.isEnabled && commandButton.canExecuteAction()) {
                int i6 = 0;
                while (true) {
                    if (i6 >= commandButton.slots.length() || (i2 = commandButton.slots.get(i6)) == 6) {
                        break;
                    }
                    if (z && i3 == -1 && i2 == 2) {
                        i3 = i5;
                        break;
                    }
                    if (z2 && i4 == -1 && i2 == 3) {
                        i4 = i5;
                        break;
                    }
                    i6++;
                }
            }
        }
        ImmutableList.Builder builder = ImmutableList.builder();
        if (i3 != -1) {
            builder.add(list.get(i3).convertToPredefinedCustomCommandButton(2, i));
        }
        if (i4 != -1) {
            builder.add(list.get(i4).convertToPredefinedCustomCommandButton(3, i));
        }
        for (int i7 = 0; i7 < list.size(); i7++) {
            CommandButton commandButton2 = list.get(i7);
            if (commandButton2.isEnabled && commandButton2.canExecuteAction() && i7 != i3 && i7 != i4 && commandButton2.slots.contains(6)) {
                builder.add(commandButton2.convertToPredefinedCustomCommandButton(6, i));
            }
        }
        return builder.build();
    }

    public static boolean containsButtonForSlot(List<CommandButton> list, int i) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).slots.get(0) == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean isPredefinedCustomCommandButtonCode(String str) {
        return isPredefinedPlayerCustomCommandButtonCode(str) || isPredefinedSessionCustomCommandButtonCode(str);
    }

    public static CommandButton convertFromPredefinedCustomCommand(SessionCommand sessionCommand) {
        boolean zIsPredefinedPlayerCustomCommandButtonCode = isPredefinedPlayerCustomCommandButtonCode(sessionCommand.customAction);
        String str = sessionCommand.customAction;
        if (zIsPredefinedPlayerCustomCommandButtonCode) {
            int predefinedCustomCommandCode = getPredefinedCustomCommandCode(str, "androidx.media3.session.PLAYER_COMMAND_");
            return new Builder(0).setPlayerCommand(predefinedCustomCommandCode, getParameterFromBundle(sessionCommand.customExtras, "androidx.media3.session.CUSTOM_COMMAND_PARAMETER", getParameterTypeForPlayerCommand(predefinedCustomCommandCode), 9)).build();
        }
        int predefinedCustomCommandCode2 = getPredefinedCustomCommandCode(str, "androidx.media3.session.SESSION_COMMAND_");
        return new Builder(0).setSessionCommand(new SessionCommand(predefinedCustomCommandCode2), getParameterFromBundle(sessionCommand.customExtras, "androidx.media3.session.CUSTOM_COMMAND_PARAMETER", getParameterTypeForSessionCommand(predefinedCustomCommandCode2), 9)).build();
    }

    private static boolean isPredefinedPlayerCustomCommandButtonCode(String str) {
        return str.startsWith("androidx.media3.session.PLAYER_COMMAND_");
    }

    private static boolean isPredefinedSessionCustomCommandButtonCode(String str) {
        return str.startsWith("androidx.media3.session.SESSION_COMMAND_");
    }

    private static int getPredefinedCustomCommandCode(String str, String str2) {
        return Integer.parseInt(str.substring(str2.length()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object verifyParameterType(Object obj, int i) {
        if (obj == null) {
            return null;
        }
        switch (i) {
            case 1:
                if (obj instanceof Integer) {
                    obj = Long.valueOf(((Integer) obj).longValue());
                }
                Preconditions.checkArgument(obj instanceof Long, "Parameter has incorrect type.");
                break;
            case 2:
                Preconditions.checkArgument(obj instanceof Integer, "Parameter has incorrect type.");
                break;
            case 3:
                Preconditions.checkArgument(obj instanceof Boolean, "Parameter has incorrect type.");
                break;
            case 4:
                if (obj instanceof Double) {
                    obj = Float.valueOf(((Double) obj).floatValue());
                }
                Preconditions.checkArgument(obj instanceof Float, "Parameter has incorrect type.");
                break;
            case 5:
                Preconditions.checkArgument(obj instanceof Rating, "Parameter has incorrect type.");
                break;
            case 6:
                Preconditions.checkArgument(obj instanceof MediaItem, "Parameter has incorrect type.");
                break;
            case 7:
                Preconditions.checkArgument(obj instanceof MediaMetadata, "Parameter has incorrect type.");
                break;
            case 8:
                Preconditions.checkArgument(obj instanceof TrackSelectionParameters, "Parameter has incorrect type.");
                break;
        }
        return null;
    }

    @RequiresNonNull({"parameter"})
    private void writeParameterToBundle(Bundle bundle, String str, int i) {
        int parameterTypeForPlayerCommand;
        SessionCommand sessionCommand = this.sessionCommand;
        if (sessionCommand != null) {
            parameterTypeForPlayerCommand = getParameterTypeForSessionCommand(sessionCommand.commandCode);
        } else {
            parameterTypeForPlayerCommand = getParameterTypeForPlayerCommand(this.playerCommand);
        }
        switch (parameterTypeForPlayerCommand) {
            case 1:
                bundle.putLong(str, ((Long) this.parameter).longValue());
                break;
            case 2:
                bundle.putInt(str, ((Integer) this.parameter).intValue());
                break;
            case 3:
                bundle.putBoolean(str, ((Boolean) this.parameter).booleanValue());
                break;
            case 4:
                bundle.putFloat(str, ((Float) this.parameter).floatValue());
                break;
            case 5:
                bundle.putBundle(str, ((Rating) this.parameter).toBundle());
                break;
            case 6:
                bundle.putBundle(str, ((MediaItem) this.parameter).toBundle(i));
                break;
            case 7:
                bundle.putBundle(str, ((MediaMetadata) this.parameter).toBundle(i));
                break;
            case 8:
                bundle.putBundle(str, ((TrackSelectionParameters) this.parameter).toBundle());
                break;
        }
    }

    private static Object getParameterFromBundle(Bundle bundle, String str, int i, int i2) {
        if (!bundle.containsKey(str)) {
            return null;
        }
        switch (i) {
        }
        return null;
    }
}
