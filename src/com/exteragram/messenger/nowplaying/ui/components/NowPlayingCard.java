package com.exteragram.messenger.nowplaying.ui.components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.audio.AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline0;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.NowPlayingDTO;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.nowplaying.ServiceEmoji;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.ui.UIUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.ViewOutlineProviderImpl;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.PlayPauseDrawable;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.LaunchActivity;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\b\u0017\u0018\u0000 72\u00020\u0001:\u00017B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010&\u001a\u00020'H\u0002J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0010J\b\u0010+\u001a\u00020)H\u0002J\b\u0010,\u001a\u00020)H\u0002J\b\u0010-\u001a\u00020\u0016H\u0002J\b\u0010.\u001a\u00020)H\u0002J\b\u0010/\u001a\u00020)H\u0002J\b\u00100\u001a\u00020)H\u0002J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u000202H\u0002J\b\u00104\u001a\u00020)H\u0014J\b\u00105\u001a\u00020)H\u0014J\b\u00106\u001a\u00020)H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "imageView", "Lorg/telegram/ui/Components/BackupImageView;", "nameView", "Lorg/telegram/ui/ActionBar/SimpleTextView;", "artistView", "albumView", "cardLayout", "nowPlayingCardData", "Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;", "playPauseButton", "Landroid/widget/ImageView;", "playPauseDrawable", "Lorg/telegram/ui/Components/PlayPauseDrawable;", "isPlaying", _UrlKt.FRAGMENT_ENCODE_SET, "player", "Landroidx/media3/exoplayer/ExoPlayer;", "audioManager", "Landroid/media/AudioManager;", "audioFocusRequest", "Landroid/media/AudioFocusRequest;", "resumeOnFocusGain", "audioFocusChangeListener", "Landroid/media/AudioManager$OnAudioFocusChangeListener;", "emoji", "Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;", "currentDocId", _UrlKt.FRAGMENT_ENCODE_SET, "currentPreviewUrl", _UrlKt.FRAGMENT_ENCODE_SET, "getCoverCornerRadius", _UrlKt.FRAGMENT_ENCODE_SET, "set", _UrlKt.FRAGMENT_ENCODE_SET, "cardData", "initializePlayer", "togglePlayPause", "requestAudioFocus", "abandonAudioFocus", "updatePlayPauseButton", "releasePlayer", "getThemedColor", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, "onAttachedToWindow", "onDetachedFromWindow", "onSavedMusicClick", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension({"SMAP\nNowPlayingCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NowPlayingCard.kt\ncom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,473:1\n257#2,2:474\n255#2:476\n257#2,2:477\n27#3:479\n29#4:480\n*S KotlinDebug\n*F\n+ 1 NowPlayingCard.kt\ncom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard\n*L\n261#1:474,2\n263#1:476\n290#1:477,2\n329#1:479\n370#1:480\n*E\n"})
public abstract class NowPlayingCard extends FrameLayout {
    private static final Companion Companion = new Companion(null);
    private final SimpleTextView albumView;
    private final SimpleTextView artistView;
    private final AudioManager.OnAudioFocusChangeListener audioFocusChangeListener;
    private AudioFocusRequest audioFocusRequest;
    private final AudioManager audioManager;
    private final FrameLayout cardLayout;
    private long currentDocId;
    private String currentPreviewUrl;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
    private final BackupImageView imageView;
    private boolean isPlaying;
    private final SimpleTextView nameView;
    private NowPlayingCardData nowPlayingCardData;
    private final ImageView playPauseButton;
    private PlayPauseDrawable playPauseDrawable;
    private ExoPlayer player;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean resumeOnFocusGain;

    public abstract void onSavedMusicClick();

