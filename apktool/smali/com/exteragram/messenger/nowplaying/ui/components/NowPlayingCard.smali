.class public abstract Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final albumView:Landroid/widget/TextView;

.field private final artistView:Landroid/widget/TextView;

.field private final audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private final audioManager:Landroid/media/AudioManager;

.field private final cardLayout:Landroid/widget/FrameLayout;

.field private currentDocId:J

.field private currentPreviewUrl:Ljava/lang/String;

.field private final emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private isPlaying:Z

.field private final nameView:Landroid/widget/TextView;

.field private nowPlayingCardData:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

.field private final playPauseButton:Landroid/widget/ImageView;

.field private playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private resumeOnFocusGain:Z


# direct methods
.method public static $r8$lambda$8dpCJj3w0U8LnajvD-4gTCFag-c(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Landroid/view/View;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->togglePlayPause()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOhhp4sU8FnleMRgj7I6S_dx9G0(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Landroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->set$lambda$1$1(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Landroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s9QIjAj9D55Esk_1M7EGE-0vK2g(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioFocusChangeListener$lambda$0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u22zSjYi_N-jemrl21YN8pZArzI(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;ZLandroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->set$lambda$1$0(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;ZLandroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v2, p2

    .line 65
    iput-object v2, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 81
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioManager:Landroid/media/AudioManager;

    .line 84
    new-instance v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V

    iput-object v2, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-wide/16 v2, -0x1

    .line 106
    iput-wide v2, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->currentDocId:J

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 110
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 112
    new-instance v3, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;

    invoke-direct {v3, v1, v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;-><init>(Landroid/content/Context;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V

    .line 126
    new-instance v4, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$2$drawable$1;

    invoke-direct {v4}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$2$drawable$1;-><init>()V

    const/high16 v5, 0x41800000    # 16.0f

    .line 132
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 134
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    .line 135
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    const v6, 0x3d0f5c29    # 0.035f

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 136
    invoke-static {v3, v6, v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 112
    iput-object v3, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->cardLayout:Landroid/widget/FrameLayout;

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, -0x1

    .line 140
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 138
    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v8, 0x41a00000    # 20.0f

    .line 144
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/16 v9, 0xd

    .line 143
    invoke-direct {v6, v3, v2, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object v6, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 147
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0xc

    const/16 v14, 0xc

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/16 v10, 0x77

    const/16 v11, 0xc

    const/16 v12, 0xc

    .line 150
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 149
    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41000000    # 8.0f

    .line 156
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 157
    invoke-virtual {v3, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 158
    new-instance v8, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$3$1;

    invoke-direct {v8}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$3$1;-><init>()V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 155
    iput-object v3, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v15, 0x0

    const/16 v9, 0x44

    const/16 v10, 0x44

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 165
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 164
    invoke-virtual {v6, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x10

    .line 172
    invoke-static {v2, v8, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 171
    invoke-virtual {v6, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x3

    .line 178
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    invoke-virtual {v9, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 183
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 184
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 185
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 186
    invoke-static {v9}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 177
    iput-object v9, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nameView:Landroid/widget/TextView;

    .line 190
    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 188
    invoke-virtual {v3, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    const-string v9, "fonts/rregular.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v12, 0x41600000    # 14.0f

    .line 196
    invoke-virtual {v8, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 198
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 199
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const v13, 0x3f19999a    # 0.6f

    .line 202
    invoke-virtual {v8, v13}, Landroid/view/View;->setAlpha(F)V

    .line 203
    invoke-static {v8}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 193
    iput-object v8, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->artistView:Landroid/widget/TextView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    .line 206
    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    .line 205
    invoke-virtual {v3, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 214
    invoke-virtual {v8, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 216
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 217
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    invoke-virtual {v8, v13}, Landroid/view/View;->setAlpha(F)V

    .line 221
    invoke-static {v8}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 211
    iput-object v8, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    const/4 v14, -0x1

    .line 224
    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 223
    invoke-virtual {v3, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v3, Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-direct {v3, v10}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    .line 230
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 231
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setColor(I)V

    .line 229
    iput-object v3, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    .line 233
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 235
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 236
    iget-object v1, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    new-instance v1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iput-object v2, v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->playPauseButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x20

    const/16 v9, 0x10

    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 242
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 241
    invoke-virtual {v6, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final abandonAudioFocus()V
    .locals 2

    .line 435
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 436
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 437
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public static final synthetic access$abandonAudioFocus(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->abandonAudioFocus()V

    return-void
.end method

.method public static final synthetic access$getEmoji$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method public static final synthetic access$getNowPlayingCardData$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nowPlayingCardData:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    return-object p0
.end method

.method public static final synthetic access$getThemedColor(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;I)I
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setPlaying$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->isPlaying:Z

    return-void
.end method

.method public static final synthetic access$updatePlayPauseButton(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->updatePlayPauseButton()V

    return-void
.end method

.method private static final audioFocusChangeListener$lambda$0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;I)V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-boolean p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->resumeOnFocusGain:Z

    if-eqz p1, :cond_4

    .line 98
    iget-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    .line 99
    :cond_1
    iput-boolean v2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->resumeOnFocusGain:Z

    return-void

    .line 87
    :cond_2
    iput-boolean v2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->resumeOnFocusGain:Z

    .line 88
    iget-object p0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->pause()V

    return-void

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result p1

    if-ne p1, v1, :cond_4

    .line 92
    iput-boolean v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->resumeOnFocusGain:Z

    .line 93
    iget-object p0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->pause()V

    :cond_4
    :goto_0
    return-void
.end method

.method private final getThemedColor(I)I
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private final initializePlayer()V
    .locals 4

    .line 370
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->releasePlayer()V

    .line 371
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nowPlayingCardData:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nowPlayingCardData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getNowPlayingDTO()Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 373
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    .line 374
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    .line 375
    new-instance v3, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v0

    .line 377
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 378
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 379
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$initializePlayer$1$1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$initializePlayer$1$1;-><init>(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 373
    iput-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.method private final releasePlayer()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 451
    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->isPlaying:Z

    .line 453
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->updatePlayPauseButton()V

    .line 454
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->abandonAudioFocus()V

    return-void
.end method

.method private final requestAudioFocus()Z
    .locals 6

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v0, v1, :cond_1

    .line 415
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 418
    invoke-static {v3}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 418
    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 422
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    if-ne v0, v4, :cond_0

    return v4

    :cond_0
    return v2

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioManager:Landroid/media/AudioManager;

    .line 426
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    .line 425
    invoke-virtual {v0, v1, v5, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v4, :cond_2

    return v4

    :cond_2
    return v2
.end method

.method private static final set$lambda$1$0(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;ZLandroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;Landroid/view/View;)V
    .locals 0

    .line 313
    invoke-virtual {p0}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPlatform()Ljava/lang/String;

    move-result-object p0

    const-string p5, "TELEGRAM"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->onSavedMusicClick()V

    return-void

    .line 316
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 318
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p4}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getNowPlayingDTO()Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getSongUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p0, :cond_2

    .line 320
    invoke-static {p0}, Lcom/exteragram/messenger/components/SupporterBottomSheet;->showAlert(Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/exteragram/messenger/components/SupporterBottomSheet;

    :cond_2
    return-void
.end method

.method private static final set$lambda$1$1(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Landroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;Landroid/view/View;)Z
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPlatform()Ljava/lang/String;

    move-result-object p0

    const-string p4, "TELEGRAM"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->onSavedMusicClick()V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getNowPlayingDTO()Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getSongUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final togglePlayPause()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    .line 402
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->abandonAudioFocus()V

    return-void

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->requestAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-wide/16 v1, 0x0

    .line 406
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 408
    :cond_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->play()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final updatePlayPauseButton()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    iget-boolean v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->isPlaying:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 460
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 461
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 462
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nowPlayingCardData:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->initializePlayer()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 468
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 469
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 470
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->releasePlayer()V

    return-void
.end method

.method protected abstract onSavedMusicClick()V
.end method

.method public final set(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;)V
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    const-string v0, "cardData"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iput-object v5, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nowPlayingCardData:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    .line 252
    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getNowPlayingDTO()Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getArtists()Ljava/util/List;

    move-result-object v0

    .line 255
    iget-object v3, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->artistView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v3, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nameView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v3, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v3, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->artistView:Landroid/widget/TextView;

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    const/16 v14, 0x3e

    const/4 v15, 0x0

    const-string v8, ", "

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 260
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->artistView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AudioUnknownArtist:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nameView:Landroid/widget/TextView;

    .line 265
    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getTrackName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 264
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    .line 268
    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v7

    :goto_3
    const/16 v8, 0x8

    if-eqz v3, :cond_4

    move v3, v7

    goto :goto_4

    :cond_4
    move v3, v8

    .line 257
    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 270
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    .line 271
    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    iget-object v9, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v3, v9, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 270
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const/high16 v0, 0x41400000    # 12.0f

    .line 274
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v2, v3, v7, v0, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 276
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->cardLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_8

    .line 278
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 279
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 280
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 282
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 283
    invoke-virtual {v0, v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 285
    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_5
    move v10, v3

    goto :goto_6

    :cond_6
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v2, v3}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->getThemedColor(I)I

    move-result v3

    goto :goto_5

    .line 288
    :goto_6
    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-object v9, Lcom/exteragram/messenger/utils/ui/UIUtil;->INSTANCE:Lcom/exteragram/messenger/utils/ui/UIUtil;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/exteragram/messenger/utils/ui/UIUtil;->adjustHsl$default(Lcom/exteragram/messenger/utils/ui/UIUtil;IFFILjava/lang/Object;)I

    move-result v3

    goto :goto_7

    :cond_7
    move v3, v10

    .line 291
    :goto_7
    filled-new-array {v10, v3}, [I

    move-result-object v3

    .line 286
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 296
    :cond_8
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPreviewUrl()Ljava/lang/String;

    move-result-object v3

    const-string v9, "TELEGRAM"

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v4

    goto :goto_9

    :cond_a
    :goto_8
    move v3, v7

    :goto_9
    if-eqz v3, :cond_b

    goto :goto_a

    :cond_b
    move v7, v8

    .line 257
    :goto_a
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->playPauseButton:Landroid/widget/ImageView;

    const/high16 v3, 0x42000000    # 32.0f

    .line 298
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v7, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nowPlayingCardData:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    if-nez v7, :cond_c

    const-string/jumbo v7, "nowPlayingCardData"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v6

    :cond_c
    invoke-virtual {v7}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getAccentColor()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_b

    :cond_d
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {v2, v7}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->getThemedColor(I)I

    move-result v7

    .line 297
    :goto_b
    invoke-static {v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getUserEmoji()J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long v0, v7, v10

    if-lez v0, :cond_e

    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getUserEmoji()J

    move-result-wide v7

    goto :goto_c

    :cond_e
    sget-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->Companion:Lcom/exteragram/messenger/nowplaying/ServiceEmoji$Companion;

    .line 303
    invoke-virtual {v1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPlatform()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {v0, v3}, Lcom/exteragram/messenger/nowplaying/ServiceEmoji$Companion;->fromString(Ljava/lang/String;)Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->getDocumentId()J

    move-result-wide v7

    .line 305
    :goto_c
    iget-wide v9, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->currentDocId:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_f

    .line 306
    iput-wide v7, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->currentDocId:J

    .line 307
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v7, v8, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 310
    :cond_f
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->cardLayout:Landroid/widget/FrameLayout;

    .line 311
    sget-object v3, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-static {v3, v6, v4, v6}, Lcom/exteragram/messenger/badges/BadgesController;->hasBadge$default(Lcom/exteragram/messenger/badges/BadgesController;Lorg/telegram/tgnet/TLObject;ILjava/lang/Object;)Z

    move-result v3

    move-object v4, v0

    .line 312
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;ZLandroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Landroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 334
    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getImageLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 335
    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "getResources(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_10
    move-object v10, v6

    .line 336
    iget-object v7, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getImageLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    .line 338
    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 340
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->artistView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    .line 345
    :cond_11
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v2, v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->getThemedColor(I)I

    move-result v0

    .line 346
    iget-object v1, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->artistView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    iget-object v1, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v1, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    .line 352
    :cond_12
    iget-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->nocover:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_button:I

    invoke-direct {v2, v3}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(II)V

    .line 353
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v2, v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->getThemedColor(I)I

    move-result v0

    .line 354
    iget-object v1, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->artistView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget-object v1, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    iget-object v1, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->albumView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    :goto_d
    invoke-virtual {v5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getNowPlayingDTO()Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->currentPreviewUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 362
    iput-object v0, v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->currentPreviewUrl:Ljava/lang/String;

    .line 363
    invoke-direct {v2}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->initializePlayer()V

    .line 366
    :cond_13
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    return-void
.end method
