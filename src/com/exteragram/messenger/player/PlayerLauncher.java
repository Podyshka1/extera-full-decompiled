package com.exteragram.messenger.player;

import android.content.Context;
import com.exteragram.messenger.ExteraConfig;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AudioPlayerAlert;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PlayerLauncher {
    public static BottomSheet create(Context context, Theme.ResourcesProvider resourcesProvider) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (ExteraConfig.getNewPlayerStyle() && (playingMessageObject == null || playingMessageObject.isMusic())) {
            return new MusicPlayerSheet(context, resourcesProvider);
        }
        return new AudioPlayerAlert(context, resourcesProvider);
    }

    public static boolean isShowing() {
        MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.instance;
        if (musicPlayerSheet != null && musicPlayerSheet.isShowing()) {
            return true;
        }
        AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.instance;
        return audioPlayerAlert != null && audioPlayerAlert.isShowing();
    }

    public static void onPlaybackOrderChanged() {
        MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.instance;
        if (musicPlayerSheet != null) {
            musicPlayerSheet.updateOrderButtons(true);
        }
    }
}
