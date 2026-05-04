.class Lorg/telegram/ui/Stars/StarGiftSheet$2;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method public static synthetic $r8$lambda$pVGkYMzBwBuC6fNWwksB58xC58k(Lorg/telegram/ui/Stars/StarGiftSheet$2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$2;->lambda$swapViews$0(Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$swapViews$0(Z)V
    .locals 3

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$mgetNeighbourSavedGift(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 298
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fputfirstSet(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetgiftsList(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$mgetNeighbourSlugGift(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fputfirstSet(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetgiftsList(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    .line 307
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fputoverrideNextIndex(Lorg/telegram/ui/Stars/StarGiftSheet;I)V

    .line 308
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 309
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin;->hide(ZJ)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->is(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected setTranslationX(Landroid/view/View;F)V
    .locals 4

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 318
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    neg-float v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    .line 325
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$000(Lorg/telegram/ui/Stars/StarGiftSheet;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const/4 p2, 0x0

    cmpl-float v1, v0, p2

    if-lez v1, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const v1, 0x4059999a    # 3.4f

    mul-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p2, v0

    .line 328
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr v0, p2

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 330
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 331
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetleft(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetleft(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcontainer(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p2

    if-ne p1, p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetleft(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetleft(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 334
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcontainer(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p2

    if-ne p1, p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 335
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 337
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetright(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetright(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcontainer(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p2

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetright(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetright(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetactionView(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method protected swapViews()V
    .locals 3

    .line 292
    invoke-super {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    .line 293
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$mhasNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 294
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$mhasNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    .line 295
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$2;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
