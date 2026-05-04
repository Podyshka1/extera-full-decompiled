package com.exteragram.messenger.nowplaying.p013ui.components;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.api.dto.NowPlayingDTO;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.nowplaying.ServiceEmoji;
import com.exteragram.messenger.utils.p017ui.UIUtil;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.video.VideoSize;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.PlayPauseDrawable;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.LaunchActivity;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes.dex */
public abstract class NowPlayingCard extends FrameLayout {
    private final TextView albumView;
    private final TextView artistView;
    private final AudioManager.OnAudioFocusChangeListener audioFocusChangeListener;
    private AudioFocusRequest audioFocusRequest;
    private final AudioManager audioManager;
    private final FrameLayout cardLayout;
    private long currentDocId;
    private String currentPreviewUrl;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
    private final BackupImageView imageView;
    private boolean isPlaying;
    private final TextView nameView;
    private NowPlayingCardData nowPlayingCardData;
    private final ImageView playPauseButton;
    private PlayPauseDrawable playPauseDrawable;
    private ExoPlayer player;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean resumeOnFocusGain;

    protected abstract void onSavedMusicClick();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NowPlayingCard(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.resourcesProvider = resourcesProvider;
        Object systemService = context.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.audioManager = (AudioManager) systemService;
        this.audioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$$ExternalSyntheticLambda3
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
                NowPlayingCard.audioFocusChangeListener$lambda$0(this.f$0, i);
            }
        };
        this.currentDocId = -1L;
        setClickable(false);
        setWillNotDraw(false);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard.1
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                Integer accentColor;
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                if (this.nowPlayingCardData != null) {
                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
                    NowPlayingCardData nowPlayingCardData = this.nowPlayingCardData;
                    NowPlayingCardData nowPlayingCardData2 = null;
                    if (nowPlayingCardData == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("nowPlayingCardData");
                        nowPlayingCardData = null;
                    }
                    if (nowPlayingCardData.getAccentColor() == null) {
                        accentColor = Integer.valueOf(this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                    } else {
                        NowPlayingCardData nowPlayingCardData3 = this.nowPlayingCardData;
                        if (nowPlayingCardData3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("nowPlayingCardData");
                            nowPlayingCardData3 = null;
                        }
                        accentColor = nowPlayingCardData3.getAccentColor();
                    }
                    swapAnimatedEmojiDrawable.setColor(accentColor);
                    UIUtil uIUtil = UIUtil.INSTANCE;
                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emoji;
                    float width = getWidth();
                    float height = getHeight();
                    NowPlayingCardData nowPlayingCardData4 = this.nowPlayingCardData;
                    if (nowPlayingCardData4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("nowPlayingCardData");
                    } else {
                        nowPlayingCardData2 = nowPlayingCardData4;
                    }
                    canvas2 = canvas;
                    uIUtil.drawNowPlayingPattern(canvas2, swapAnimatedEmojiDrawable2, width, height, nowPlayingCardData2.getCoverBitmap() == null ? 0.4f : 1.0f);
                } else {
                    canvas2 = canvas;
                }
                super.dispatchDraw(canvas2);
            }
        };
        GradientDrawable gradientDrawable = new GradientDrawable() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$2$drawable$1
            @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
            protected void onBoundsChange(Rect r) {
                Intrinsics.checkNotNullParameter(r, "r");
                super.onBoundsChange(r);
                setGradientRadius(r.width() * 2.0f);
            }
        };
        gradientDrawable.setCornerRadius(AndroidUtilities.dpf2(16.0f));
        frameLayout.setBackground(gradientDrawable);
        frameLayout.setClickable(true);
        ScaleStateListAnimator.apply(frameLayout, 0.035f, 1.5f);
        this.cardLayout = frameLayout;
        addView(frameLayout, LayoutHelper.createFrame(-1, -2.0f));
        this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(frameLayout, false, AndroidUtilities.m1124dp(20.0f), 13);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        frameLayout.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 119, 12, 12, 12, 12));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(8.0f));
        backupImageView.setClipToOutline(true);
        backupImageView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$3$1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(outline, "outline");
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), AndroidUtilities.dpf2(8.0f));
            }
        });
        this.imageView = backupImageView;
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(68, 68, 51, 0, 0, 12, 0));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(0, -2, 1.0f, 16));
        TextView textView = new TextView(context);
        textView.setGravity(3);
        textView.setTextColor(-1);
        textView.setTextSize(1, 16.0f);
        textView.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setTypeface(AndroidUtilities.bold());
        NotificationCenter.listenEmojiLoading(textView);
        this.nameView = textView;
        linearLayout2.addView(textView, LayoutHelper.createLinear(-1, -2));
        TextView textView2 = new TextView(context);
        textView2.setGravity(3);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        textView2.setTextSize(1, 14.0f);
        textView2.setSingleLine(true);
        textView2.setEllipsize(truncateAt);
        textView2.setTextColor(-1);
        textView2.setAlpha(0.6f);
        NotificationCenter.listenEmojiLoading(textView2);
        this.artistView = textView2;
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2, 0.0f, 2.0f, 0.0f, 0.0f));
        TextView textView3 = new TextView(context);
        textView3.setGravity(3);
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        textView3.setTextSize(1, 14.0f);
        textView3.setSingleLine(true);
        textView3.setEllipsize(truncateAt);
        textView3.setTextColor(-1);
        textView3.setAlpha(0.6f);
        NotificationCenter.listenEmojiLoading(textView3);
        this.albumView = textView3;
        linearLayout2.addView(textView3, LayoutHelper.createLinear(-1, -2, 0.0f, 2.0f, 0.0f, 0.0f));
        PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(16);
        playPauseDrawable.setPause(false);
        playPauseDrawable.setColor(-1);
        this.playPauseDrawable = playPauseDrawable;
        ImageView imageView = new ImageView(context);
        ScaleStateListAnimator.apply(imageView);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageDrawable(this.playPauseDrawable);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.togglePlayPause();
            }
        });
        this.playPauseButton = imageView;
        linearLayout.addView(imageView, LayoutHelper.createLinear(32, 32, 16, 8, 0, 8, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void audioFocusChangeListener$lambda$0(NowPlayingCard nowPlayingCard, int i) {
        if (i == -3 || i == -2) {
            ExoPlayer exoPlayer = nowPlayingCard.player;
            if (exoPlayer == null || !exoPlayer.isPlaying()) {
                return;
            }
            nowPlayingCard.resumeOnFocusGain = true;
            ExoPlayer exoPlayer2 = nowPlayingCard.player;
            if (exoPlayer2 != null) {
                exoPlayer2.pause();
                return;
            }
            return;
        }
        if (i == -1) {
            nowPlayingCard.resumeOnFocusGain = false;
            ExoPlayer exoPlayer3 = nowPlayingCard.player;
            if (exoPlayer3 != null) {
                exoPlayer3.pause();
                return;
            }
            return;
        }
        if (i == 1 && nowPlayingCard.resumeOnFocusGain) {
            ExoPlayer exoPlayer4 = nowPlayingCard.player;
            if (exoPlayer4 != null) {
                exoPlayer4.play();
            }
            nowPlayingCard.resumeOnFocusGain = false;
        }
    }

    public final void set(final NowPlayingCardData cardData) {
        Intrinsics.checkNotNullParameter(cardData, "cardData");
        this.nowPlayingCardData = cardData;
        final NowPlayingDTO nowPlayingDTO = cardData.getNowPlayingDTO();
        List<String> artists = nowPlayingDTO.getArtists();
        BitmapDrawable bitmapDrawable = null;
        this.artistView.setText((CharSequence) null);
        this.nameView.setText((CharSequence) null);
        this.albumView.setText((CharSequence) null);
        List<String> list = artists;
        if (list == null || list.isEmpty()) {
            this.artistView.setText(LocaleController.getString(C2888R.string.AudioUnknownArtist));
        } else {
            this.artistView.setText(CollectionsKt.joinToString$default(artists, ", ", null, null, 0, null, null, 62, null));
        }
        this.nameView.setText(Emoji.replaceEmoji(nowPlayingDTO.getTrackName(), this.nameView.getPaint().getFontMetricsInt(), false));
        TextView textView = this.albumView;
        String albumName = nowPlayingDTO.getAlbumName();
        textView.setVisibility(albumName != null && albumName.length() != 0 && !Intrinsics.areEqual(nowPlayingDTO.getTrackName(), nowPlayingDTO.getAlbumName()) ? 0 : 8);
        if (this.albumView.getVisibility() == 0) {
            this.albumView.setText(Emoji.replaceEmoji(nowPlayingDTO.getAlbumName(), this.albumView.getPaint().getFontMetricsInt(), false));
        }
        setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
        Drawable background = this.cardLayout.getBackground();
        if (background instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) background;
            gradientDrawable.mutate();
            gradientDrawable.setDither(true);
            gradientDrawable.setGradientType(1);
            gradientDrawable.setGradientCenter(1.0f, 0.5f);
            Integer backgroundColor = cardData.getBackgroundColor();
            int iIntValue = backgroundColor != null ? backgroundColor.intValue() : getThemedColor(Theme.key_windowBackgroundWhite);
            gradientDrawable.setColors(new int[]{iIntValue, cardData.getBackgroundColor() != null ? UIUtil.adjustHsl$default(UIUtil.INSTANCE, iIntValue, 1.5f, 0.0f, 4, null) : iIntValue});
        }
        ImageView imageView = this.playPauseButton;
        String previewUrl = nowPlayingDTO.getPreviewUrl();
        imageView.setVisibility(previewUrl != null && previewUrl.length() != 0 && !Intrinsics.areEqual(nowPlayingDTO.getPlatform(), "TELEGRAM") ? 0 : 8);
        ImageView imageView2 = this.playPauseButton;
        int iM1124dp = AndroidUtilities.m1124dp(32.0f);
        NowPlayingCardData nowPlayingCardData = this.nowPlayingCardData;
        if (nowPlayingCardData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nowPlayingCardData");
            nowPlayingCardData = null;
        }
        Integer accentColor = nowPlayingCardData.getAccentColor();
        imageView2.setBackground(Theme.createCircleDrawable(iM1124dp, accentColor != null ? accentColor.intValue() : getThemedColor(Theme.key_featuredStickers_addButton)));
        long documentId = (cardData.getUserEmoji() <= 0 || !Intrinsics.areEqual(nowPlayingDTO.getPlatform(), "TELEGRAM")) ? ServiceEmoji.Companion.fromString(nowPlayingDTO.getPlatform()).getDocumentId() : cardData.getUserEmoji();
        if (documentId != this.currentDocId) {
            this.currentDocId = documentId;
            this.emoji.set(documentId, true);
        }
        final FrameLayout frameLayout = this.cardLayout;
        final boolean zHasBadge$default = BadgesController.hasBadge$default(BadgesController.INSTANCE, null, 1, null);
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NowPlayingCard.set$lambda$1$0(nowPlayingDTO, this, zHasBadge$default, frameLayout, cardData, view);
            }
        });
        frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return NowPlayingCard.set$lambda$1$1(nowPlayingDTO, this, frameLayout, cardData, view);
            }
        });
        if (cardData.getImageLocation() != null) {
            Bitmap coverBitmap = cardData.getCoverBitmap();
            if (coverBitmap != null) {
                Resources resources = getContext().getResources();
                Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
                bitmapDrawable = new BitmapDrawable(resources, coverBitmap);
            }
            this.imageView.setImage(cardData.getImageLocation(), (String) null, bitmapDrawable, 0, (Object) null);
            if (cardData.getCoverBitmap() != null) {
                this.artistView.setTextColor(-1);
                this.nameView.setTextColor(-1);
                this.albumView.setTextColor(-1);
            } else {
                int themedColor = getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
                this.artistView.setTextColor(themedColor);
                this.nameView.setTextColor(themedColor);
                this.albumView.setTextColor(themedColor);
            }
        } else {
            this.imageView.setImageResource(C2888R.drawable.nocover, getThemedColor(Theme.key_player_button));
            int themedColor2 = getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
            this.artistView.setTextColor(themedColor2);
            this.nameView.setTextColor(themedColor2);
            this.albumView.setTextColor(themedColor2);
        }
        String previewUrl2 = cardData.getNowPlayingDTO().getPreviewUrl();
        if (!Intrinsics.areEqual(previewUrl2, this.currentPreviewUrl)) {
            this.currentPreviewUrl = previewUrl2;
            initializePlayer();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void set$lambda$1$0(NowPlayingDTO nowPlayingDTO, NowPlayingCard nowPlayingCard, boolean z, FrameLayout frameLayout, NowPlayingCardData nowPlayingCardData, View view) {
        if (Intrinsics.areEqual(nowPlayingDTO.getPlatform(), "TELEGRAM")) {
            nowPlayingCard.onSavedMusicClick();
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (z) {
            Browser.openUrl(frameLayout.getContext(), nowPlayingCardData.getNowPlayingDTO().getSongUrl());
        } else if (safeLastFragment != null) {
            SupporterBottomSheet.showAlert(safeLastFragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean set$lambda$1$1(NowPlayingDTO nowPlayingDTO, NowPlayingCard nowPlayingCard, FrameLayout frameLayout, NowPlayingCardData nowPlayingCardData, View view) {
        if (Intrinsics.areEqual(nowPlayingDTO.getPlatform(), "TELEGRAM")) {
            nowPlayingCard.onSavedMusicClick();
            return true;
        }
        Browser.openUrl(frameLayout.getContext(), nowPlayingCardData.getNowPlayingDTO().getSongUrl());
        return true;
    }

    private final void initializePlayer() {
        releasePlayer();
        NowPlayingCardData nowPlayingCardData = this.nowPlayingCardData;
        if (nowPlayingCardData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nowPlayingCardData");
            nowPlayingCardData = null;
        }
        String previewUrl = nowPlayingCardData.getNowPlayingDTO().getPreviewUrl();
        if (previewUrl == null) {
            return;
        }
        ExoPlayer exoPlayerBuild = new ExoPlayer.Builder(getContext()).build();
        exoPlayerBuild.setMediaSource(new ProgressiveMediaSource.Factory(new DefaultDataSource.Factory(getContext())).createMediaSource(MediaItem.fromUri(Uri.parse(previewUrl))));
        exoPlayerBuild.prepare();
        exoPlayerBuild.addListener(new Player.Listener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$initializePlayer$1$1
            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                Player.Listener.CC.$default$onAudioAttributesChanged(this, audioAttributes);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
                Player.Listener.CC.$default$onAvailableCommandsChanged(this, commands);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onCues(CueGroup cueGroup) {
                Player.Listener.CC.$default$onCues(this, cueGroup);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onCues(List list) {
                Player.Listener.CC.$default$onCues(this, list);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                Player.Listener.CC.$default$onDeviceInfoChanged(this, deviceInfo);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
                Player.Listener.CC.$default$onDeviceVolumeChanged(this, i, z);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onEvents(Player player, Player.Events events) {
                Player.Listener.CC.$default$onEvents(this, player, events);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onIsLoadingChanged(boolean z) {
                Player.Listener.CC.$default$onIsLoadingChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onLoadingChanged(boolean z) {
                Player.Listener.CC.$default$onLoadingChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
                Player.Listener.CC.$default$onMediaItemTransition(this, mediaItem, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                Player.Listener.CC.$default$onMediaMetadataChanged(this, mediaMetadata);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onMetadata(Metadata metadata) {
                Player.Listener.CC.$default$onMetadata(this, metadata);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
                Player.Listener.CC.$default$onPlayWhenReadyChanged(this, z, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                Player.Listener.CC.$default$onPlaybackParametersChanged(this, playbackParameters);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
                Player.Listener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
                Player.Listener.CC.$default$onPlayerError(this, playbackException);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
                Player.Listener.CC.$default$onPlayerErrorChanged(this, playbackException);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
                Player.Listener.CC.$default$onPlayerStateChanged(this, z, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onPositionDiscontinuity(int i) {
                Player.Listener.CC.$default$onPositionDiscontinuity(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
                Player.Listener.CC.$default$onPositionDiscontinuity(this, positionInfo, positionInfo2, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onRenderedFirstFrame() {
                Player.Listener.CC.$default$onRenderedFirstFrame(this);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onRepeatModeChanged(int i) {
                Player.Listener.CC.$default$onRepeatModeChanged(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onSeekProcessed() {
                Player.Listener.CC.$default$onSeekProcessed(this);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
                Player.Listener.CC.$default$onShuffleModeEnabledChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
                Player.Listener.CC.$default$onSkipSilenceEnabledChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
                Player.Listener.CC.$default$onSurfaceSizeChanged(this, i, i2);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
                Player.Listener.CC.$default$onTimelineChanged(this, timeline, i);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onTracksChanged(Tracks tracks) {
                Player.Listener.CC.$default$onTracksChanged(this, tracks);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
                Player.Listener.CC.$default$onVideoSizeChanged(this, videoSize);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public /* synthetic */ void onVolumeChanged(float f) {
                Player.Listener.CC.$default$onVolumeChanged(this, f);
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public void onIsPlayingChanged(boolean z) {
                this.this$0.isPlaying = z;
                this.this$0.updatePlayPauseButton();
                if (z) {
                    return;
                }
                this.this$0.abandonAudioFocus();
            }

            @Override // com.google.android.exoplayer2.Player.Listener
            public void onPlaybackStateChanged(int i) {
                if (i == 4) {
                    this.this$0.abandonAudioFocus();
                }
            }
        });
        this.player = exoPlayerBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void togglePlayPause() {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return;
        }
        if (exoPlayer.isPlaying()) {
            exoPlayer.pause();
            abandonAudioFocus();
        } else if (requestAudioFocus()) {
            if (exoPlayer.getPlaybackState() == 4) {
                exoPlayer.seekTo(0L);
            }
            exoPlayer.play();
        }
    }

    private final boolean requestAudioFocus() {
        if (Build.VERSION.SDK_INT < 26) {
            return this.audioManager.requestAudioFocus(this.audioFocusChangeListener, 3, 2) == 1;
        }
        AudioFocusRequest audioFocusRequestBuild = NowPlayingCard$$ExternalSyntheticApiModelOutline0.m247m(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).build()).setOnAudioFocusChangeListener(this.audioFocusChangeListener).build();
        this.audioFocusRequest = audioFocusRequestBuild;
        AudioManager audioManager = this.audioManager;
        Intrinsics.checkNotNull(audioFocusRequestBuild);
        return audioManager.requestAudioFocus(audioFocusRequestBuild) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void abandonAudioFocus() {
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
            if (audioFocusRequest != null) {
                this.audioManager.abandonAudioFocusRequest(audioFocusRequest);
                this.audioFocusRequest = null;
                return;
            }
            return;
        }
        this.audioManager.abandonAudioFocus(this.audioFocusChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePlayPauseButton() {
        this.playPauseDrawable.setPause(this.isPlaying);
    }

    private final void releasePlayer() {
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.release();
        }
        this.player = null;
        this.isPlaying = false;
        updatePlayPauseButton();
        abandonAudioFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.emoji.attach();
        if (this.player != null || this.nowPlayingCardData == null) {
            return;
        }
        initializePlayer();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.emoji.detach();
        releasePlayer();
    }
}
