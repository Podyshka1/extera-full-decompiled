.class public Lorg/telegram/ui/Cells/ContextLinkCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;
    }
.end annotation


# static fields
.field private static interpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public final IMAGE_SCALE:Landroid/util/Property;

.field private TAG:I

.field private animator:Landroid/animation/AnimatorSet;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private buttonPressed:Z

.field private buttonState:I

.field cacheFile:Ljava/io/File;

.field private canPreviewGif:Z

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private currentAccount:I

.field private currentDate:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private delegate:Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

.field private descriptionLayout:Landroid/text/StaticLayout;

.field private descriptionY:I

.field private documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

.field private documentAttachType:I

.field private drawLinkImageView:Z

.field fileExist:Z

.field fileName:Ljava/lang/String;

.field private imageScale:F

.field private inlineBot:Lorg/telegram/tgnet/TLRPC$User;

.field private inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field private isForceGif:Z

.field private isKeyboard:Z

.field private letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

.field private linkImageView:Lorg/telegram/messenger/ImageReceiver;

.field private linkLayout:Landroid/text/StaticLayout;

.field private linkY:I

.field private mediaWebpage:Z

.field private needDivider:Z

.field private needShadow:Z

.field private parentObject:Ljava/lang/Object;

.field private photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field resolveFileNameId:I

.field resolvingFileName:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scaled:Z

.field private titleLayout:Landroid/text/StaticLayout;

.field private titleY:I


