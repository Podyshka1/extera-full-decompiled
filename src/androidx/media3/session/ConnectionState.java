package androidx.media3.session;

import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.core.app.BundleCompat;
import androidx.media3.common.Player;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Util;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
class ConnectionState {
    public final ImmutableList<CommandButton> commandButtonsForMediaItems;
    public final ImmutableList<CommandButton> customLayout;
    public final int libraryVersion;
    public final ImmutableList<CommandButton> mediaButtonPreferences;
    public final MediaSession.Token platformToken;
    public final Player.Commands playerCommandsFromPlayer;
    public final Player.Commands playerCommandsFromSession;
    public final PlayerInfo playerInfo;
    public final PendingIntent sessionActivity;
    public final IMediaSession sessionBinder;
    public final SessionCommands sessionCommands;
    public final Bundle sessionExtras;
    public final int sessionInterfaceVersion;
    public final Bundle tokenExtras;
    private static final String FIELD_LIBRARY_VERSION = Util.intToStringMaxRadix(0);
    private static final String FIELD_SESSION_BINDER = Util.intToStringMaxRadix(1);
    private static final String FIELD_SESSION_ACTIVITY = Util.intToStringMaxRadix(2);
    private static final String FIELD_CUSTOM_LAYOUT = Util.intToStringMaxRadix(9);
    private static final String FIELD_MEDIA_BUTTON_PREFERENCES = Util.intToStringMaxRadix(14);
    private static final String FIELD_COMMAND_BUTTONS_FOR_MEDIA_ITEMS = Util.intToStringMaxRadix(13);
    private static final String FIELD_SESSION_COMMANDS = Util.intToStringMaxRadix(3);
    private static final String FIELD_PLAYER_COMMANDS_FROM_SESSION = Util.intToStringMaxRadix(4);
    private static final String FIELD_PLAYER_COMMANDS_FROM_PLAYER = Util.intToStringMaxRadix(5);
    private static final String FIELD_TOKEN_EXTRAS = Util.intToStringMaxRadix(6);
    private static final String FIELD_SESSION_EXTRAS = Util.intToStringMaxRadix(11);
    private static final String FIELD_PLAYER_INFO = Util.intToStringMaxRadix(7);
    private static final String FIELD_SESSION_INTERFACE_VERSION = Util.intToStringMaxRadix(8);
    private static final String FIELD_IN_PROCESS_BINDER = Util.intToStringMaxRadix(10);
    private static final String FIELD_PLATFORM_TOKEN = Util.intToStringMaxRadix(12);

    public ConnectionState(int i, int i2, IMediaSession iMediaSession, PendingIntent pendingIntent, ImmutableList<CommandButton> immutableList, ImmutableList<CommandButton> immutableList2, ImmutableList<CommandButton> immutableList3, SessionCommands sessionCommands, Player.Commands commands, Player.Commands commands2, Bundle bundle, Bundle bundle2, PlayerInfo playerInfo, MediaSession.Token token) {
        this.libraryVersion = i;
        this.sessionInterfaceVersion = i2;
        this.sessionBinder = iMediaSession;
        this.sessionActivity = pendingIntent;
        this.customLayout = immutableList;
        this.mediaButtonPreferences = immutableList2;
        this.commandButtonsForMediaItems = immutableList3;
        this.sessionCommands = sessionCommands;
        this.playerCommandsFromSession = commands;
        this.playerCommandsFromPlayer = commands2;
        this.tokenExtras = bundle;
        this.sessionExtras = bundle2;
        this.playerInfo = playerInfo;
        this.platformToken = token;
    }

    public Bundle toBundleForRemoteProcess(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_LIBRARY_VERSION, this.libraryVersion);
        BundleCompat.putBinder(bundle, FIELD_SESSION_BINDER, this.sessionBinder.asBinder());
        bundle.putParcelable(FIELD_SESSION_ACTIVITY, this.sessionActivity);
        if (!this.customLayout.isEmpty()) {
            bundle.putParcelableArrayList(FIELD_CUSTOM_LAYOUT, BundleCollectionUtil.toBundleArrayList(this.customLayout, new Function() { // from class: androidx.media3.session.ConnectionState$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
                    throw null;
                }
            }));
        }
        if (!this.mediaButtonPreferences.isEmpty()) {
            ImmutableList<CommandButton> immutableList = this.mediaButtonPreferences;
            if (i >= 7) {
                bundle.putParcelableArrayList(FIELD_MEDIA_BUTTON_PREFERENCES, BundleCollectionUtil.toBundleArrayList(immutableList, new Function() { // from class: androidx.media3.session.ConnectionState$$ExternalSyntheticLambda1
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj) {
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
                        throw null;
                    }
                }));
            } else {
                bundle.putParcelableArrayList(FIELD_CUSTOM_LAYOUT, BundleCollectionUtil.toBundleArrayList(CommandButton.getCustomLayoutFromMediaButtonPreferences(immutableList, true, true), new Function() { // from class: androidx.media3.session.ConnectionState$$ExternalSyntheticLambda2
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj) {
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
                        throw null;
                    }
                }));
            }
        }
        if (!this.commandButtonsForMediaItems.isEmpty()) {
            bundle.putParcelableArrayList(FIELD_COMMAND_BUTTONS_FOR_MEDIA_ITEMS, BundleCollectionUtil.toBundleArrayList(this.commandButtonsForMediaItems, new Function() { // from class: androidx.media3.session.ConnectionState$$ExternalSyntheticLambda3
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
                    throw null;
                }
            }));
        }
        bundle.putBundle(FIELD_SESSION_COMMANDS, this.sessionCommands.toBundle());
        bundle.putBundle(FIELD_PLAYER_COMMANDS_FROM_SESSION, this.playerCommandsFromSession.toBundle());
        bundle.putBundle(FIELD_PLAYER_COMMANDS_FROM_PLAYER, this.playerCommandsFromPlayer.toBundle());
        bundle.putBundle(FIELD_TOKEN_EXTRAS, this.tokenExtras);
        bundle.putBundle(FIELD_SESSION_EXTRAS, this.sessionExtras);
        bundle.putBundle(FIELD_PLAYER_INFO, this.playerInfo.filterByAvailableCommands(MediaUtils.intersect(this.playerCommandsFromSession, this.playerCommandsFromPlayer), false, false).toBundleForRemoteProcess(i));
        bundle.putInt(FIELD_SESSION_INTERFACE_VERSION, this.sessionInterfaceVersion);
        MediaSession.Token token = this.platformToken;
        if (token != null) {
            bundle.putParcelable(FIELD_PLATFORM_TOKEN, token);
        }
        return bundle;
    }
}
