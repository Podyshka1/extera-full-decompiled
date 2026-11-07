package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.session.MediaSession;
import androidx.media3.session.legacy.MediaBrowserServiceCompat$BrowserRoot;
import com.google.common.collect.ImmutableList;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
abstract class MediaUtils {
    public static final MediaBrowserServiceCompat$BrowserRoot defaultBrowserRoot;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.session.legacy.MediaBrowserServiceCompat$BrowserRoot] */
    static {
        final String str = "androidx.media3.session.MediaLibraryService";
        final Bundle bundle = null;
        defaultBrowserRoot = new Object(str, bundle) { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat$BrowserRoot
            private final Bundle extras;
            private final String rootId;

            {
                if (str == null) {
                    f$$ExternalSyntheticBUOutline1.m212m("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
                    throw null;
                }
                this.rootId = str;
                this.extras = bundle;
            }
        };
    }

    public static Player.Commands intersect(Player.Commands commands, Player.Commands commands2) {
        if (commands == null || commands2 == null) {
            return Player.Commands.EMPTY;
        }
        Player.Commands.Builder builder = new Player.Commands.Builder();
        for (int i = 0; i < commands.size(); i++) {
            if (commands2.contains(commands.get(i))) {
                builder.add(commands.get(i));
            }
        }
        return builder.build();
    }

    public static void setMediaItemsWithStartIndexAndPosition(Player player, MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition) {
        if (mediaItemsWithStartPosition.startIndex == -1) {
            boolean zIsCommandAvailable = player.isCommandAvailable(20);
            ImmutableList<MediaItem> immutableList = mediaItemsWithStartPosition.mediaItems;
            if (zIsCommandAvailable) {
                player.setMediaItems(immutableList, true);
                return;
            } else {
                if (immutableList.isEmpty()) {
                    return;
                }
                player.setMediaItem(mediaItemsWithStartPosition.mediaItems.get(0), true);
                return;
            }
        }
        boolean zIsCommandAvailable2 = player.isCommandAvailable(20);
        ImmutableList<MediaItem> immutableList2 = mediaItemsWithStartPosition.mediaItems;
        if (zIsCommandAvailable2) {
            player.setMediaItems(immutableList2, mediaItemsWithStartPosition.startIndex, mediaItemsWithStartPosition.startPositionMs);
        } else {
            if (immutableList2.isEmpty()) {
                return;
            }
            player.setMediaItem(mediaItemsWithStartPosition.mediaItems.get(0), mediaItemsWithStartPosition.startPositionMs);
        }
    }

    public static boolean areSessionPositionInfosInSamePeriodOrAd(SessionPositionInfo sessionPositionInfo, SessionPositionInfo sessionPositionInfo2) {
        Player.PositionInfo positionInfo = sessionPositionInfo.positionInfo;
        int i = positionInfo.mediaItemIndex;
        Player.PositionInfo positionInfo2 = sessionPositionInfo2.positionInfo;
        return i == positionInfo2.mediaItemIndex && positionInfo.periodIndex == positionInfo2.periodIndex && positionInfo.adGroupIndex == positionInfo2.adGroupIndex && positionInfo.adIndexInAdGroup == positionInfo2.adIndexInAdGroup;
    }
}
