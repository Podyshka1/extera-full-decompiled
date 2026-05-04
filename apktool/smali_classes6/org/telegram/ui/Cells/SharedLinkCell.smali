.class public Lorg/telegram/ui/Cells/SharedLinkCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;,
        Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;,
        Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;
    }
.end annotation


# instance fields
.field private captionLayout:Landroid/text/StaticLayout;

.field private captionTextPaint:Landroid/text/TextPaint;

.field private captionY:I

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkingForLongPress:Z

.field private dateLayout:Landroid/text/StaticLayout;

.field private dateLayoutX:I

.field private delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

.field private description2TextPaint:Landroid/text/TextPaint;

.field private description2Y:I

.field private descriptionLayout:Landroid/text/StaticLayout;

.field private descriptionLayout2:Landroid/text/StaticLayout;

.field private descriptionLayout2Spoilers:Ljava/util/List;

.field private descriptionLayoutSpoilers:Ljava/util/List;

.field private descriptionTextPaint:Landroid/text/TextPaint;

.field private descriptionY:I

.field private drawLinkImageView:Z

.field private fromInfoLayout:Landroid/text/StaticLayout;

.field private fromInfoLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private fromInfoLayoutY:I

.field private letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

.field private linkImageView:Lorg/telegram/messenger/ImageReceiver;

.field private linkLayout:Ljava/util/ArrayList;

.field private linkPreviewPressed:Z

.field private linkSpoilers:Landroid/util/SparseArray;

.field private linkY:I

.field links:Ljava/util/ArrayList;

.field private linksCollector:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private message:Lorg/telegram/messenger/MessageObject;

.field private needDivider:Z

.field private patchedDescriptionLayout:Ljava/util/concurrent/atomic/AtomicReference;

.field private patchedDescriptionLayout2:Ljava/util/concurrent/atomic/AtomicReference;

.field private path:Landroid/graphics/Path;

.field private pendingCheckForLongPress:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;

.field private pressCount:I

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private pressedLinkIndex:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private spoilerTypePressed:I

.field private spoilersPool:Ljava/util/Stack;

.field private titleLayout:Landroid/text/StaticLayout;

.field private titleTextPaint:Landroid/text/TextPaint;

.field private titleY:I

.field private viewType:I