# direct methods
.method static bridge synthetic -$$Nest$fgetanimator(Lorg/telegram/ui/Cells/ContextLinkCell;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->animator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Cells/ContextLinkCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPhotoObject(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdocumentAttach(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ContextLinkCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimageScale(Lorg/telegram/ui/Cells/ContextLinkCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->imageScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinlineResult(Lorg/telegram/ui/Cells/ContextLinkCell;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaWebpage(Lorg/telegram/ui/Cells/ContextLinkCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputanimator(Lorg/telegram/ui/Cells/ContextLinkCell;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->animator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPhotoObject(Lorg/telegram/ui/Cells/ContextLinkCell;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimageScale(Lorg/telegram/ui/Cells/ContextLinkCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->imageScale:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 124
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lorg/telegram/ui/Cells/ContextLinkCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    const/high16 v0, 0x40e00000    # 7.0f

    .line 99
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleY:I

    const/high16 v0, 0x41d80000    # 27.0f

    .line 102
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionY:I

    const/4 v0, 0x0

    .line 870
    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->cacheFile:Ljava/io/File;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1090
    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->imageScale:F

    .line 1092
    new-instance v0, Lorg/telegram/ui/Cells/ContextLinkCell$2;

    const-string v1, "animationValue"

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell$2;-><init>(Lorg/telegram/ui/Cells/ContextLinkCell;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->IMAGE_SCALE:Landroid/util/Property;

    .line 144
    iput-object p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 146
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setUseSharedAnimationQueue(Z)V

    .line 150
    new-instance v0, Lorg/telegram/ui/Components/LetterDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Lorg/telegram/ui/Components/LetterDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    .line 151
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    .line 152
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->TAG:I

    .line 153
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    if-eqz p2, :cond_0

    .line 156
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->backgroundPaint:Landroid/graphics/Paint;

    .line 157
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    new-instance p2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v3, 0x15

    invoke-direct {p2, p1, v3, p3}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p1, 0x4

    .line 160
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, -0x1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, p2, v0, p3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/16 v3, 0x18

    const/high16 v4, 0x41c00000    # 24.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private didPressedButton()V
    .locals 6

    .line 708
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_8

    .line 709
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 710
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 711
    iput v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    if-ne v0, v3, :cond_2

    .line 716
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 718
    iput v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3

    .line 725
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    invoke-virtual {v0, v1, v5, v3, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_0

    .line 726
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_4

    .line 727
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v5}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v5

    invoke-virtual {v0, v5, v1, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/WebFile;II)V

    .line 729
    :cond_4
    :goto_0
    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_5
    if-ne v0, v4, :cond_8

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_6

    .line 734
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_1

    .line 735
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_7

    .line 736
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v1}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/messenger/WebFile;)V

    .line 738
    :cond_7
    :goto_1
    iput v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 740
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 8

    .line 853
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 865
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0xa

    return v0

    :cond_1
    return v1

    .line 854
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 855
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-ne v0, v2, :cond_3

    return v2

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    return v2

    :cond_4
    if-ne v0, v1, :cond_5

    return v3

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private setAttachType()V
    .locals 14

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    .line 442
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eqz v1, :cond_4

    .line 443
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 444
    iput v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_1

    .line 445
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_1

    .line 449
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 450
    iput v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x6

    .line 446
    iput v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_1

    .line 452
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v1, :cond_7

    .line 453
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_5

    const/4 v1, 0x7

    .line 454
    iput v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_1

    .line 455
    :cond_5
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 456
    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_1

    .line 457
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "voice"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 458
    iput v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    .line 461
    :cond_7
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-eq v1, v3, :cond_9

    if-ne v1, v4, :cond_8

    goto :goto_2

    :cond_8
    return-void

    .line 462
    :cond_9
    :goto_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 463
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 464
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    neg-int v5, v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 465
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 466
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 467
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 469
    const-string v5, ""

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 470
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 471
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/2addr v7, v3

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 472
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 473
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array v8, v0, [B

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 474
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v7, v7, 0x300

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 476
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_a

    .line 477
    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 478
    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_6

    .line 480
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iget v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const-string v8, "ogg"

    const-string v9, "mp3"

    if-ne v7, v4, :cond_b

    move-object v7, v9

    goto :goto_3

    :cond_b
    move-object v7, v8

    :goto_3
    invoke-static {v6, v7}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 481
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v10, 0x0

    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 482
    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 483
    iget v12, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v12, v7, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 484
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "audio/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 485
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 486
    iput v0, v6, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 488
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 489
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getInlineResultDuration(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)I

    move-result v7

    int-to-double v10, v7

    iput-wide v10, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 490
    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    if-eqz v10, :cond_c

    goto :goto_4

    :cond_c
    move-object v10, v5

    :goto_4
    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 491
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    if-eqz v7, :cond_d

    move-object v5, v7

    :cond_d
    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 492
    iget v5, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/2addr v5, v3

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 493
    iget v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v5, v3, :cond_e

    .line 494
    iput-boolean v2, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 496
    :cond_e
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iget v10, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v10, v4, :cond_f

    move-object v10, v9

    goto :goto_5

    :cond_f
    move-object v10, v8

    :goto_5
    invoke-static {v7, v10}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 500
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v3, Ljava/io/File;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iget v10, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v10, v4, :cond_10

    move-object v8, v9

    :cond_10
    invoke-static {v6, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 505
    :goto_6
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-direct {v3, v4, v1, v0, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public allowButtonBounce(Z)V
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    .line 171
    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;FF)V

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setReleaseDelay(J)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    :cond_2
    return-void
.end method

.method public getBotInlineResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-object v0
.end method

.method public getDate()I
    .locals 1

    .line 584
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentDate:I

    return v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getInlineBot()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 1031
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->TAG:I

    return v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 1

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    return-object v0
.end method

.method public isGif()Z
    .locals 2

    .line 576
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->canPreviewGif:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSticker()Z
    .locals 2

    .line 572
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 629
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V

    .line 633
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 620
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->onDetachedFromWindow()V

    .line 624
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, p1

    goto :goto_1

    .line 749
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v8, v2

    .line 752
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    const/high16 v0, 0x41000000    # 8.0f

    if-eqz p1, :cond_3

    .line 753
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 754
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float p1, p1

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {v8, p1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 755
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 756
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 759
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_5

    .line 760
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 762
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float p1, p1

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionY:I

    int-to-float v2, v2

    invoke-virtual {v8, p1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 763
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 764
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 767
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_7

    .line 768
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 769
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 770
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, p1

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkY:I

    int-to-float v0, v0

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 771
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 772
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 775
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    const/4 v0, 0x2

    if-nez p1, :cond_11

    .line 776
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 777
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/LetterDrawable;->setAlpha(I)V

    goto :goto_5

    .line 779
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/LetterDrawable;->setAlpha(I)V

    .line 781
    :goto_5
    iget p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/4 v1, 0x5

    if-ne p1, v1, :cond_9

    goto/16 :goto_6

    .line 784
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/high16 v1, 0x42500000    # 52.0f

    if-eqz p1, :cond_a

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v2, "file"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 785
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultFile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 786
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultFile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 787
    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v4, p1

    div-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 788
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v5, v2

    div-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 789
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v9

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float v11, v5, v6

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v12, v5, v1

    sget-object v13, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 790
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultFile:Landroid/graphics/drawable/Drawable;

    add-int/2addr p1, v3

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v4, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultFile:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 792
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v2, "voice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 793
    :cond_b
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultAudio:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 794
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultAudio:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 795
    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v4, p1

    div-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 796
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v5, v2

    div-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 797
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v9

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float v11, v5, v6

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v12, v5, v1

    sget-object v13, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 798
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultAudio:Landroid/graphics/drawable/Drawable;

    add-int/2addr p1, v3

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v4, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 799
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultAudio:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 800
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v2, "venue"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v2, "geo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 801
    :cond_d
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 802
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 803
    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v4, p1

    div-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 804
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v5, v2

    div-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 805
    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v9

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float v11, v5, v6

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v12, v5, v1

    sget-object v13, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 806
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    add-int/2addr p1, v3

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v4, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 807
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 809
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/LetterDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 782
    :cond_f
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    if-eqz v1, :cond_10

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSelectedProgress:I

    goto :goto_7

    :cond_10
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioProgress:I

    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 783
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 812
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz p1, :cond_13

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-nez v1, :cond_12

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-eqz p1, :cond_13

    .line 813
    :cond_12
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 814
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 815
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    int-to-float v4, p1

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 816
    iget-object v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v5

    int-to-float v6, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 817
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v9

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    add-float v11, v4, v5

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v5

    add-float v12, v4, v5

    sget-object v13, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 818
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    add-int/2addr p1, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 819
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_inlineResultLocation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 822
    :cond_13
    :goto_8
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    .line 823
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz p1, :cond_14

    .line 824
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 826
    :cond_14
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 827
    iget p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->imageScale:F

    .line 828
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v2, :cond_15

    const v3, 0x3dcccccd    # 0.1f

    .line 829
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    mul-float/2addr p1, v2

    .line 831
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v8, p1, p1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 833
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 835
    :cond_16
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-eqz p1, :cond_18

    iget p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v2, 0x7

    if-eq p1, v2, :cond_17

    if-ne p1, v0, :cond_18

    .line 836
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 839
    :cond_18
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needDivider:Z

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-nez p1, :cond_1a

    .line 840
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_19

    .line 841
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float v11, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float v12, p1

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 843
    :cond_19
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v9, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float v11, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float v12, p1

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 846
    :cond_1a
    :goto_9
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needShadow:Z

    if-eqz p1, :cond_1b

    .line 847
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_shadowUnderSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 848
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_shadowUnderSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1b
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1000
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 1036
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    iget v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1061
    :pswitch_0
    sget v1, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1058
    :pswitch_1
    sget v1, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1055
    :pswitch_2
    sget v1, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1052
    :pswitch_3
    sget v1, Lorg/telegram/messenger/R$string;->AttachMusic:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1049
    :pswitch_4
    sget v1, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1046
    :pswitch_5
    sget v1, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1043
    :pswitch_6
    sget v1, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1040
    :pswitch_7
    sget v1, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v2

    .line 1065
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v2

    .line 1066
    :goto_2
    iget v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v6, 0x5

    const-string v7, ", "

    if-ne v5, v6, :cond_2

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 1067
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMusicInfo:I

    iget-object v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v5, v6, v3

    const-string v2, "AccDescrMusicInfo"

    invoke-static {v2, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_4

    .line 1071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1072
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v4, :cond_6

    .line 1077
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1078
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1083
    :cond_6
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1085
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 1086
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 42

    move-object/from16 v1, p0

    const/16 v2, 0x50

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 178
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    const/4 v5, 0x0

    .line 179
    iput-object v5, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 180
    iput-object v5, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    .line 181
    iput-object v5, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    .line 182
    iput-object v5, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/high16 v0, 0x41d80000    # 27.0f

    .line 183
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkY:I

    .line 185
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/high16 v6, 0x42c80000    # 100.0f

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_0

    .line 186
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 190
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 191
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v7, v0

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v13, v0, v9

    .line 199
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 201
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_2

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    move-object v9, v5

    .line 205
    :goto_1
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v18, 0x40800000    # 4.0f

    const/4 v11, 0x1

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    const/16 v12, 0x20

    const/16 v14, 0xa

    if-eqz v0, :cond_3

    .line 208
    :try_start_0
    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v20, v6

    float-to-double v5, v0

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 209
    iget-object v5, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    invoke-virtual {v5, v14, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v6, v0, v15}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 210
    new-instance v21, Landroid/text/StaticLayout;

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int v24, v13, v0

    sget-object v25, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v21 .. v28}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v21

    iput-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v20, v6

    .line 212
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 214
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    iget-object v5, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move/from16 v20, v6

    .line 217
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 219
    :try_start_2
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move v5, v11

    :try_start_3
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v6, v14

    const/4 v14, 0x0

    const/4 v15, 0x3

    move/from16 v16, v12

    move v12, v13

    move/from16 v22, v4

    move v4, v6

    move/from16 v21, v8

    move v6, v10

    move/from16 v8, v16

    move-object v10, v0

    :try_start_4
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 220
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 221
    iget v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionY:I

    iget-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v0, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v0, v10

    iput v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkY:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v22, v4

    move/from16 v21, v8

    move v6, v10

    :goto_5
    move v8, v12

    move v12, v13

    move v4, v14

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v22, v4

    move/from16 v21, v8

    move v6, v10

    move v5, v11

    goto :goto_5

    .line 224
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_4
    move/from16 v22, v4

    move/from16 v21, v8

    move v6, v10

    move v5, v11

    move v8, v12

    move v12, v13

    move v4, v14

    .line 228
    :cond_5
    :goto_7
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->url:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 230
    :try_start_5
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    .line 231
    iget-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->url:Ljava/lang/String;

    invoke-virtual {v10, v4, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v8, v0, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 232
    new-instance v10, Landroid/text/StaticLayout;

    move v13, v12

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    .line 234
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_6
    move/from16 v22, v4

    move/from16 v20, v6

    move/from16 v21, v8

    move v6, v10

    move v5, v11

    .line 240
    :cond_7
    :goto_8
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v4, 0x3

    const/4 v8, 0x5

    if-eqz v0, :cond_c

    .line 241
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->isForceGif:Z

    const/16 v9, 0x5a

    if-nez v2, :cond_b

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_a

    .line 243
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    .line 247
    :cond_9
    iget v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-eq v0, v8, :cond_d

    if-eq v0, v4, :cond_d

    .line 248
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_b

    .line 244
    :cond_a
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 245
    const-string v0, "webp"

    move-object/from16 v30, v0

    const/4 v0, 0x0

    goto :goto_c

    .line 242
    :cond_b
    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_b

    .line 251
    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_d

    .line 252
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    invoke-static {v9, v0, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 253
    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 254
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-ne v0, v2, :cond_e

    :cond_d
    :goto_b
    const/4 v0, 0x0

    :cond_e
    const/16 v30, 0x0

    .line 258
    :goto_c
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/4 v9, 0x2

    if-eqz v2, :cond_17

    .line 259
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v10, :cond_12

    .line 260
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 261
    const-string v10, "gif"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 262
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v10, v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v10, :cond_f

    const-string v10, "video/mp4"

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 263
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    goto :goto_d

    .line 265
    :cond_f
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 267
    :goto_d
    iput v9, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    goto :goto_e

    .line 268
    :cond_10
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v10, "photo"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 269
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v11, :cond_11

    .line 270
    move-object v2, v10

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    goto :goto_e

    .line 272
    :cond_11
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    :goto_e
    if-nez v2, :cond_13

    .line 277
    iget-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v11, :cond_13

    .line 278
    move-object v2, v10

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    :cond_13
    if-nez v2, :cond_16

    .line 280
    iget-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v10, :cond_16

    if-nez v0, :cond_16

    .line 281
    iget-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-nez v11, :cond_14

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-eqz v11, :cond_16

    .line 282
    :cond_14
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 283
    iget-wide v13, v10, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 284
    iget v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget v10, v10, Lorg/telegram/messenger/MessagesController;->mapProvider:I

    if-ne v10, v9, :cond_15

    .line 285
    iget-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/16 v12, 0x48

    const/16 v13, 0xf

    invoke-static {v10, v12, v12, v13, v11}, Lorg/telegram/messenger/WebFile;->createWithGeoPoint(Lorg/telegram/tgnet/TLRPC$GeoPoint;IIII)Lorg/telegram/messenger/WebFile;

    move-result-object v10

    move-object/from16 v19, v10

    const/4 v10, 0x0

    goto :goto_10

    .line 287
    :cond_15
    iget v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    const/16 v39, 0xf

    const/16 v40, -0x1

    const/16 v36, 0x48

    const/16 v37, 0x48

    const/16 v38, 0x1

    move/from16 v31, v10

    move-wide/from16 v32, v11

    move-wide/from16 v34, v13

    invoke-static/range {v31 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->formapMapUrl(IDDIIZII)Ljava/lang/String;

    move-result-object v10

    :goto_f
    const/16 v19, 0x0

    goto :goto_10

    :cond_16
    const/4 v10, 0x0

    goto :goto_f

    :goto_10
    if-eqz v2, :cond_18

    .line 292
    invoke-static {v2}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_11

    :cond_17
    const/4 v10, 0x0

    const/16 v19, 0x0

    .line 300
    :cond_18
    :goto_11
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1b

    move/from16 v2, v22

    .line 301
    :goto_12
    iget-object v11, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_1b

    .line 302
    iget-object v11, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 303
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v12, :cond_1a

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v12, :cond_19

    goto :goto_13

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 304
    :cond_1a
    :goto_13
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 305
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    goto :goto_14

    :cond_1b
    move/from16 v2, v22

    move v11, v2

    :goto_14
    if-eqz v2, :cond_1c

    if-nez v11, :cond_1f

    .line 311
    :cond_1c
    iget-object v12, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v12, :cond_1e

    if-eqz v0, :cond_1d

    const/4 v2, -0x1

    .line 313
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 315
    :cond_1d
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 316
    iget v11, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_15

    .line 317
    :cond_1e
    iget-object v12, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v12, :cond_1f

    .line 318
    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getInlineResultWidthAndHeight(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)[I

    move-result-object v2

    .line 319
    aget v11, v2, v22

    .line 320
    aget v2, v2, v5

    move/from16 v41, v11

    move v11, v2

    move/from16 v2, v41

    :cond_1f
    :goto_15
    const/high16 v12, 0x42a00000    # 80.0f

    if-eqz v2, :cond_20

    if-nez v11, :cond_21

    .line 324
    :cond_20
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move v11, v2

    .line 326
    :cond_21
    iget-object v13, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v13, :cond_23

    iget-object v13, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v13, :cond_23

    if-nez v19, :cond_23

    if-eqz v10, :cond_22

    goto :goto_16

    :cond_22
    move v2, v9

    move/from16 v3, v22

    goto/16 :goto_20

    .line 330
    :cond_23
    :goto_16
    iget-boolean v13, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    const-string v14, "_firstframe"

    if-eqz v13, :cond_26

    int-to-float v2, v2

    int-to-float v11, v11

    .line 331
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    div-float/2addr v2, v11

    float-to-int v2, v2

    .line 332
    iget v11, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v11, v9, :cond_25

    .line 333
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    int-to-float v2, v2

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v12

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v22

    aput-object v3, v12, v5

    const-string v2, "%d_%d_b"

    invoke-static {v11, v2, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v3

    if-nez v3, :cond_24

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->isKeyboard:Z

    if-nez v3, :cond_24

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_17
    move-object/from16 v25, v2

    move-object/from16 v27, v3

    goto :goto_18

    :cond_24
    move-object/from16 v25, v2

    move-object/from16 v27, v25

    goto :goto_18

    .line 339
    :cond_25
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    int-to-float v2, v2

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v12

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v22

    aput-object v3, v12, v5

    const-string v2, "%d_%d"

    invoke-static {v11, v2, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_b"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    .line 343
    :cond_26
    const-string v2, "52_52_b"

    const-string v3, "52_52"

    move-object/from16 v27, v2

    move-object/from16 v25, v3

    .line 345
    :goto_18
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v11, 0x6

    if-ne v3, v11, :cond_27

    move v11, v5

    goto :goto_19

    :cond_27
    move/from16 v11, v22

    :goto_19
    invoke-virtual {v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 347
    iget v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-ne v2, v9, :cond_2e

    .line 348
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2c

    .line 349
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v0

    .line 350
    const-string v2, ""

    const-string v3, "100_100"

    if-eqz v0, :cond_29

    .line 351
    iget-object v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v3

    if-nez v3, :cond_28

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->isKeyboard:Z

    if-nez v3, :cond_28

    goto :goto_1a

    :cond_28
    move-object v14, v2

    :goto_1a
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x1

    const-wide/16 v28, -0x1

    move-object/from16 v31, v2

    move-object/from16 v23, v6

    move-object/from16 v27, v25

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1c

    .line 353
    :cond_29
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 354
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->isForceGif:Z

    if-eqz v6, :cond_2a

    .line 355
    iput v9, v0, Lorg/telegram/messenger/ImageLocation;->imageType:I

    .line 357
    :cond_2a
    iget-object v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v3

    if-nez v3, :cond_2b

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->isKeyboard:Z

    if-nez v3, :cond_2b

    goto :goto_1b

    :cond_2b
    move-object v14, v2

    :goto_1b
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v10, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x0

    move-object/from16 v24, v0

    move-object/from16 v31, v3

    move-object/from16 v23, v6

    move-wide/from16 v28, v10

    move-object/from16 v27, v25

    move-object/from16 v25, v2

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_1c
    move v2, v9

    goto/16 :goto_1d

    :cond_2c
    if-eqz v19, :cond_2d

    .line 360
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x1

    move-object/from16 v27, v25

    const-string v25, "100_100"

    const-wide/16 v28, -0x1

    move-object/from16 v23, v0

    move-object/from16 v31, v2

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1c

    .line 362
    :cond_2d
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x1

    move-object/from16 v27, v25

    const-string v25, "100_100"

    const-wide/16 v28, -0x1

    move-object/from16 v23, v0

    move-object/from16 v31, v2

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1c

    .line 365
    :cond_2e
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v2, :cond_33

    .line 366
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2, v3, v6}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v12

    .line 367
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->canAutoplayAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz v12, :cond_2f

    move v0, v9

    .line 369
    iget-object v9, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v13, v2

    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v17, 0x0

    const-string v11, "80_80"

    move-object/from16 v16, v2

    move-object/from16 v15, v30

    move v2, v0

    invoke-virtual/range {v9 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1d

    :cond_2f
    move v2, v9

    .line 371
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v9, v3

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x0

    const-string v25, "80_80"

    move-object/from16 v23, v0

    move-object/from16 v31, v3

    move-wide/from16 v28, v9

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1d

    :cond_30
    move v2, v9

    .line 374
    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_32

    if-eqz v12, :cond_31

    .line 376
    iget-object v9, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v13, v0

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v16, v0

    move-object/from16 v11, v25

    move-object/from16 v15, v30

    invoke-virtual/range {v9 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1d

    .line 378
    :cond_31
    iget-object v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v9, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v9, v0

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x0

    move-object/from16 v31, v0

    move-object/from16 v23, v6

    move-wide/from16 v28, v9

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1d

    .line 381
    :cond_32
    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v9, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v6, v9}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    iget-object v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->currentPhotoObject:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v9, v0

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x0

    move-object/from16 v31, v0

    move-object/from16 v23, v3

    move-wide/from16 v28, v9

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1d

    :cond_33
    move v2, v9

    if-eqz v19, :cond_34

    .line 384
    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    iget-object v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x1

    const-wide/16 v28, -0x1

    move-object/from16 v31, v0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1d

    .line 386
    :cond_34
    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    iget-object v6, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/16 v32, 0x1

    const-wide/16 v28, -0x1

    move-object/from16 v31, v0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 389
    :goto_1d
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v0

    if-nez v0, :cond_35

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->isKeyboard:Z

    if-eqz v0, :cond_36

    :cond_35
    move/from16 v3, v22

    goto :goto_1e

    .line 393
    :cond_36
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    move/from16 v3, v22

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 394
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    goto :goto_1f

    .line 390
    :goto_1e
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 391
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 396
    :goto_1f
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->drawLinkImageView:Z

    .line 399
    :goto_20
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v9, 0x41c00000    # 24.0f

    if-eqz v0, :cond_38

    .line 401
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-nez v0, :cond_37

    .line 403
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 405
    :cond_37
    invoke-virtual {v1, v7, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 406
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v7, v3

    div-int/2addr v3, v2

    .line 407
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v0, v4

    div-int/2addr v4, v2

    .line 408
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v2, v3, v4, v5, v8}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    .line 409
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 410
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v3, v7

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto/16 :goto_23

    .line 413
    :cond_38
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-eqz v0, :cond_39

    .line 414
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    goto :goto_21

    :cond_39
    move v0, v3

    .line 416
    :goto_21
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 417
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 419
    :cond_3a
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_3b

    .line 420
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3b
    const/high16 v2, 0x42500000    # 52.0f

    .line 422
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 423
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v5, 0x42880000    # 68.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v0, v7

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v5, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->needDivider:Z

    add-int/2addr v0, v5

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 425
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 426
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3c

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    goto :goto_22

    :cond_3c
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 427
    :goto_22
    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int v7, v2, v0

    const/high16 v10, 0x42700000    # 60.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v3, v2, v5, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    iget-object v3, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v5, v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    int-to-float v0, v0

    invoke-virtual {v3, v5, v7, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 429
    iget v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-eq v0, v4, :cond_3d

    if-ne v0, v8, :cond_3e

    .line 430
    :cond_3d
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 431
    iget-object v0, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    .line 434
    :cond_3e
    :goto_23
    iget-object v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v2, :cond_3f

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v3, p1

    move/from16 v5, p2

    .line 435
    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_3f
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 1012
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 1013
    iget p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 p2, 0x3

    const/4 p4, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    if-eq p1, p3, :cond_2

    .line 1019
    invoke-virtual {p0, p4, p3}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V

    return-void

    .line 1014
    :cond_1
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    .line 1015
    invoke-virtual {p0, p4, p3}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V

    :cond_2
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x1

    .line 1005
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileExist:Z

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    const/4 v0, 0x0

    .line 1007
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 642
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->delegate:Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 645
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42400000    # 48.0f

    .line 649
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 650
    iget v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v4, :cond_6

    const/4 v7, 0x5

    if-ne v2, v7, :cond_1

    goto :goto_1

    .line 677
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 679
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 680
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    goto/16 :goto_3

    .line 684
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    if-eqz v2, :cond_5

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 686
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 687
    invoke-virtual {p0, v6}, Landroid/view/View;->playSoundEffect(I)V

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->delegate:Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;->didPressedImage(Lorg/telegram/ui/Cells/ContextLinkCell;)V

    goto :goto_0

    .line 689
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 690
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    goto :goto_0

    .line 691
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 692
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 693
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    :cond_5
    :goto_0
    move v5, v6

    goto :goto_3

    .line 651
    :cond_6
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_5

    .line 654
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    .line 656
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 659
    :cond_7
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    if-eqz v1, :cond_5

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 661
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 662
    invoke-virtual {p0, v6}, Landroid/view/View;->playSoundEffect(I)V

    .line 663
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->didPressedButton()V

    .line 664
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 665
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 666
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 668
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_a

    if-nez v0, :cond_a

    .line 670
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    .line 671
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 674
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonPressed:Z

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/Components/RadialProgress2;->setPressed(ZZ)V

    goto :goto_0

    :goto_3
    if-nez v5, :cond_b

    .line 701
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    return v5

    .line 643
    :cond_c
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCanPreviewGif(Z)V
    .locals 0

    .line 607
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->canPreviewGif:Z

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 5

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    return-void

    .line 1109
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1114
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 1115
    iput-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->animator:Landroid/animation/AnimatorSet;

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 1118
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->animator:Landroid/animation/AnimatorSet;

    .line 1119
    iget-object v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->IMAGE_SCALE:Landroid/util/Property;

    if-eqz p1, :cond_3

    const v0, 0x3f4f5c29    # 0.81f

    :cond_3
    const/4 v3, 0x1

    .line 1120
    new-array v4, v3, [F

    aput v0, v4, v1

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    .line 1119
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1121
    iget-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->animator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1122
    iget-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->animator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Cells/ContextLinkCell$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/ContextLinkCell$3;-><init>(Lorg/telegram/ui/Cells/ContextLinkCell;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1140
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    const v0, 0x3f59999a    # 0.85f

    .line 1142
    :cond_5
    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->imageScale:F

    .line 1143
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;)V
    .locals 0

    .line 991
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->delegate:Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;

    return-void
.end method

.method public setGif(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IZ)V
    .locals 0

    .line 552
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needDivider:Z

    const/4 p4, 0x0

    .line 553
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needShadow:Z

    .line 554
    iput p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentDate:I

    const/4 p3, 0x0

    .line 555
    iput-object p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 556
    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    .line 557
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    .line 558
    iput-object p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 p1, 0x1

    .line 559
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    .line 560
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->isForceGif:Z

    .line 561
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->setAttachType()V

    const/4 p1, 0x2

    .line 562
    iput p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    .line 563
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 564
    iput-object p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    .line 565
    iput-object p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->cacheFile:Ljava/io/File;

    .line 566
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileExist:Z

    .line 567
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resolvingFileName:Z

    .line 568
    invoke-virtual {p0, p4, p4}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public setGif(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setGif(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IZ)V

    return-void
.end method

.method public setIsKeyboard(Z)V
    .locals 0

    .line 611
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->isKeyboard:Z

    return-void
.end method

.method public setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$User;ZZZZ)V
    .locals 0

    .line 514
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needDivider:Z

    .line 515
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->needShadow:Z

    .line 516
    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 517
    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->parentObject:Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 519
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    .line 520
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    .line 522
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    .line 523
    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->photoAttach:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 525
    :goto_0
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->mediaWebpage:Z

    .line 526
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->isForceGif:Z

    .line 527
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->setAttachType()V

    if-eqz p6, :cond_1

    const/4 p1, 0x2

    .line 529
    iput p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    .line 531
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 532
    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    .line 533
    iput-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->cacheFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 534
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileExist:Z

    .line 535
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resolvingFileName:Z

    .line 536
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->updateButtonState(ZZ)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1149
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 1151
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scaled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_2
    return-void
.end method

.method public setScaled(Z)V
    .locals 1

    .line 600
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scaled:Z

    .line 601
    iget-object p1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz p1, :cond_2

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->scaled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_2
    return-void
.end method

.method public showingBitmap()Z
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateButtonState(ZZ)V
    .locals 8

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resolvingFileName:Z

    if-nez v4, :cond_0

    .line 877
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resolvingFileName:Z

    .line 878
    iget p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resolveFileNameId:I

    iput p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->resolveFileNameId:I

    .line 879
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Cells/ContextLinkCell$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/ui/Cells/ContextLinkCell$1;-><init>(Lorg/telegram/ui/Cells/ContextLinkCell;IZ)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 937
    iget-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p2, v1, p1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void

    .line 939
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    .line 940
    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 941
    iget-object p2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p2, v1, p1, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttach:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2

    .line 947
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 949
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/ImageLoader;->isLoadingHttpFile(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x5

    if-nez v0, :cond_8

    .line 951
    iget-boolean v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileExist:Z

    if-nez v7, :cond_3

    goto :goto_4

    .line 972
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 973
    iget v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    if-eq v0, v6, :cond_5

    if-ne v0, v5, :cond_4

    goto :goto_1

    .line 982
    :cond_4
    iput v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    goto/16 :goto_6

    .line 974
    :cond_5
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v0, :cond_6

    .line 975
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 978
    :cond_6
    iput v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    goto :goto_3

    .line 976
    :cond_7
    :goto_2
    iput v3, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 980
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_6

    .line 952
    :cond_8
    :goto_4
    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v7, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 953
    iget v4, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->documentAttachType:I

    const/4 v7, 0x0

    if-eq v4, v6, :cond_b

    if-ne v4, v5, :cond_9

    goto :goto_5

    .line 966
    :cond_9
    iput v2, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 967
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 968
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 969
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v7, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_6

    :cond_b
    :goto_5
    if-nez v0, :cond_c

    const/4 v0, 0x2

    .line 955
    iput v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    goto :goto_6

    .line 957
    :cond_c
    iput v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->buttonState:I

    .line 958
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 960
    iget-object v1, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_6

    .line 962
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v7, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 985
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ContextLinkCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 986
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
