.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;
.super Lorg/telegram/ui/Stories/recorder/CaptionStory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public static synthetic $r8$lambda$9oBNAQhQanXtcRIXuX2HdItFg48(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->lambda$putRecorder$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZnylW7BWJ67u6eSYZgZwcTjnjk(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Ljava/io/File;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->lambda$putRecorder$0(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Ljava/io/File;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 0

    .line 2365
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Stories/recorder/CaptionStory;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    .line 2548
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->path:Landroid/graphics/Path;

    return-void
.end method

.method private synthetic lambda$putRecorder$0(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Ljava/io/File;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .line 2462
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->mute(Z)V

    .line 2464
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seek(J)V

    .line 2466
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2467
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-object p2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    .line 2468
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    iput-object p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    .line 2469
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    iput-wide p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    .line 2470
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    const/4 p3, 0x0

    iput p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    .line 2471
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    .line 2472
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    iput-wide v1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    .line 2473
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    iput p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    .line 2475
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mcreatePhotoPaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 2476
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2477
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PaintView;->createRound(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/RoundView;

    move-result-object p2

    .line 2478
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setHasRoundVideo(Z)V

    .line 2479
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-virtual {p3, v0, p2, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    .line 2481
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->hideTo(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    return-void

    .line 2483
    :cond_1
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroy(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$putRecorder$1()V
    .locals 3

    .line 2488
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->mute(Z)V

    .line 2490
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seek(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canRecord()Z
    .locals 1

    .line 2446
    invoke-static {}, Lorg/telegram/messenger/camera/CameraView;->isCameraAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2449
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mrequestAudioPermission(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    return v0
.end method

.method protected captionLimitToast()Z
    .locals 9

    .line 2402
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2405
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 2406
    iget v0, v0, Lorg/telegram/ui/Components/Bulletin;->tag:I

    if-ne v0, v2, :cond_1

    return v1

    .line 2409
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitPremium:I

    int-to-float v3, v0

    .line 2410
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitDefault:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v1

    const-string v0, "CaptionPremiumSubtitle"

    invoke-static {v0, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 2412
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "__"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    add-int/lit8 v7, v3, 0x2

    .line 2414
    invoke-virtual {v0, v3, v7, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2415
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    add-int/lit8 v7, v6, 0x2

    .line 2417
    invoke-virtual {v0, v6, v7, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2418
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2419
    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2432
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$raw;->caption_limit:I

    sget v6, Lorg/telegram/messenger/R$string;->CaptionPremiumTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 2433
    iput v2, v0, Lorg/telegram/ui/Components/Bulletin;->tag:I

    const/16 v2, 0x1388

    .line 2434
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    .line 2435
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return v4
.end method

.method protected customBlur()Z
    .locals 1

    .line 2545
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetblurManager(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v0

    return v0
.end method

.method protected drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V
    .locals 0

    .line 2551
    invoke-virtual {p2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 2554
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2555
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->path:Landroid/graphics/Path;

    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 2556
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->path:Landroid/graphics/Path;

    sget-object p8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p5, p3, p4, p4, p8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2557
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->path:Landroid/graphics/Path;

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2558
    invoke-virtual {p2, p6, p7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p3, 0x0

    .line 2559
    invoke-virtual {p1, p2, p3, p3, p9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;FFF)V

    .line 2560
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawBlurBitmap(Landroid/graphics/Bitmap;F)V
    .locals 1

    .line 2396
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetwindowView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->drawBlurBitmap(Landroid/graphics/Bitmap;F)V

    .line 2397
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlurBitmap(Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method public drawOver2FromParent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTimelineHeight()I
    .locals 1

    .line 2537
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetvideoTimelineContainerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettimelineView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TimelineView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettimelineView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettimelineView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getTimelineHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected ignoreTouches(FF)Z
    .locals 7

    .line 2368
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2369
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr p1, v0

    .line 2370
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p2, v0

    .line 2371
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr p1, v0

    .line 2372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p2, v0

    .line 2373
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    .line 2374
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    move v0, v1

    .line 2376
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2377
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2378
    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v3, :cond_1

    .line 2379
    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getSelectionBounds()Lorg/telegram/ui/Components/Rect;

    move-result-object v2

    .line 2380
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, v2, Lorg/telegram/ui/Components/Rect;->x:F

    iget v5, v2, Lorg/telegram/ui/Components/Rect;->y:F

    iget v6, v2, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v6, v4

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v2, v5

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2381
    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public invalidateDrawOver2()V
    .locals 1

    .line 2525
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEditOverlay(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEditOverlay(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onCaptionLimitUpdate(Z)V
    .locals 2

    .line 2441
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewButtons(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetvideoError(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mgetCount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasStoryLimit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    return-void
.end method

.method public putRecorder(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V
    .locals 3

    .line 2454
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentRoundRecorder(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentRoundRecorder(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroy(Z)V

    .line 2457
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2458
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->mute(Z)V

    .line 2459
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seek(J)V

    .line 2461
    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->onDone(Lorg/telegram/messenger/Utilities$Callback3;)Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    .line 2487
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->onDestroy(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    .line 2493
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputcurrentRoundRecorder(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeRound()V
    .locals 3

    .line 2498
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2499
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    .line 2501
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2502
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpaintView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->deleteRound()V

    .line 2504
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2505
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setHasRoundVideo(Z)V

    .line 2507
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2508
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 2510
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2512
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    .line 2514
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2516
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2518
    :catch_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 2391
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