# direct methods
.method public static synthetic $r8$lambda$G0HC-Pya4Qwn80U2X4rWSW8WIXo(Lorg/telegram/ui/Cells/SharedLinkCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->lambda$startSpoilerRipples$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$MKPOzRb-OZ_e9dLxJTTGINpPe5I(Lorg/telegram/ui/Cells/SharedLinkCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->lambda$startSpoilerRipples$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcheckingForLongPress(Lorg/telegram/ui/Cells/SharedLinkCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkingForLongPress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/SharedLinkCell;)Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingCheckForLongPress(Lorg/telegram/ui/Cells/SharedLinkCell;)Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressCount(Lorg/telegram/ui/Cells/SharedLinkCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpressedLinkIndex(Lorg/telegram/ui/Cells/SharedLinkCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLinkIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcheckingForLongPress(Lorg/telegram/ui/Cells/SharedLinkCell;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkingForLongPress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingCheckForLongPress(Lorg/telegram/ui/Cells/SharedLinkCell;Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressCount(Lorg/telegram/ui/Cells/SharedLinkCell;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 196
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkingForLongPress:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    .line 77
    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressCount:I

    .line 78
    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;

    .line 130
    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linksCollector:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    .line 147
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    .line 150
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilersPool:Ljava/util/Stack;

    .line 151
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->path:Landroid/graphics/Path;

    const/4 v1, -0x1

    .line 153
    iput v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerTypePressed:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 155
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleY:I

    const/high16 v2, 0x41f00000    # 30.0f

    .line 158
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    .line 160
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->patchedDescriptionLayout:Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    .line 164
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->patchedDescriptionLayout2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 166
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->captionY:I

    .line 178
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutY:I

    .line 197
    iput-object p3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 198
    iput p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->viewType:I

    const/4 v2, 0x1

    .line 199
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 201
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    .line 202
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 203
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v4, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    .line 207
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 208
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 210
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 211
    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v4, 0x41000000    # 8.0f

    .line 212
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 213
    new-instance v3, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-direct {v3, p3, v0}, Lorg/telegram/ui/Components/LetterDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    .line 215
    new-instance v3, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x15

    invoke-direct {v3, p1, v4, p3}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p1, 0x4

    .line 216
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, v1, p3, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    or-int/lit8 v5, v0, 0x30

    const/high16 v0, 0x42300000    # 44.0f

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    if-eqz p3, :cond_2

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    const/4 v9, 0x0

    const/16 v3, 0x18

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x41500000    # 13.0f

    if-ne p2, v2, :cond_3

    .line 223
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2TextPaint:Landroid/text/TextPaint;

    .line 224
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 227
    :cond_3
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->captionTextPaint:Landroid/text/TextPaint;

    .line 228
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private getYOffsetForType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 756
    iget p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    return p1

    .line 760
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    return p1

    .line 758
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    return p1
.end method

.method private synthetic lambda$startSpoilerRipples$0()V
    .locals 2

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 698
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 699
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startSpoilerRipples$1()V
    .locals 1

    .line 694
    new-instance v0, Lorg/telegram/ui/Cells/SharedLinkCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SharedLinkCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharedLinkCell;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startSpoilerRipples(III)V
    .locals 10

    .line 691
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 692
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    .line 693
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 694
    new-instance v2, Lorg/telegram/ui/Cells/SharedLinkCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/SharedLinkCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/SharedLinkCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    sub-int/2addr p1, v0

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 705
    iget v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerTypePressed:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto/16 :goto_5

    .line 720
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    int-to-float v5, p1

    .line 721
    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->getYOffsetForType(I)I

    move-result v6

    sub-int v6, p2, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_1

    .line 716
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    int-to-float v5, p1

    .line 717
    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->getYOffsetForType(I)I

    move-result v6

    sub-int v6, p2, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    move v5, v2

    .line 707
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 708
    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/Layout;

    .line 709
    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 710
    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    int-to-float v8, p1

    .line 711
    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->getYOffsetForType(I)I

    move-result v9

    sub-int v9, p2, v9

    sub-int/2addr v9, p3

    int-to-float v9, v9

    add-float/2addr v9, v1

    invoke-virtual {v7, v8, v9, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    move p1, v2

    :goto_6
    if-gt p1, v3, :cond_b

    .line 725
    iget p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerTypePressed:I

    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    goto/16 :goto_b

    .line 741
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 742
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3, v1, v5, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_7

    .line 737
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 738
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3, v1, v5, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_8

    :cond_8
    move p2, v2

    .line 728
    :goto_9
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_a

    .line 729
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/text/Layout;

    .line 730
    invoke-virtual {p3}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 731
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 732
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_a

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_a
    :goto_b
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_6

    :cond_b
    const/4 p1, -0x1

    .line 748
    iput p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerTypePressed:I

    const/4 p1, 0x0

    .line 749
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    return-void
.end method


# virtual methods
.method protected cancelCheckLongPress()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkingForLongPress:Z

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getLink(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkImageView()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 561
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 562
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/Layout;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v3, p0, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 547
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 548
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 551
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 789
    iget v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->viewType:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    .line 790
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2TextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 792
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->dateLayout:Landroid/text/StaticLayout;

    const/4 v11, 0x0

    const/high16 v12, 0x41000000    # 8.0f

    if-eqz v1, :cond_3

    .line 793
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 794
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    move v1, v12

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    move v2, v11

    goto :goto_1

    :cond_2
    iget v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->dateLayoutX:I

    :goto_1
    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 795
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->dateLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 796
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 798
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    .line 799
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 800
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    move v1, v12

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 801
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    .line 802
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->dateLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    :goto_3
    add-float/2addr v1, v2

    .line 804
    :cond_6
    iget v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleY:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 805
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 806
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 809
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_9

    .line 810
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->captionTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 811
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 812
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    move v1, v12

    goto :goto_4

    :cond_8
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->captionY:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 813
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 814
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 816
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v1, :cond_b

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 818
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 819
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_a

    move v1, v12

    goto :goto_5

    :cond_a
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 820
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v3, v1

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->patchedDescriptionLayout:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V

    .line 821
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 824
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v1, :cond_d

    .line 825
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 827
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_c

    move v1, v12

    goto :goto_6

    :cond_c
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 828
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v3, v1

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->patchedDescriptionLayout2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V

    move-object v9, v0

    .line 829
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_d
    move-object v9, v0

    .line 832
    :goto_7
    iget-object v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 833
    iget-object v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v11

    move v1, v0

    .line 835
    :goto_8
    iget-object v2, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 836
    iget-object v2, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/StaticLayout;

    .line 837
    iget-object v3, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 838
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_12

    .line 839
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 840
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_e

    move v4, v12

    goto :goto_9

    :cond_e
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    :goto_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 842
    iget-object v4, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    if-eqz v3, :cond_f

    .line 844
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 845
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 846
    iget-object v13, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->path:Landroid/graphics/Path;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v14, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v15, v6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v17, v5

    move/from16 v16, v6

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_a

    .line 849
    :cond_f
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 850
    iget-object v4, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 851
    invoke-virtual {v2, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 852
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 854
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 855
    iget-object v4, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 856
    iget-object v4, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    if-eqz v3, :cond_10

    .line 857
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 858
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v5, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 859
    :cond_10
    iget-object v4, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 860
    invoke-virtual {v2, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 861
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    if-eqz v3, :cond_11

    .line 864
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 866
    :cond_11
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 867
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 871
    :cond_13
    iget-object v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->linksCollector:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 872
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 876
    :cond_14
    iget-object v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_16

    .line 877
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 878
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_15

    goto :goto_c

    :cond_15
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v12, v0

    :goto_c
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutY:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 879
    iget-object v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 880
    iget-object v1, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayout:Landroid/text/StaticLayout;

    iget-object v2, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    move-object v8, v0

    .line 881
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 883
    :cond_16
    iget-object v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/LetterDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 884
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_17

    .line 885
    iget-object v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 888
    :cond_17
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    if-eqz v0, :cond_19

    .line 889
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_18

    .line 890
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v10

    int-to-float v2, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v10

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 892
    :cond_18
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v10

    int-to-float v2, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v10

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_19
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 899
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 902
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 904
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    const-string v2, ", "

    if-eqz v1, :cond_1

    .line 905
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 908
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v1, :cond_2

    .line 909
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 912
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 914
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 915
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 31

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 234
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    const/4 v3, 0x0

    .line 235
    iput-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 236
    iput-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    .line 237
    iput-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    .line 238
    iput-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionLayout:Landroid/text/StaticLayout;

    .line 239
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v8, v0, v5

    .line 250
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    const/4 v14, 0x1

    if-eqz v6, :cond_3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v6, :cond_3

    .line 252
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_0

    .line 253
    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 255
    :cond_0
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v0, v14

    goto :goto_0

    :cond_1
    move v0, v2

    .line 256
    :goto_0
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 258
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 260
    :cond_2
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    .line 261
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v30, v5

    move v5, v0

    move-object v0, v6

    move-object/from16 v6, v30

    goto :goto_1

    :cond_3
    move v5, v2

    move-object v0, v3

    move-object v6, v0

    move-object v7, v6

    .line 263
    :goto_1
    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_1c

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1c

    move v10, v2

    move-object v9, v7

    move-object v7, v0

    move-object v0, v3

    .line 264
    :goto_2
    iget-object v11, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1b

    .line 265
    iget-object v11, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 266
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-lez v12, :cond_4

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ltz v12, :cond_4

    iget-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v12, v13, :cond_5

    :cond_4
    move/from16 p2, v4

    goto/16 :goto_11

    .line 268
    :cond_5
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v12, v13

    iget-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_6

    .line 269
    iget-object v12, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v12, v13

    iput v12, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_6
    if-nez v10, :cond_8

    if-eqz v6, :cond_8

    .line 271
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v12, :cond_7

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v12, v13, :cond_8

    .line 272
    :cond_7
    iget-object v12, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v14, :cond_9

    if-nez v9, :cond_8

    .line 274
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 275
    iget-object v12, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v12, v0}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;)V

    :cond_8
    :goto_3
    move-object v12, v0

    goto :goto_4

    .line 279
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 280
    iget-object v12, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v12, v0}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;)V

    goto :goto_3

    .line 286
    :goto_4
    :try_start_0
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-nez v0, :cond_a

    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v0, :cond_b

    :cond_a
    move/from16 p2, v4

    goto/16 :goto_9

    .line 316
    :cond_b
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v0, :cond_c

    if-eqz v7, :cond_d

    .line 317
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move/from16 p2, v4

    goto :goto_8

    :catch_0
    move-exception v0

    move/from16 p2, v4

    goto/16 :goto_10

    .line 318
    :cond_d
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mailto:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v15, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 p2, v4

    :try_start_1
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v4, v15

    invoke-virtual {v13, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v4, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v15, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v15, v13

    invoke-virtual {v4, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 320
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v4, :cond_e

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v4, v13, :cond_17

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_10

    .line 321
    :cond_e
    :goto_6
    iget-object v4, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 322
    iget-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v13, v4}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;)V

    :goto_7
    move-object v9, v4

    goto/16 :goto_c

    :goto_8
    move-object v0, v3

    goto/16 :goto_c

    .line 287
    :goto_9
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v0, :cond_f

    .line 288
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v13, v4

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 290
    :cond_f
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    :goto_a
    if-eqz v0, :cond_11

    .line 292
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v13, "tg://emoji?id="

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    :goto_b
    move-object v0, v12

    goto/16 :goto_11

    :cond_11
    if-eqz v7, :cond_12

    .line 295
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_17

    .line 296
    :cond_12
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 298
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_13

    .line 300
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    :cond_13
    if-eqz v7, :cond_15

    const/16 v4, 0x2e

    .line 303
    invoke-virtual {v7, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    if-ltz v13, :cond_15

    .line 304
    invoke-virtual {v7, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 305
    invoke-virtual {v7, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_14

    add-int/lit8 v4, v4, 0x1

    .line 306
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 308
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 310
    :cond_15
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v4, :cond_16

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v4, v13, :cond_17

    .line 311
    :cond_16
    iget-object v4, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 312
    iget-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v13, v4}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;)V

    goto/16 :goto_7

    :cond_17
    :goto_c
    if-eqz v0, :cond_10

    .line 330
    const-string v4, "://"

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceContains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v13, "http"

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v13, "mailto"

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_18

    .line 331
    const-string v4, "http://"

    .line 332
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x7

    goto :goto_d

    :cond_18
    move v4, v2

    .line 337
    :goto_d
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 338
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v13

    .line 339
    iget-object v15, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v15, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1a

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v18

    check-cast v14, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move/from16 v18, v2

    .line 340
    iget v2, v14, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move/from16 v20, v3

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v2

    .line 341
    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    if-eqz v14, :cond_19

    if-gt v13, v3, :cond_19

    if-lt v11, v2, :cond_19

    .line 342
    new-instance v14, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v14}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    move/from16 v21, v4

    .line 343
    iget v4, v14, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v14, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 344
    new-instance v4, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v4, v14}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v21

    const/16 v14, 0x21

    invoke-virtual {v0, v4, v2, v3, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    :cond_19
    move/from16 v21, v4

    :goto_f
    move/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    const/4 v14, 0x1

    goto :goto_e

    .line 347
    :cond_1a
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    .line 350
    :goto_10
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :goto_11
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_1b
    move/from16 p2, v4

    move-object v2, v0

    goto :goto_12

    :cond_1c
    move/from16 p2, v4

    move-object v9, v7

    const/4 v2, 0x0

    move-object v7, v0

    :goto_12
    if-eqz v6, :cond_1d

    .line 354
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 355
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_1d
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->viewType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1e

    .line 360
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v3, v0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v10

    .line 361
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2TextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v12, v3

    .line 362
    iget-object v11, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2TextPaint:Landroid/text/TextPaint;

    const/4 v14, 0x0

    const/4 v15, 0x1

    move v13, v12

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->dateLayout:Landroid/text/StaticLayout;

    sub-int v0, v8, v12

    .line 363
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->dateLayoutX:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 364
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v12

    goto :goto_13

    :cond_1e
    const/4 v0, 0x0

    :goto_13
    const/high16 v3, 0x40800000    # 4.0f

    if-eqz v7, :cond_21

    .line 370
    :try_start_2
    iget-object v4, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v7, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1f

    move-object v10, v4

    goto :goto_14

    :cond_1f
    move-object v10, v7

    .line 375
    :goto_14
    iget-object v11, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    sub-int v0, v8, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v12, v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v13, v0, v4

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    .line 376
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_20

    .line 377
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->titleY:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    const/16 v19, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_15

    :catch_2
    move-exception v0

    .line 380
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 382
    :cond_20
    :goto_15
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    .line 384
    :cond_21
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    .line 385
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_16

    :cond_22
    const/4 v0, 0x0

    :goto_16
    rsub-int/lit8 v0, v0, 0x4

    const/4 v4, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 387
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->viewType:I

    if-ne v0, v4, :cond_23

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_17

    :cond_23
    move-object v6, v9

    :goto_17
    const/high16 v4, 0x40a00000    # 5.0f

    if-eqz v6, :cond_25

    .line 394
    :try_start_3
    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const/4 v10, 0x0

    move v9, v8

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    .line 395
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_24

    .line 396
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    const/16 v19, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    add-int/2addr v0, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v0, v6

    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    goto :goto_18

    :catch_3
    move-exception v0

    goto :goto_19

    .line 398
    :cond_24
    :goto_18
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilersPool:Ljava/util/Stack;

    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 399
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    if-nez v0, :cond_25

    .line 401
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilersPool:Ljava/util/Stack;

    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    invoke-static {v1, v0, v6, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1a

    .line 403
    :goto_19
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_25
    :goto_1a
    const/high16 v14, 0x41200000    # 10.0f

    if-eqz v2, :cond_27

    .line 409
    :try_start_4
    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const/4 v10, 0x0

    move v9, v8

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move v2, v11

    :try_start_5
    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    .line 410
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_26

    .line 411
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v0, v6

    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    goto :goto_1b

    :catch_4
    move-exception v0

    goto :goto_1c

    .line 413
    :cond_26
    :goto_1b
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilersPool:Ljava/util/Stack;

    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 414
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    if-nez v0, :cond_28

    .line 416
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilersPool:Ljava/util/Stack;

    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    invoke-static {v1, v0, v6, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1d

    :catch_5
    move-exception v0

    move v2, v11

    .line 418
    :goto_1c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_27
    move v2, v11

    .line 422
    :cond_28
    :goto_1d
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 423
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v6, "\n"

    const-string v7, " "

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, " +"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 424
    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-static {v0, v6, v15}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 426
    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionTextPaint:Landroid/text/TextPaint;

    const/16 v9, 0x82

    invoke-static {v0, v6, v8, v7, v9}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v6, v7, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 427
    new-instance v20, Landroid/text/StaticLayout;

    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionTextPaint:Landroid/text/TextPaint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v23, v8, v6

    sget-object v24, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v27}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v20

    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionLayout:Landroid/text/StaticLayout;

    goto :goto_1e

    :cond_29
    const/4 v15, 0x0

    .line 431
    :cond_2a
    :goto_1e
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2b

    .line 432
    iget v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    iput v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionY:I

    .line 433
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    const/16 v19, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v0, v7

    add-int/2addr v6, v0

    iput v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    .line 434
    iput v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    .line 437
    :cond_2b
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    .line 438
    :goto_1f
    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_2c

    .line 439
    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilersPool:Ljava/util/Stack;

    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 440
    :cond_2c
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v6, 0x0

    .line 441
    :goto_20
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_30

    .line 443
    :try_start_6
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 444
    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 445
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v9, v7, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    move v9, v6

    .line 446
    :try_start_7
    new-instance v6, Landroid/text/StaticLayout;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    move v10, v9

    move v9, v8

    :try_start_8
    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    move v11, v10

    :try_start_9
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v17, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 p2, v3

    move/from16 v3, v17

    :try_start_a
    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move v8, v9

    .line 447
    :try_start_b
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    .line 448
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 449
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    const/16 v19, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    goto :goto_21

    :catch_6
    move-exception v0

    goto :goto_22

    .line 451
    :cond_2d
    :goto_21
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    if-nez v0, :cond_2f

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    instance-of v9, v7, Landroid/text/Spannable;

    if-eqz v9, :cond_2e

    .line 454
    check-cast v7, Landroid/text/Spannable;

    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilersPool:Ljava/util/Stack;

    invoke-static {v1, v6, v7, v9, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V

    .line 455
    :cond_2e
    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    :cond_2f
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_23

    :catch_7
    move-exception v0

    move v8, v9

    goto :goto_22

    :catch_8
    move-exception v0

    move/from16 p2, v3

    move v8, v9

    move v3, v11

    goto :goto_22

    :catch_9
    move-exception v0

    move/from16 p2, v3

    move v8, v9

    move v3, v10

    goto :goto_22

    :catch_a
    move-exception v0

    move/from16 p2, v3

    move v3, v9

    goto :goto_22

    :catch_b
    move-exception v0

    move/from16 p2, v3

    move v3, v6

    .line 459
    :goto_22
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_23
    add-int/lit8 v6, v3, 0x1

    move/from16 v3, p2

    goto/16 :goto_20

    :cond_30
    move/from16 p2, v3

    const/high16 v0, 0x42500000    # 52.0f

    .line 464
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 465
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_31

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    sub-int/2addr v3, v0

    goto :goto_24

    :cond_31
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 466
    :goto_24
    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v10, v3, v0

    const/high16 v11, 0x427c0000    # 63.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v6, v3, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v6, 0x2

    if-eqz v5, :cond_35

    .line 469
    iget-object v5, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-static {v5, v0, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 470
    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v10, 0x50

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    if-ne v9, v5, :cond_32

    goto :goto_25

    :cond_32
    move-object v15, v9

    :goto_25
    const/4 v9, -0x1

    if-eqz v5, :cond_33

    .line 475
    iput v9, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    :cond_33
    if-eqz v15, :cond_34

    .line 478
    iput v9, v15, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 480
    :cond_34
    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v3, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    int-to-float v10, v0

    invoke-virtual {v9, v3, v7, v10, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 481
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    .line 482
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v10, v16

    const/16 v19, 0x1

    aput-object v9, v10, v19

    const-string v7, "%d_%d"

    invoke-static {v3, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v16

    aput-object v0, v9, v19

    const-string v0, "%d_%d_b"

    invoke-static {v3, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 484
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v5, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    iget-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v15, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v23

    iget-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    const/16 v29, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v0

    move-object/from16 v28, v3

    invoke-virtual/range {v20 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    const/4 v3, 0x1

    .line 485
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    goto :goto_26

    :cond_35
    const/4 v3, 0x1

    .line 488
    :goto_26
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->viewType:I

    if-ne v0, v3, :cond_36

    .line 489
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2TextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3, v6, v5}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;ZILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2TextPaint:Landroid/text/TextPaint;

    const/4 v10, 0x0

    move v9, v8

    move v11, v2

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayout:Landroid/text/StaticLayout;

    .line 490
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v5, v3, [Landroid/text/Layout;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    invoke-static {v7, v1, v2, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    goto :goto_27

    :cond_36
    const/4 v7, 0x0

    .line 494
    :goto_27
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-eqz v0, :cond_37

    .line 495
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/16 v19, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_28

    :cond_37
    move v0, v7

    .line 497
    :goto_28
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-eqz v2, :cond_38

    .line 498
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 500
    :cond_38
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-eqz v2, :cond_39

    .line 501
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 503
    :cond_39
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 504
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 505
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3a

    .line 506
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3a
    move v2, v7

    .line 510
    :goto_29
    iget-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 511
    iget-object v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/StaticLayout;

    .line 512
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    if-lez v5, :cond_3b

    .line 513
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    const/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    add-int/2addr v7, v3

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3c
    add-int/2addr v0, v7

    .line 518
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3d

    .line 519
    iget v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v2, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayoutY:I

    .line 520
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->fromInfoLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 522
    :cond_3d
    iget-object v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 523
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v1, p0

    .line 576
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;->canPerformActions()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_18

    .line 682
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    goto/16 :goto_b

    .line 578
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    move v0, v3

    move v6, v0

    .line 582
    :goto_1
    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_10

    .line 583
    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/StaticLayout;

    .line 584
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    if-lez v9, :cond_f

    .line 585
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    .line 586
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_3

    const/high16 v10, 0x41000000    # 8.0f

    goto :goto_2

    :cond_3
    sget v10, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v10, v10

    :goto_2
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v11, v4

    int-to-float v12, v10

    .line 588
    invoke-virtual {v7, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v13

    add-float/2addr v13, v12

    cmpl-float v13, v11, v13

    if-ltz v13, :cond_e

    invoke-virtual {v7, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v13

    add-float/2addr v13, v12

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_e

    iget v11, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int v13, v11, v6

    if-lt v5, v13, :cond_e

    add-int/2addr v11, v6

    add-int/2addr v11, v9

    if-gt v5, v11, :cond_e

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v11, 0x0

    if-nez v9, :cond_9

    .line 594
    iput-object v11, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 595
    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 596
    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkSpoilers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 597
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    sub-int v15, v4, v10

    iget v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    sub-int v8, v5, v8

    sub-int/2addr v8, v6

    invoke-virtual {v14, v15, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 598
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    .line 599
    iput-object v13, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 600
    iput v3, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerTypePressed:I

    .line 606
    :cond_5
    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    if-eqz v8, :cond_7

    :cond_6
    :goto_3
    move v0, v2

    :goto_4
    move v6, v0

    goto/16 :goto_8

    .line 609
    :cond_7
    iget v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLinkIndex:I

    if-ne v8, v0, :cond_8

    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v8, :cond_8

    iget-boolean v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    if-nez v8, :cond_6

    .line 610
    :cond_8
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    .line 611
    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLinkIndex:I

    .line 612
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sub-int v9, v4, v10

    int-to-float v9, v9

    iget v10, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    sub-int v10, v5, v10

    sub-int/2addr v10, v6

    int-to-float v10, v10

    invoke-direct {v0, v11, v8, v9, v10}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 613
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v0

    .line 614
    iput-boolean v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    .line 615
    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linksCollector:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 616
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->startCheckLongPress()V

    .line 618
    :try_start_0
    iget v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v8, v6

    int-to-float v6, v8

    invoke-virtual {v0, v7, v3, v12, v6}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IFF)V

    .line 619
    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v7, v3, v6, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 621
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 626
    :cond_9
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    if-eqz v0, :cond_c

    .line 628
    :try_start_1
    iget v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLinkIndex:I

    if-nez v0, :cond_a

    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_a

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_a
    :goto_5
    if-eqz v11, :cond_b

    .line 629
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 630
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-interface {v0, v11, v6}, Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;->needOpenWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_7

    .line 632
    :cond_b
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    iget-object v6, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    iget v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLinkIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;->onLinkPress(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 635
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 637
    :goto_7
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    goto/16 :goto_3

    .line 639
    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    if-eqz v0, :cond_d

    .line 640
    invoke-direct {v1, v4, v5, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->startSpoilerRipples(III)V

    goto/16 :goto_3

    :cond_d
    move v6, v2

    move v0, v3

    goto :goto_8

    :cond_e
    add-int/2addr v6, v9

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_10
    move v0, v3

    goto/16 :goto_4

    .line 648
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_15

    .line 649
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_11

    const/high16 v8, 0x41000000    # 8.0f

    goto :goto_9

    :cond_11
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v8, v7

    :goto_9
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 650
    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v8, :cond_13

    if-lt v4, v7, :cond_13

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    if-gt v4, v8, :cond_13

    iget v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    if-lt v5, v8, :cond_13

    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v5, v8, :cond_13

    .line 651
    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayoutSpoilers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 652
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    sub-int v11, v4, v7

    iget v12, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    sub-int v12, v5, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 653
    iput-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 654
    iput v2, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerTypePressed:I

    move v0, v2

    move v6, v0

    .line 661
    :cond_13
    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v8, :cond_16

    if-lt v4, v7, :cond_16

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    if-gt v4, v8, :cond_16

    iget v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    if-lt v5, v8, :cond_16

    iget-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v5, v8, :cond_16

    .line 662
    iget-object v8, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2Spoilers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 663
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    sub-int v11, v4, v7

    iget v12, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    sub-int v12, v5, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 664
    iput-object v9, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v0, 0x2

    .line 665
    iput v0, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerTypePressed:I

    goto :goto_a

    .line 672
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v2, :cond_16

    iget-object v7, v1, Lorg/telegram/ui/Cells/SharedLinkCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    if-eqz v7, :cond_16

    .line 673
    invoke-direct {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->startSpoilerRipples(III)V

    :goto_a
    move v0, v2

    move v6, v0

    :cond_16
    if-nez v6, :cond_19

    .line 679
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    goto :goto_c

    .line 685
    :cond_17
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    :cond_18
    :goto_b
    move v0, v3

    :cond_19
    :goto_c
    if-nez v0, :cond_1b

    .line 687
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_d

    :cond_1a
    move v2, v3

    :cond_1b
    :goto_d
    return v2
.end method

.method protected resetPressedLink()V
    .locals 2

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linksCollector:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear(Z)V

    const/4 v0, -0x1

    .line 773
    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLinkIndex:I

    const/4 v0, 0x0

    .line 774
    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    .line 776
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->cancelCheckLongPress()V

    .line 777
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 784
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    return-void
.end method

.method public setLink(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 0

    .line 527
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    .line 528
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    .line 529
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected startCheckLongPress()V
    .locals 3

    .line 110
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkingForLongPress:Z

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;-><init>(Lorg/telegram/ui/Cells/SharedLinkCell;Lorg/telegram/ui/Cells/SharedLinkCell-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
