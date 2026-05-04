.class public Lorg/telegram/ui/Cells/AudioPlayerCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# instance fields
.field private TAG:I

.field private buttonPressed:Z

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private currentAccount:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private descriptionLayout:Landroid/text/StaticLayout;

.field private descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private final descriptionY:I

.field private dotSpan:Landroid/text/SpannableStringBuilder;

.field private hasMiniProgress:I

.field private miniButtonPressed:Z

.field private miniButtonState:I

.field private needDivider:Z

.field private final optionsButton:Landroid/widget/ImageView;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private titleLayout:Landroid/text/StaticLayout;

.field private titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private final titleY:I

.field private viewType:I


# direct methods
.method public static synthetic $r8$lambda$rQ-9o2aGm7Anfro19pIupw3ws-o(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41100000    # 9.0f

    .line 64
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleY:I

    const/high16 v0, 0x41e80000    # 29.0f

    .line 68
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionY:I

    .line 77
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 94
    iput-object p3, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 95
    iput p2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->viewType:I

    .line 97
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->optionsButton:Landroid/widget/ImageView;

    .line 98
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    sget p1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 101
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    or-int/lit8 v5, p1, 0x10

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    const/16 v3, 0x2a

    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance p1, Lorg/telegram/ui/Cells/AudioPlayerCell$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/telegram/ui/Cells/AudioPlayerCell$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance p1, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    .line 108
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    invoke-virtual {p1, p3, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 109
    iget p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->TAG:I

    .line 110
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    if-ne p2, v2, :cond_1

    .line 113
    new-instance p1, Landroid/text/SpannableStringBuilder;

    const-string p2, "."

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    .line 114
    new-instance p2, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {p2}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    invoke-virtual {p1, p2, v0, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method private checkAudioMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42100000    # 36.0f

    .line 218
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 220
    iget v3, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    const/high16 v3, 0x41d80000    # 27.0f

    .line 221
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 222
    iget v6, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonX:I

    add-int v7, v6, v3

    if-lt v0, v7, :cond_0

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    if-gt v0, v6, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonY:I

    add-int v6, v0, v3

    if-lt v1, v6, :cond_0

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    .line 224
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_5

    .line 226
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonPressed:Z

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    .line 231
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonPressed:Z

    if-eqz v1, :cond_5

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 233
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonPressed:Z

    .line 234
    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 235
    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/AudioPlayerCell;->didPressedMiniButton(Z)V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 238
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonPressed:Z

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    if-nez v0, :cond_4

    .line 242
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonPressed:Z

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 246
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonPressed:Z

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    :cond_5
    return v5
.end method

.method private didPressedMiniButton(Z)V
    .locals 5

    .line 266
    iget p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 267
    iput v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    .line 268
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 269
    iget p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v3, v4, v0}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 270
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    if-ne p1, v1, :cond_2

    .line 273
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 276
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    .line 277
    iget p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 2

    .line 367
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getMiniIconForCurrentState()I
    .locals 1

    .line 356
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    if-gez v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public didPressedButton()V
    .locals 7

    .line 284
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 285
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    if-nez v0, :cond_0

    .line 286
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v5, v6, v4, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 288
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MediaController;->findMessageInPlaylistAndPlay(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->hasMiniProgress:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    if-eq v0, v4, :cond_1

    .line 290
    iput v4, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 294
    :cond_1
    iput v4, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    if-ne v0, v4, :cond_3

    .line 299
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 301
    iput v3, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    const/4 v5, 0x4

    if-ne v0, v2, :cond_4

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 307
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 308
    iput v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    if-ne v0, v5, :cond_5

    .line 312
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 313
    iput v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 495
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->TAG:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 203
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->onAttachedToWindow()V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/Layout;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v4, p0, v0, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayout:Landroid/text/StaticLayout;

    new-array v2, v2, [Landroid/text/Layout;

    aput-object v1, v2, v4

    invoke-static {v4, p0, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->onDetachedFromWindow()V

    .line 195
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 321
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayout:Landroid/text/StaticLayout;

    const/4 v9, 0x0

    const/high16 v10, 0x42000000    # 32.0f

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v1, :cond_2

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_1
    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 325
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_5

    .line 330
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 332
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v11, v1

    :goto_2
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :cond_4
    add-int/2addr v1, v9

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 338
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonPressed:Z

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSelectedProgress:I

    goto :goto_3

    :cond_6
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioProgress:I

    :goto_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 339
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 341
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 343
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->needDivider:Z

    if-eqz v1, :cond_8

    .line 344
    const-string v1, "paintDivider"

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 346
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_7

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 349
    :cond_7
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 465
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 500
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrMusicInfo:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "AccDescrMusicInfo"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 121
    iput-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 122
    iput-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayout:Landroid/text/StaticLayout;

    .line 124
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 125
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/high16 v7, 0x40800000    # 4.0f

    const/16 v8, 0x20

    .line 128
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v0

    .line 129
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 130
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v10, v9, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 131
    new-instance v12, Landroid/text/StaticLayout;

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int v15, v3, v0

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayout:Landroid/text/StaticLayout;

    .line 132
    iget-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v9, v4, [Landroid/text/Layout;

    aput-object v12, v9, v5

    invoke-static {v5, v1, v0, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->titleLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 139
    iget v6, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->viewType:I

    if-ne v6, v4, :cond_0

    .line 140
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v6, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v6, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x2

    invoke-static {v6, v8}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    .line 142
    :cond_0
    :goto_1
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    int-to-float v8, v3

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v6, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 143
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int v13, v3, v0

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 144
    iget-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v4, [Landroid/text/Layout;

    aput-object v10, v3, v5

    invoke-static {v5, v1, v0, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->descriptionLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 146
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 150
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v4, 0x42600000    # 56.0f

    .line 151
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 149
    invoke-super {v1, v0, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/high16 v0, 0x42500000    # 52.0f

    .line 154
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 155
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    goto :goto_4

    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 156
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonX:I

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonY:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v3, v2

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v5, v3, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 477
    iget p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->hasMiniProgress:I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 478
    iget p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    if-eq p1, p3, :cond_1

    .line 479
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    return-void

    .line 482
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    .line 483
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    :cond_1
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    const/4 p1, 0x0

    .line 471
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    .line 254
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 256
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->checkAudioMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonPressed:Z

    .line 259
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonPressed:Z

    return p1

    :cond_1
    return v0
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;ZLandroid/view/View$OnClickListener;ZLandroid/view/View$OnTouchListener;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 167
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->needDivider:Z

    if-eq v0, p4, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 170
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->needDivider:Z

    .line 171
    iget-object p4, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    sget v0, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    :goto_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object p4, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->optionsButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v0

    :goto_2
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 176
    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 p5, 0x5a

    invoke-static {p4, p5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p4

    goto :goto_3

    :cond_4
    move-object p4, p3

    .line 177
    :goto_3
    instance-of p5, p4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez p5, :cond_7

    instance-of p5, p4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-eqz p5, :cond_5

    goto :goto_4

    :cond_5
    const/4 p2, 0x1

    .line 180
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 182
    iget-object p2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Ljava/lang/String;)V

    goto :goto_5

    .line 184
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, p3, p3, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    goto :goto_5

    .line 178
    :cond_7
    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p3, p4, p2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 187
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 188
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public updateButtonState(ZZ)V
    .locals 8

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 382
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 388
    iget v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    .line 390
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 393
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 394
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 396
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 397
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    long-to-int v2, v6

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_1

    :cond_5
    move v1, v4

    .line 398
    :goto_1
    iput v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->hasMiniProgress:I

    move v1, v5

    goto :goto_2

    .line 401
    :cond_6
    iput v3, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    .line 403
    :goto_2
    iget v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->hasMiniProgress:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_d

    .line 404
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    goto :goto_3

    :cond_7
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    :goto_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniProgressBackgroundColor(I)V

    .line 405
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v1, :cond_8

    .line 406
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 409
    :cond_8
    iput v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    goto :goto_5

    .line 407
    :cond_9
    :goto_4
    iput v7, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    .line 411
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 412
    iget v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->hasMiniProgress:I

    if-ne v1, v5, :cond_a

    .line 413
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 414
    iput v3, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    return-void

    .line 417
    :cond_a
    iget v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 418
    iget v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 419
    iput v7, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMiniIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    return-void

    .line 422
    :cond_b
    iput v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->miniButtonState:I

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMiniIconForCurrentState()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setMiniIcon(IZZ)V

    .line 424
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    return-void

    .line 428
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v6, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    return-void

    :cond_d
    if-eqz v1, :cond_10

    .line 433
    iget v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 434
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v0, :cond_e

    .line 435
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    .line 438
    :cond_e
    iput v5, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    goto :goto_7

    .line 436
    :cond_f
    :goto_6
    iput v7, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    .line 440
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 444
    :cond_10
    iget v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 445
    iget v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 447
    iput v4, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_9

    :cond_11
    const/4 v1, 0x4

    .line 450
    iput v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->buttonState:I

    .line 451
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 453
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_8

    .line 455
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v6, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 457
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 459
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
