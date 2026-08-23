package com.google.android.exoplayer2.ext.mediasession;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.mediarouter.media.MediaItemMetadata;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ErrorMessageProvider;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.gms.cast.MediaStatus;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.url._UrlKt;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaSessionConnector {
    public static final long ALL_PLAYBACK_ACTIONS = 6554447;
    private static final int BASE_MEDIA_SESSION_FLAGS = 3;
    private static final long BASE_PLAYBACK_ACTIONS = 6554119;
    public static final long DEFAULT_PLAYBACK_ACTIONS = 2360143;
    private static final int EDITOR_MEDIA_SESSION_FLAGS = 7;
    public static final String EXTRAS_SPEED = "EXO_SPEED";
    private static final MediaMetadataCompat METADATA_EMPTY;
    private CaptionCallback captionCallback;
    private boolean clearMediaItemsOnStop;
    private final ArrayList<CommandReceiver> commandReceivers;
    private final ComponentListener componentListener;
    private Map<String, CustomActionProvider> customActionMap;
    private CustomActionProvider[] customActionProviders;
    private final ArrayList<CommandReceiver> customCommandReceivers;
    private Pair<Integer, CharSequence> customError;
    private Bundle customErrorExtras;
    private boolean dispatchUnsupportedActionsEnabled;
    private long enabledPlaybackActions;
    private ErrorMessageProvider<? super PlaybackException> errorMessageProvider;
    private final Looper looper;
    private boolean mapIdleToStopped;
    private MediaButtonEventHandler mediaButtonEventHandler;
    private MediaMetadataProvider mediaMetadataProvider;
    public final MediaSessionCompat mediaSession;
    private boolean metadataDeduplicationEnabled;
    private PlaybackPreparer playbackPreparer;
    private Player player;
    private QueueEditor queueEditor;
    private QueueNavigator queueNavigator;
    private RatingCallback ratingCallback;

    public interface CaptionCallback extends CommandReceiver {
        boolean hasCaptions(Player player);

        void onSetCaptioningEnabled(Player player, boolean z);
    }

    public interface CommandReceiver {
        boolean onCommand(Player player, String str, Bundle bundle, ResultReceiver resultReceiver);
    }

    public interface CustomActionProvider {
        PlaybackStateCompat.CustomAction getCustomAction(Player player);

        void onCustomAction(Player player, String str, Bundle bundle);
    }

    public interface MediaButtonEventHandler {
        boolean onMediaButtonEvent(Player player, Intent intent);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaybackActions {
    }

    public interface PlaybackPreparer extends CommandReceiver {
        public static final long ACTIONS = 257024;

        long getSupportedPrepareActions();

        void onPrepare(boolean z);

        void onPrepareFromMediaId(String str, boolean z, Bundle bundle);

        void onPrepareFromSearch(String str, boolean z, Bundle bundle);

        void onPrepareFromUri(Uri uri, boolean z, Bundle bundle);
    }

    public interface QueueEditor extends CommandReceiver {
        void onAddQueueItem(Player player, MediaDescriptionCompat mediaDescriptionCompat);

        void onAddQueueItem(Player player, MediaDescriptionCompat mediaDescriptionCompat, int i);

        void onRemoveQueueItem(Player player, MediaDescriptionCompat mediaDescriptionCompat);
    }

    public interface QueueNavigator extends CommandReceiver {
        public static final long ACTIONS = 4144;

        long getActiveQueueItemId(Player player);

        long getSupportedQueueNavigatorActions(Player player);

        default void onCurrentMediaItemIndexChanged(Player player) {
        }

        void onSkipToNext(Player player);

        void onSkipToPrevious(Player player);

        void onSkipToQueueItem(Player player, long j);

        void onTimelineChanged(Player player);
    }

    public interface RatingCallback extends CommandReceiver {
        void onSetRating(Player player, RatingCompat ratingCompat);

        void onSetRating(Player player, RatingCompat ratingCompat, Bundle bundle);
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.mediasession");
        METADATA_EMPTY = new MediaMetadataCompat.Builder().build();
    }

    public interface MediaMetadataProvider {
        MediaMetadataCompat getMetadata(Player player);

        default boolean sameAs(MediaMetadataCompat mediaMetadataCompat, MediaMetadataCompat mediaMetadataCompat2) {
            if (mediaMetadataCompat == mediaMetadataCompat2) {
                return true;
            }
            if (mediaMetadataCompat.size() != mediaMetadataCompat2.size()) {
                return false;
            }
            Set<String> setKeySet = mediaMetadataCompat.keySet();
            Bundle bundle = mediaMetadataCompat.getBundle();
            Bundle bundle2 = mediaMetadataCompat2.getBundle();
            for (String str : setKeySet) {
                Object obj = bundle.get(str);
                Object obj2 = bundle2.get(str);
                if (obj != obj2) {
                    if ((obj instanceof Bitmap) && (obj2 instanceof Bitmap)) {
                        if (!((Bitmap) obj).sameAs((Bitmap) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof RatingCompat) && (obj2 instanceof RatingCompat)) {
                        RatingCompat ratingCompat = (RatingCompat) obj;
                        RatingCompat ratingCompat2 = (RatingCompat) obj2;
                        if (ratingCompat.hasHeart() != ratingCompat2.hasHeart() || ratingCompat.isRated() != ratingCompat2.isRated() || ratingCompat.isThumbUp() != ratingCompat2.isThumbUp() || ratingCompat.getPercentRating() != ratingCompat2.getPercentRating() || ratingCompat.getStarRating() != ratingCompat2.getStarRating() || ratingCompat.getRatingStyle() != ratingCompat2.getRatingStyle()) {
                            return false;
                        }
                    } else if (!Util.areEqual(obj, obj2)) {
                        return false;
                    }
                }
            }
            return true;
        }
    }

    public MediaSessionConnector(MediaSessionCompat mediaSessionCompat) {
        this.mediaSession = mediaSessionCompat;
        Looper currentOrMainLooper = Util.getCurrentOrMainLooper();
        this.looper = currentOrMainLooper;
        ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        this.commandReceivers = new ArrayList<>();
        this.customCommandReceivers = new ArrayList<>();
        this.customActionProviders = new CustomActionProvider[0];
        this.customActionMap = Collections.EMPTY_MAP;
        this.mediaMetadataProvider = new DefaultMediaMetadataProvider(mediaSessionCompat.getController(), null);
        this.enabledPlaybackActions = DEFAULT_PLAYBACK_ACTIONS;
        mediaSessionCompat.setFlags(3);
        mediaSessionCompat.setCallback(componentListener, new Handler(currentOrMainLooper));
        this.clearMediaItemsOnStop = true;
    }

    public void setPlayer(Player player) {
        Assertions.checkArgument(player == null || player.getApplicationLooper() == this.looper);
        Player player2 = this.player;
        if (player2 != null) {
            player2.removeListener(this.componentListener);
        }
        this.player = player;
        if (player != null) {
            player.addListener(this.componentListener);
        }
        invalidateMediaSessionPlaybackState();
        invalidateMediaSessionMetadata();
    }

    public void setPlaybackPreparer(PlaybackPreparer playbackPreparer) {
        PlaybackPreparer playbackPreparer2 = this.playbackPreparer;
        if (playbackPreparer2 != playbackPreparer) {
            unregisterCommandReceiver(playbackPreparer2);
            this.playbackPreparer = playbackPreparer;
            registerCommandReceiver(playbackPreparer);
            invalidateMediaSessionPlaybackState();
        }
    }

    public void setMediaButtonEventHandler(MediaButtonEventHandler mediaButtonEventHandler) {
        this.mediaButtonEventHandler = mediaButtonEventHandler;
    }

    public void setEnabledPlaybackActions(long j) {
        long j2 = j & ALL_PLAYBACK_ACTIONS;
        if (this.enabledPlaybackActions != j2) {
            this.enabledPlaybackActions = j2;
            invalidateMediaSessionPlaybackState();
        }
    }

    public void setErrorMessageProvider(ErrorMessageProvider<? super PlaybackException> errorMessageProvider) {
        if (errorMessageProvider != null) {
            invalidateMediaSessionPlaybackState();
        }
    }

    public void setQueueNavigator(QueueNavigator queueNavigator) {
        QueueNavigator queueNavigator2 = this.queueNavigator;
        if (queueNavigator2 != queueNavigator) {
            unregisterCommandReceiver(queueNavigator2);
            this.queueNavigator = queueNavigator;
            registerCommandReceiver(queueNavigator);
        }
    }

    public void setQueueEditor(QueueEditor queueEditor) {
        QueueEditor queueEditor2 = this.queueEditor;
        if (queueEditor2 != queueEditor) {
            unregisterCommandReceiver(queueEditor2);
            this.queueEditor = queueEditor;
            registerCommandReceiver(queueEditor);
            this.mediaSession.setFlags(queueEditor == null ? 3 : 7);
        }
    }

    public void setRatingCallback(RatingCallback ratingCallback) {
        RatingCallback ratingCallback2 = this.ratingCallback;
        if (ratingCallback2 != ratingCallback) {
            unregisterCommandReceiver(ratingCallback2);
            this.ratingCallback = ratingCallback;
            registerCommandReceiver(ratingCallback);
        }
    }

    public void setCaptionCallback(CaptionCallback captionCallback) {
        CaptionCallback captionCallback2 = this.captionCallback;
        if (captionCallback2 != captionCallback) {
            unregisterCommandReceiver(captionCallback2);
            this.captionCallback = captionCallback;
            registerCommandReceiver(captionCallback);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        setCustomErrorMessage(charSequence, charSequence == null ? 0 : 1);
    }

    public void setCustomErrorMessage(CharSequence charSequence, int i) {
        setCustomErrorMessage(charSequence, i, null);
    }

    public void setCustomErrorMessage(CharSequence charSequence, int i, Bundle bundle) {
        this.customError = charSequence == null ? null : new Pair<>(Integer.valueOf(i), charSequence);
        if (charSequence == null) {
            bundle = null;
        }
        this.customErrorExtras = bundle;
        invalidateMediaSessionPlaybackState();
    }

    public void setCustomActionProviders(CustomActionProvider... customActionProviderArr) {
        if (customActionProviderArr == null) {
            customActionProviderArr = new CustomActionProvider[0];
        }
        this.customActionProviders = customActionProviderArr;
        invalidateMediaSessionPlaybackState();
    }

    public void setMediaMetadataProvider(MediaMetadataProvider mediaMetadataProvider) {
        if (this.mediaMetadataProvider != mediaMetadataProvider) {
            this.mediaMetadataProvider = mediaMetadataProvider;
            invalidateMediaSessionMetadata();
        }
    }

    public void setDispatchUnsupportedActionsEnabled(boolean z) {
        this.dispatchUnsupportedActionsEnabled = z;
    }

    public void setClearMediaItemsOnStop(boolean z) {
        this.clearMediaItemsOnStop = z;
    }

    public void setMapStateIdleToSessionStateStopped(boolean z) {
        this.mapIdleToStopped = z;
    }

    public void setMetadataDeduplicationEnabled(boolean z) {
        this.metadataDeduplicationEnabled = z;
    }

    public final void invalidateMediaSessionMetadata() {
        MediaMetadataCompat metadata;
        MediaMetadataCompat metadata2;
        Player player;
        MediaMetadataProvider mediaMetadataProvider = this.mediaMetadataProvider;
        if (mediaMetadataProvider != null && (player = this.player) != null) {
            metadata = mediaMetadataProvider.getMetadata(player);
        } else {
            metadata = METADATA_EMPTY;
        }
        MediaMetadataProvider mediaMetadataProvider2 = this.mediaMetadataProvider;
        if (!this.metadataDeduplicationEnabled || mediaMetadataProvider2 == null || (metadata2 = this.mediaSession.getController().getMetadata()) == null || !mediaMetadataProvider2.sameAs(metadata2, metadata)) {
            this.mediaSession.setMetadata(metadata);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00fb A[PHI: r5
  0x00fb: PHI (r5v4 int) = (r5v2 int), (r5v3 int) binds: [B:39:0x00f9, B:42:0x00fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void invalidateMediaSessionPlaybackState() {
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
        Player player = this.player;
        int i = 0;
        if (player == null) {
            builder.setActions(buildPrepareActions()).setState(0, 0L, 0.0f, SystemClock.elapsedRealtime());
            this.mediaSession.setRepeatMode(0);
            this.mediaSession.setShuffleMode(0);
            this.mediaSession.setPlaybackState(builder.build());
            return;
        }
        HashMap map = new HashMap();
        for (CustomActionProvider customActionProvider : this.customActionProviders) {
            PlaybackStateCompat.CustomAction customAction = customActionProvider.getCustomAction(player);
            if (customAction != null) {
                map.put(customAction.getAction(), customActionProvider);
                builder.addCustomAction(customAction);
            }
        }
        this.customActionMap = Collections.unmodifiableMap(map);
        Bundle bundle = new Bundle();
        int mediaSessionPlaybackState = (player.getPlayerError() == null && this.customError == null) ? getMediaSessionPlaybackState(player.getPlaybackState(), player.getPlayWhenReady()) : 7;
        Pair<Integer, CharSequence> pair = this.customError;
        if (pair != null) {
            builder.setErrorMessage(((Integer) pair.first).intValue(), (CharSequence) this.customError.second);
            Bundle bundle2 = this.customErrorExtras;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
        }
        QueueNavigator queueNavigator = this.queueNavigator;
        long activeQueueItemId = queueNavigator != null ? queueNavigator.getActiveQueueItemId(player) : -1L;
        float f = player.getPlaybackParameters().speed;
        bundle.putFloat(EXTRAS_SPEED, f);
        if (!player.isPlaying()) {
            f = 0.0f;
        }
        float f2 = f;
        MediaItem currentMediaItem = player.getCurrentMediaItem();
        if (currentMediaItem != null && !_UrlKt.FRAGMENT_ENCODE_SET.equals(currentMediaItem.mediaId)) {
            bundle.putString("androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID", currentMediaItem.mediaId);
        }
        builder.setActions(buildPrepareActions() | buildPlaybackActions(player)).setActiveQueueItemId(activeQueueItemId).setBufferedPosition(player.getBufferedPosition()).setState(mediaSessionPlaybackState, player.getCurrentPosition(), f2, SystemClock.elapsedRealtime()).setExtras(bundle);
        int repeatMode = player.getRepeatMode();
        MediaSessionCompat mediaSessionCompat = this.mediaSession;
        int i2 = 1;
        if (repeatMode == 1) {
            i = i2;
        } else {
            i2 = 2;
            if (repeatMode == 2) {
            }
        }
        mediaSessionCompat.setRepeatMode(i);
        this.mediaSession.setShuffleMode(player.getShuffleModeEnabled() ? 1 : 0);
        this.mediaSession.setPlaybackState(builder.build());
    }

    public final void invalidateMediaSessionQueue() {
        Player player;
        QueueNavigator queueNavigator = this.queueNavigator;
        if (queueNavigator == null || (player = this.player) == null) {
            return;
        }
        queueNavigator.onTimelineChanged(player);
    }

    public void registerCustomCommandReceiver(CommandReceiver commandReceiver) {
        if (commandReceiver == null || this.customCommandReceivers.contains(commandReceiver)) {
            return;
        }
        this.customCommandReceivers.add(commandReceiver);
    }

    public void unregisterCustomCommandReceiver(CommandReceiver commandReceiver) {
        if (commandReceiver != null) {
            this.customCommandReceivers.remove(commandReceiver);
        }
    }

    private void registerCommandReceiver(CommandReceiver commandReceiver) {
        if (commandReceiver == null || this.commandReceivers.contains(commandReceiver)) {
            return;
        }
        this.commandReceivers.add(commandReceiver);
    }

    private void unregisterCommandReceiver(CommandReceiver commandReceiver) {
        if (commandReceiver != null) {
            this.commandReceivers.remove(commandReceiver);
        }
    }

    private long buildPrepareActions() {
        PlaybackPreparer playbackPreparer = this.playbackPreparer;
        if (playbackPreparer == null) {
            return 0L;
        }
        return PlaybackPreparer.ACTIONS & playbackPreparer.getSupportedPrepareActions();
    }

    private long buildPlaybackActions(Player player) {
        boolean z;
        boolean zIsCommandAvailable = player.isCommandAvailable(5);
        boolean zIsCommandAvailable2 = player.isCommandAvailable(11);
        boolean zIsCommandAvailable3 = player.isCommandAvailable(12);
        boolean z2 = false;
        if (player.getCurrentTimeline().isEmpty() || player.isPlayingAd()) {
            z = false;
        } else {
            boolean z3 = this.ratingCallback != null;
            CaptionCallback captionCallback = this.captionCallback;
            if (captionCallback != null && captionCallback.hasCaptions(player)) {
                z2 = true;
            }
            boolean z4 = z2;
            z2 = z3;
            z = z4;
        }
        long j = zIsCommandAvailable ? 6554375L : BASE_PLAYBACK_ACTIONS;
        if (zIsCommandAvailable3) {
            j |= 64;
        }
        if (zIsCommandAvailable2) {
            j |= 8;
        }
        long supportedQueueNavigatorActions = this.enabledPlaybackActions & j;
        QueueNavigator queueNavigator = this.queueNavigator;
        if (queueNavigator != null) {
            supportedQueueNavigatorActions |= queueNavigator.getSupportedQueueNavigatorActions(player) & QueueNavigator.ACTIONS;
        }
        if (z2) {
            supportedQueueNavigatorActions |= 128;
        }
        return z ? 1048576 | supportedQueueNavigatorActions : supportedQueueNavigatorActions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"player"}, result = true)
    public boolean canDispatchPlaybackAction(long j) {
        if (this.player != null) {
            return (j & this.enabledPlaybackActions) != 0 || this.dispatchUnsupportedActionsEnabled;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"playbackPreparer"}, result = true)
    public boolean canDispatchToPlaybackPreparer(long j) {
        PlaybackPreparer playbackPreparer = this.playbackPreparer;
        if (playbackPreparer != null) {
            return (j & playbackPreparer.getSupportedPrepareActions()) != 0 || this.dispatchUnsupportedActionsEnabled;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"player", "queueNavigator"}, result = true)
    public boolean canDispatchToQueueNavigator(long j) {
        QueueNavigator queueNavigator;
        Player player = this.player;
        if (player == null || (queueNavigator = this.queueNavigator) == null) {
            return false;
        }
        return (j & queueNavigator.getSupportedQueueNavigatorActions(player)) != 0 || this.dispatchUnsupportedActionsEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"player", "ratingCallback"}, result = true)
    public boolean canDispatchSetRating() {
        return (this.player == null || this.ratingCallback == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"player", "captionCallback"}, result = true)
    public boolean canDispatchSetCaptioningEnabled() {
        return (this.player == null || this.captionCallback == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"player", "queueEditor"}, result = true)
    public boolean canDispatchQueueEdit() {
        return (this.player == null || this.queueEditor == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNullIf(expression = {"player", "mediaButtonEventHandler"}, result = true)
    public boolean canDispatchMediaButtonEvent() {
        return (this.player == null || this.mediaButtonEventHandler == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekTo(Player player, int i, long j) {
        player.seekTo(i, j);
    }

    private int getMediaSessionPlaybackState(int i, boolean z) {
        if (i == 2) {
            return z ? 6 : 2;
        }
        if (i == 3) {
            return z ? 3 : 2;
        }
        if (i != 4) {
            return this.mapIdleToStopped ? 1 : 0;
        }
        return 1;
    }

    public static final class DefaultMediaMetadataProvider implements MediaMetadataProvider {
        private final MediaControllerCompat mediaController;
        private final String metadataExtrasPrefix;

        public DefaultMediaMetadataProvider(MediaControllerCompat mediaControllerCompat, String str) {
            this.mediaController = mediaControllerCompat;
            this.metadataExtrasPrefix = str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
        }

        @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.MediaMetadataProvider
        public MediaMetadataCompat getMetadata(Player player) {
            if (player.getCurrentTimeline().isEmpty()) {
                return MediaSessionConnector.METADATA_EMPTY;
            }
            MediaMetadataCompat.Builder builder = new MediaMetadataCompat.Builder();
            if (player.isPlayingAd()) {
                builder.putLong("android.media.metadata.ADVERTISEMENT", 1L);
            }
            builder.putLong(MediaItemMetadata.KEY_DURATION, (player.isCurrentMediaItemDynamic() || player.getDuration() == -9223372036854775807L) ? -1L : player.getDuration());
            long activeQueueItemId = this.mediaController.getPlaybackState().getActiveQueueItemId();
            if (activeQueueItemId != -1) {
                List<MediaSessionCompat.QueueItem> queue = this.mediaController.getQueue();
                int i = 0;
                while (true) {
                    if (queue == null || i >= queue.size()) {
                        break;
                    }
                    MediaSessionCompat.QueueItem queueItem = queue.get(i);
                    if (queueItem.getQueueId() == activeQueueItemId) {
                        MediaDescriptionCompat description = queueItem.getDescription();
                        Bundle extras = description.getExtras();
                        if (extras != null) {
                            for (String str : extras.keySet()) {
                                Object obj = extras.get(str);
                                if (obj instanceof String) {
                                    builder.putString(this.metadataExtrasPrefix + str, (String) obj);
                                } else if (obj instanceof CharSequence) {
                                    builder.putText(this.metadataExtrasPrefix + str, (CharSequence) obj);
                                } else if (obj instanceof Long) {
                                    builder.putLong(this.metadataExtrasPrefix + str, ((Long) obj).longValue());
                                } else if (obj instanceof Integer) {
                                    builder.putLong(this.metadataExtrasPrefix + str, ((Integer) obj).intValue());
                                } else if (obj instanceof Bitmap) {
                                    builder.putBitmap(this.metadataExtrasPrefix + str, (Bitmap) obj);
                                } else if (obj instanceof RatingCompat) {
                                    builder.putRating(this.metadataExtrasPrefix + str, (RatingCompat) obj);
                                }
                            }
                        }
                        CharSequence title = description.getTitle();
                        if (title != null) {
                            String strValueOf = String.valueOf(title);
                            builder.putString(MediaItemMetadata.KEY_TITLE, strValueOf);
                            builder.putString("android.media.metadata.DISPLAY_TITLE", strValueOf);
                        }
                        CharSequence subtitle = description.getSubtitle();
                        if (subtitle != null) {
                            builder.putString("android.media.metadata.DISPLAY_SUBTITLE", String.valueOf(subtitle));
                        }
                        CharSequence description2 = description.getDescription();
                        if (description2 != null) {
                            builder.putString("android.media.metadata.DISPLAY_DESCRIPTION", String.valueOf(description2));
                        }
                        Bitmap iconBitmap = description.getIconBitmap();
                        if (iconBitmap != null) {
                            builder.putBitmap("android.media.metadata.DISPLAY_ICON", iconBitmap);
                        }
                        Uri iconUri = description.getIconUri();
                        if (iconUri != null) {
                            builder.putString("android.media.metadata.DISPLAY_ICON_URI", String.valueOf(iconUri));
                        }
                        String mediaId = description.getMediaId();
                        if (mediaId != null) {
                            builder.putString("android.media.metadata.MEDIA_ID", mediaId);
                        }
                        Uri mediaUri = description.getMediaUri();
                        if (mediaUri != null) {
                            builder.putString("android.media.metadata.MEDIA_URI", String.valueOf(mediaUri));
                        }
                    } else {
                        i++;
                    }
                }
            }
            return builder.build();
        }
    }

    public class ComponentListener extends MediaSessionCompat.Callback implements Player.Listener {
        private int currentMediaItemIndex;
        private int currentWindowCount;

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            super.onAudioAttributesChanged(audioAttributes);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onAudioSessionIdChanged(int i) {
            super.onAudioSessionIdChanged(i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            super.onAvailableCommandsChanged(commands);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onCues(CueGroup cueGroup) {
            super.onCues(cueGroup);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        @Deprecated
        public /* bridge */ /* synthetic */ void onCues(List list) {
            super.onCues((List<Cue>) list);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            super.onDeviceInfoChanged(deviceInfo);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
            super.onDeviceVolumeChanged(i, z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onIsLoadingChanged(boolean z) {
            super.onIsLoadingChanged(z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onIsPlayingChanged(boolean z) {
            super.onIsPlayingChanged(z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        @Deprecated
        public /* bridge */ /* synthetic */ void onLoadingChanged(boolean z) {
            super.onLoadingChanged(z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j) {
            super.onMaxSeekToPreviousPositionChanged(j);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
            super.onMediaItemTransition(mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            super.onMediaMetadataChanged(mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onMetadata(Metadata metadata) {
            super.onMetadata(metadata);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
            super.onPlayWhenReadyChanged(z, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            super.onPlaybackParametersChanged(playbackParameters);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onPlaybackStateChanged(int i) {
            super.onPlaybackStateChanged(i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
            super.onPlaybackSuppressionReasonChanged(i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            super.onPlayerError(playbackException);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            super.onPlayerErrorChanged(playbackException);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        @Deprecated
        public /* bridge */ /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
            super.onPlayerStateChanged(z, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            super.onPlaylistMetadataChanged(mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        @Deprecated
        public /* bridge */ /* synthetic */ void onPositionDiscontinuity(int i) {
            super.onPositionDiscontinuity(i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
            super.onPositionDiscontinuity(positionInfo, positionInfo2, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame() {
            super.onRenderedFirstFrame();
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onRepeatModeChanged(int i) {
            super.onRepeatModeChanged(i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onSeekBackIncrementChanged(long j) {
            super.onSeekBackIncrementChanged(j);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onSeekForwardIncrementChanged(long j) {
            super.onSeekForwardIncrementChanged(j);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        @Deprecated
        public /* bridge */ /* synthetic */ void onSeekProcessed() {
            super.onSeekProcessed();
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            super.onShuffleModeEnabledChanged(z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
            super.onSkipSilenceEnabledChanged(z);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
            super.onSurfaceSizeChanged(i, i2);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
            super.onTimelineChanged(timeline, i);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            super.onTrackSelectionParametersChanged(trackSelectionParameters);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onTracksChanged(Tracks tracks) {
            super.onTracksChanged(tracks);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            super.onVideoSizeChanged(videoSize);
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public /* bridge */ /* synthetic */ void onVolumeChanged(float f) {
            super.onVolumeChanged(f);
        }

        private ComponentListener() {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            boolean z;
            boolean z2;
            boolean z3 = true;
            if (events.contains(11)) {
                if (this.currentMediaItemIndex != player.getCurrentMediaItemIndex()) {
                    if (MediaSessionConnector.this.queueNavigator != null) {
                        MediaSessionConnector.this.queueNavigator.onCurrentMediaItemIndexChanged(player);
                    }
                    z = true;
                } else {
                    z = false;
                }
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
            if (events.contains(0)) {
                int windowCount = player.getCurrentTimeline().getWindowCount();
                int currentMediaItemIndex = player.getCurrentMediaItemIndex();
                if (MediaSessionConnector.this.queueNavigator != null) {
                    MediaSessionConnector.this.queueNavigator.onTimelineChanged(player);
                } else {
                    if (this.currentWindowCount != windowCount || this.currentMediaItemIndex != currentMediaItemIndex) {
                    }
                    this.currentWindowCount = windowCount;
                    z = true;
                }
                z2 = true;
                this.currentWindowCount = windowCount;
                z = true;
            }
            this.currentMediaItemIndex = player.getCurrentMediaItemIndex();
            if (events.containsAny(4, 5, 7, 8, 12)) {
                z2 = true;
            }
            if (events.containsAny(9)) {
                MediaSessionConnector.this.invalidateMediaSessionQueue();
            } else {
                z3 = z2;
            }
            if (z3) {
                MediaSessionConnector.this.invalidateMediaSessionPlaybackState();
            }
            if (z) {
                MediaSessionConnector.this.invalidateMediaSessionMetadata();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlay() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(4L)) {
                int playbackState = MediaSessionConnector.this.player.getPlaybackState();
                MediaSessionConnector mediaSessionConnector = MediaSessionConnector.this;
                if (playbackState == 1) {
                    PlaybackPreparer playbackPreparer = mediaSessionConnector.playbackPreparer;
                    MediaSessionConnector mediaSessionConnector2 = MediaSessionConnector.this;
                    if (playbackPreparer != null) {
                        mediaSessionConnector2.playbackPreparer.onPrepare(true);
                    } else {
                        mediaSessionConnector2.player.prepare();
                    }
                } else if (mediaSessionConnector.player.getPlaybackState() == 4) {
                    MediaSessionConnector mediaSessionConnector3 = MediaSessionConnector.this;
                    mediaSessionConnector3.seekTo(mediaSessionConnector3.player, MediaSessionConnector.this.player.getCurrentMediaItemIndex(), -9223372036854775807L);
                }
                ((Player) Assertions.checkNotNull(MediaSessionConnector.this.player)).play();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPause() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(2L)) {
                MediaSessionConnector.this.player.pause();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSeekTo(long j) {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(256L)) {
                MediaSessionConnector mediaSessionConnector = MediaSessionConnector.this;
                mediaSessionConnector.seekTo(mediaSessionConnector.player, MediaSessionConnector.this.player.getCurrentMediaItemIndex(), j);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onFastForward() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(64L)) {
                MediaSessionConnector.this.player.seekForward();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onRewind() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(8L)) {
                MediaSessionConnector.this.player.seekBack();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onStop() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(1L)) {
                MediaSessionConnector.this.player.stop();
                if (MediaSessionConnector.this.clearMediaItemsOnStop) {
                    MediaSessionConnector.this.player.clearMediaItems();
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetShuffleMode(int i) {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(2097152L)) {
                boolean z = true;
                if (i != 1 && i != 2) {
                    z = false;
                }
                MediaSessionConnector.this.player.setShuffleModeEnabled(z);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRepeatMode(int i) {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(MediaStatus.COMMAND_STREAM_TRANSFER)) {
                int i2 = 1;
                if (i != 1) {
                    i2 = 2;
                    if (i != 2 && i != 3) {
                        i2 = 0;
                    }
                }
                MediaSessionConnector.this.player.setRepeatMode(i2);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetPlaybackSpeed(float f) {
            if (!MediaSessionConnector.this.canDispatchPlaybackAction(4194304L) || f <= 0.0f) {
                return;
            }
            MediaSessionConnector.this.player.setPlaybackParameters(MediaSessionConnector.this.player.getPlaybackParameters().withSpeed(f));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToNext() {
            if (MediaSessionConnector.this.canDispatchToQueueNavigator(32L)) {
                MediaSessionConnector.this.queueNavigator.onSkipToNext(MediaSessionConnector.this.player);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToPrevious() {
            if (MediaSessionConnector.this.canDispatchToQueueNavigator(16L)) {
                MediaSessionConnector.this.queueNavigator.onSkipToPrevious(MediaSessionConnector.this.player);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToQueueItem(long j) {
            if (MediaSessionConnector.this.canDispatchToQueueNavigator(MediaStatus.COMMAND_EDIT_TRACKS)) {
                MediaSessionConnector.this.queueNavigator.onSkipToQueueItem(MediaSessionConnector.this.player, j);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onCustomAction(String str, Bundle bundle) {
            if (MediaSessionConnector.this.player == null || !MediaSessionConnector.this.customActionMap.containsKey(str)) {
                return;
            }
            ((CustomActionProvider) MediaSessionConnector.this.customActionMap.get(str)).onCustomAction(MediaSessionConnector.this.player, str, bundle);
            MediaSessionConnector.this.invalidateMediaSessionPlaybackState();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            if (MediaSessionConnector.this.player != null) {
                for (int i = 0; i < MediaSessionConnector.this.commandReceivers.size(); i++) {
                    if (((CommandReceiver) MediaSessionConnector.this.commandReceivers.get(i)).onCommand(MediaSessionConnector.this.player, str, bundle, resultReceiver)) {
                        return;
                    }
                }
                for (int i2 = 0; i2 < MediaSessionConnector.this.customCommandReceivers.size() && !((CommandReceiver) MediaSessionConnector.this.customCommandReceivers.get(i2)).onCommand(MediaSessionConnector.this.player, str, bundle, resultReceiver); i2++) {
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepare() {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(16384L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepare(false);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromMediaId(String str, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(MediaStatus.COMMAND_DISLIKE)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromMediaId(str, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromSearch(String str, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(MediaStatus.COMMAND_FOLLOW)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromSearch(str, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromUri(Uri uri, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(MediaStatus.COMMAND_UNFOLLOW)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromUri(uri, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(1024L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromMediaId(str, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(MediaStatus.COMMAND_QUEUE_REPEAT_ONE)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromSearch(str, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromUri(Uri uri, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(MediaStatus.COMMAND_PLAYBACK_RATE)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromUri(uri, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRating(RatingCompat ratingCompat) {
            if (MediaSessionConnector.this.canDispatchSetRating()) {
                MediaSessionConnector.this.ratingCallback.onSetRating(MediaSessionConnector.this.player, ratingCompat);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchSetRating()) {
                MediaSessionConnector.this.ratingCallback.onSetRating(MediaSessionConnector.this.player, ratingCompat, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            if (MediaSessionConnector.this.canDispatchQueueEdit()) {
                MediaSessionConnector.this.queueEditor.onAddQueueItem(MediaSessionConnector.this.player, mediaDescriptionCompat);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (MediaSessionConnector.this.canDispatchQueueEdit()) {
                MediaSessionConnector.this.queueEditor.onAddQueueItem(MediaSessionConnector.this.player, mediaDescriptionCompat, i);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            if (MediaSessionConnector.this.canDispatchQueueEdit()) {
                MediaSessionConnector.this.queueEditor.onRemoveQueueItem(MediaSessionConnector.this.player, mediaDescriptionCompat);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetCaptioningEnabled(boolean z) {
            if (MediaSessionConnector.this.canDispatchSetCaptioningEnabled()) {
                MediaSessionConnector.this.captionCallback.onSetCaptioningEnabled(MediaSessionConnector.this.player, z);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            return (MediaSessionConnector.this.canDispatchMediaButtonEvent() && MediaSessionConnector.this.mediaButtonEventHandler.onMediaButtonEvent(MediaSessionConnector.this.player, intent)) || super.onMediaButtonEvent(intent);
        }
    }
}
