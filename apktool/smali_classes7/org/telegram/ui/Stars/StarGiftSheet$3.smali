.class Lorg/telegram/ui/Stars/StarGiftSheet$3;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 1

    const/4 p2, 0x1

    if-nez p3, :cond_1

    .line 377
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v0, 0x0

    invoke-static {p3, v0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$msetupNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;ZZ)V

    .line 378
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetleft(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetleft(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcontainer(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 381
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p3, p2, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$msetupNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;ZZ)V

    .line 382
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetright(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 383
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetright(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcontainer(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p2

    .line 385
    :goto_0
    check-cast p1, Landroid/widget/FrameLayout;

    .line 386
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 387
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 388
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1, v1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$msetupNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;ZZ)V

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetleft(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 359
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetleft(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcontainer(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcontainer(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$msetupNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;ZZ)V

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetright(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 365
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetright(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$fgetcontainer(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p1

    .line 367
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 368
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x77

    const/4 v2, -0x1

    .line 369
    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$mhasNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$mhasNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$3;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->-$$Nest$mhasNeighbour(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