    public NowPlayingCard(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        this.audioManager = (AudioManager) context.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        this.audioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$$ExternalSyntheticLambda2
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
                NowPlayingCard.m2697$r8$lambda$s9QIjAj9D55Esk_1M7EGE0vK2g(this.f$0, i);
            }
        };
        this.currentDocId = -1L;
        setClickable(false);
        setWillNotDraw(false);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard.1
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                Integer accentColor;
                if (this.nowPlayingCardData != null) {
                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
                    NowPlayingCardData nowPlayingCardData = this.nowPlayingCardData;
                    if (nowPlayingCardData == null) {
                        nowPlayingCardData = null;
                    }
                    Integer accentColor2 = nowPlayingCardData.getAccentColor();
                    NowPlayingCard nowPlayingCard = this;
                    if (accentColor2 == null) {
                        accentColor = Integer.valueOf(nowPlayingCard.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                    } else {
                        NowPlayingCardData nowPlayingCardData2 = nowPlayingCard.nowPlayingCardData;
                        if (nowPlayingCardData2 == null) {
                            nowPlayingCardData2 = null;
                        }
                        accentColor = nowPlayingCardData2.getAccentColor();
                    }
                    swapAnimatedEmojiDrawable.setColor(accentColor);
                    UIUtil uIUtil = UIUtil.INSTANCE;
                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emoji;
                    float width = getWidth();
                    float height = getHeight();
                    NowPlayingCardData nowPlayingCardData3 = this.nowPlayingCardData;
                    canvas2 = canvas;
                    uIUtil.drawNowPlayingPattern(canvas2, swapAnimatedEmojiDrawable2, width, height, (nowPlayingCardData3 != null ? nowPlayingCardData3 : null).getCoverBitmap() == null ? 0.4f : 1.0f);
                } else {
                    canvas2 = canvas;
                }
                super.dispatchDraw(canvas2);
            }
        };
        GradientDrawable gradientDrawable = new GradientDrawable() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$2$drawable$1
            @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
            public void onBoundsChange(Rect r) {
                super.onBoundsChange(r);
                setGradientRadius(r.width() * 2.0f);
            }
        };
        gradientDrawable.setCornerRadius(AndroidUtilities.dpf2(ExteraConfig.getSectionRadiusDp()));
        frameLayout.setBackground(gradientDrawable);
        frameLayout.setClipToOutline(true);
        frameLayout.setOutlineProvider(ViewOutlineProviderImpl.fromDrawable(gradientDrawable));
        frameLayout.setClickable(true);
        ScaleStateListAnimator.apply(frameLayout, 0.035f, 1.5f);
        this.cardLayout = frameLayout;
        addView(frameLayout, LayoutHelper.createFrame(-1, -2.0f));
        this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(frameLayout, false, AndroidUtilities.dp(20.0f), 13);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        frameLayout.addView(linearLayout, LayoutHelper.createLinear(-1, -2, 119, 12, 12, 12, 12));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setClipToOutline(true);
        backupImageView.setOutlineProvider(ViewOutlineProviderImpl.boundsWithRoundRect(getCoverCornerRadius()));
        this.imageView = backupImageView;
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(64, 64, 19, 0, 0, 12, 0));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(0, -2, 1.0f, 16));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setGravity(19);
        simpleTextView.setTextColor(-1);
        simpleTextView.setTextSize(16);
        simpleTextView.setTypeface(AndroidUtilities.bold());
        NotificationCenter.listenEmojiLoading(simpleTextView);
        this.nameView = simpleTextView;
        linearLayout2.addView(simpleTextView, LayoutHelper.createLinear(-1, 22));
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        simpleTextView2.setGravity(19);
        simpleTextView2.setTypeface(AndroidUtilities.regular());
        simpleTextView2.setTextSize(14);
        simpleTextView2.setTextColor(-1);
        simpleTextView2.setAlpha(0.6f);
        NotificationCenter.listenEmojiLoading(simpleTextView2);
        this.artistView = simpleTextView2;
        linearLayout2.addView(simpleTextView2, LayoutHelper.createLinear(-1, 19, 0.0f, 2.0f, 0.0f, 0.0f));
        SimpleTextView simpleTextView3 = new SimpleTextView(context);
        simpleTextView3.setGravity(19);
        simpleTextView3.setTypeface(AndroidUtilities.regular());
        simpleTextView3.setTextSize(14);
        simpleTextView3.setTextColor(-1);
        simpleTextView3.setAlpha(0.6f);
        NotificationCenter.listenEmojiLoading(simpleTextView3);
        this.albumView = simpleTextView3;
        linearLayout2.addView(simpleTextView3, LayoutHelper.createLinear(-1, 19, 0.0f, 2.0f, 0.0f, 0.0f));
        PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(16);
        playPauseDrawable.setPause(false);
        playPauseDrawable.setColor(-1);
        this.playPauseDrawable = playPauseDrawable;
        ImageView imageView = new ImageView(context);
        ScaleStateListAnimator.apply(imageView);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageDrawable(this.playPauseDrawable);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.togglePlayPause();
            }
        });
        this.playPauseButton = imageView;
        linearLayout.addView(imageView, LayoutHelper.createLinear(32, 32, 16, 8, 0, 8, 0));
    }

    /* JADX INFO: renamed from: $r8$lambda$s9QIjAj9D55Esk_1M7EGE-0vK2g, reason: not valid java name */
    public static void m2697$r8$lambda$s9QIjAj9D55Esk_1M7EGE0vK2g(NowPlayingCard nowPlayingCard, int i) {
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

    private final float getCoverCornerRadius() {
        return AndroidUtilities.dpf2(RangesKt.coerceAtLeast(ExteraConfig.getSectionRadiusDp() - 12, 8));
    }

    public final void set(final NowPlayingCardData cardData) {
        this.nowPlayingCardData = cardData;
        final NowPlayingDTO nowPlayingDTO = cardData.getNowPlayingDTO();
        List<String> artists = nowPlayingDTO.getArtists();
        this.artistView.setText(null);
        this.nameView.setText(null);
        this.albumView.setText(null);
        List<String> list = artists;
        if (list == null || list.isEmpty()) {
            this.artistView.setText(LocaleController.getString(C2807R.string.AudioUnknownArtist));
        } else {
            this.artistView.setText(CollectionsKt.joinToString$default(artists, ", ", null, null, 0, null, null, 62, null));
        }
        this.nameView.setText(Emoji.replaceEmoji(nowPlayingDTO.getTrackName(), this.nameView.getPaint().getFontMetricsInt(), false));
        SimpleTextView simpleTextView = this.albumView;
        String albumName = nowPlayingDTO.getAlbumName();
        simpleTextView.setVisibility(albumName != null && albumName.length() != 0 && !Intrinsics.areEqual(nowPlayingDTO.getTrackName(), nowPlayingDTO.getAlbumName()) ? 0 : 8);
        if (this.albumView.getVisibility() == 0) {
            this.albumView.setText(Emoji.replaceEmoji(nowPlayingDTO.getAlbumName(), this.albumView.getPaint().getFontMetricsInt(), false));
        }
        setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
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
        int iDp = AndroidUtilities.dp(32.0f);
        NowPlayingCardData nowPlayingCardData = this.nowPlayingCardData;
        if (nowPlayingCardData == null) {
            nowPlayingCardData = null;
        }
        Integer accentColor = nowPlayingCardData.getAccentColor();
        imageView2.setBackground(Theme.createCircleDrawable(iDp, accentColor != null ? accentColor.intValue() : getThemedColor(Theme.key_featuredStickers_addButton)));
        long documentId = (cardData.getUserEmoji() <= 0 || !Intrinsics.areEqual(nowPlayingDTO.getPlatform(), "TELEGRAM")) ? ServiceEmoji.INSTANCE.fromString(nowPlayingDTO.getPlatform()).getDocumentId() : cardData.getUserEmoji();
        if (documentId != this.currentDocId) {
            this.currentDocId = documentId;
            this.emoji.set(documentId, true);
        }
        final FrameLayout frameLayout = this.cardLayout;
        final boolean zHasBadge$default = BadgesController.hasBadge$default(BadgesController.INSTANCE, null, 1, null);
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NowPlayingCard.$r8$lambda$Hrhdg_VFnUTPkcpH4kxy4QConTU(nowPlayingDTO, this, zHasBadge$default, frameLayout, cardData, view);
            }
        });
        frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.nowplaying.ui.components.NowPlayingCard$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return NowPlayingCard.$r8$lambda$1BAf14SAIk8s4HkHdGaX6glplHA(nowPlayingDTO, this, frameLayout, cardData, view);
            }
        });
        if (cardData.getImageLocation() != null) {
            Bitmap coverBitmap = cardData.getCoverBitmap();
            this.imageView.setImage(cardData.getImageLocation(), (String) null, coverBitmap != null ? new BitmapDrawable(getContext().getResources(), coverBitmap) : null, 0, (Object) null);
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
            this.imageView.setImageResource(C2807R.drawable.nocover, getThemedColor(Theme.key_player_button));
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

    public static void $r8$lambda$Hrhdg_VFnUTPkcpH4kxy4QConTU(NowPlayingDTO nowPlayingDTO, NowPlayingCard nowPlayingCard, boolean z, FrameLayout frameLayout, NowPlayingCardData nowPlayingCardData, View view) {
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

    public static boolean $r8$lambda$1BAf14SAIk8s4HkHdGaX6glplHA(NowPlayingDTO nowPlayingDTO, NowPlayingCard nowPlayingCard, FrameLayout frameLayout, NowPlayingCardData nowPlayingCardData, View view) {
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
            @Override // androidx.media3.common.Player.Listener
            public void onIsPlayingChanged(boolean isPlaying) {
                this.this$0.isPlaying = isPlaying;
                this.this$0.updatePlayPauseButton();
                if (isPlaying) {
                    return;
                }
                this.this$0.abandonAudioFocus();
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackStateChanged(int playbackState) {
                if (playbackState == 4) {
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
        AudioFocusRequest audioFocusRequestBuild = AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline0.m157m(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).build()).setOnAudioFocusChangeListener(this.audioFocusChangeListener).build();
        this.audioFocusRequest = audioFocusRequestBuild;
        return this.audioManager.requestAudioFocus(audioFocusRequestBuild) == 1;
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
    public final int getThemedColor(int key) {
        return Theme.getColor(key, this.resourcesProvider);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.emoji.attach();
        if (this.player != null || this.nowPlayingCardData == null) {
            return;
        }
        initializePlayer();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.emoji.detach();
        releasePlayer();
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "CARD_CONTENT_PADDING_DP", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
