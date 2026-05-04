.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public customLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public customView:Landroid/view/View;

.field public dismiss:Z

.field public icon:I

.field private iconColor:Ljava/lang/Integer;

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public needCheck:Z

.field private overrideClickListener:Landroid/view/View$OnClickListener;

.field private rightIconVisibility:I

.field public text:Ljava/lang/CharSequence;

.field private textColor:Ljava/lang/Integer;

.field public textSizeDp:I

.field private view:Landroid/view/View;

.field public viewToSwipeBack:Landroid/view/View;

.field public viewType:I

.field private visibility:I


# direct methods
.method public static synthetic $r8$lambda$EMcch9trWqU0Ih_MgId08MnuK7A(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 2554
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    return-void
.end method

.method public static synthetic $r8$lambda$UCfl1Ou2_sj1JpK5Oaz6AY-mdyM(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->lambda$add$0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCtaINqCCgAfz-9UMfY_1BLwZN8(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 1

    .line 2549
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2550
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$madd(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->add(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smasColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 1

    .line 0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smasCustom(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asCustom(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smasSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smasSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smasText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->asText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 2448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2444
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    .line 2449
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewType:I

    return-void
.end method

.method private add(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;
    .locals 14

    const/4 v0, 0x1

    .line 2527
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2489
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$mcreatePopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 2490
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2491
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2492
    :cond_0
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewType:I

    const/high16 v3, 0x42400000    # 48.0f

    const/4 v4, 0x5

    const/high16 v5, 0x43440000    # 196.0f

    const/4 v6, -0x1

    if-nez v2, :cond_3

    .line 2493
    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v9, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->needCheck:Z

    const/4 v11, 0x0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2494
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 2495
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2496
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2497
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2498
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2499
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    .line 2500
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2502
    :cond_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2503
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2504
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2505
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2521
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2522
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2524
    :cond_2
    iput-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    goto/16 :goto_0

    :cond_3
    if-ne v2, v0, :cond_4

    .line 2526
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 2527
    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2528
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2529
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    .line 2531
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->customView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->customLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2532
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->customView:Landroid/view/View;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x2

    if-ne v2, v7, :cond_8

    .line 2534
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2535
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v2, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 2536
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2537
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 2538
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2539
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2540
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2541
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    .line 2542
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2544
    :cond_6
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2545
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2546
    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2547
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewToSwipeBack:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v1

    .line 2548
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    iput-object v2, v8, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    .line 2553
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda2;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2556
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    .line 2557
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 2558
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2560
    :cond_7
    iput-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    goto :goto_0

    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 2562
    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    .line 2563
    sget v3, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 2564
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2565
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textSizeDp:I

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2566
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2567
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2568
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2569
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x43480000    # 200.0f

    .line 2570
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    .line 2571
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2572
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    .line 2574
    :cond_9
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 2575
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2576
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->overrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_a

    .line 2577
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2580
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    return-object p1
.end method

.method private static asColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    .line 2463
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    return-object v0
.end method

.method private static asCustom(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    .line 2467
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    .line 2468
    iput-object p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->customView:Landroid/view/View;

    .line 2469
    iput-object p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->customLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method private static asSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    .line 2453
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    .line 2454
    iput p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->id:I

    .line 2455
    iput p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    .line 2456
    iput-object p2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2457
    iput-object p3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    .line 2458
    iput-boolean p4, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->dismiss:Z

    .line 2459
    iput-boolean p5, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->needCheck:Z

    return-object v0
.end method

.method private static asSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    .line 2474
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    .line 2475
    iput p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    .line 2476
    iput-object p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2477
    iput-object p2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    .line 2478
    iput-object p3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->viewToSwipeBack:Landroid/view/View;

    return-object v0
.end method

.method private static asText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    .line 2482
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;-><init>(I)V

    .line 2483
    iput-object p0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    .line 2484
    iput p1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textSizeDp:I

    return-object v0
.end method

.method private synthetic lambda$add$0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 2

    .line 2506
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2507
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->dismiss:Z

    if-eqz v0, :cond_1

    .line 2508
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetprocessedPopupClick(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2511
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fputprocessedPopupClick(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)V

    .line 2512
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetallowCloseAnimation(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 2515
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetparentMenu(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2516
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetparentMenu(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void

    .line 2517
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2518
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public openSwipeBack()V
    .locals 2

    .line 2598
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    .line 2599
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 2

    .line 2631
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2632
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->textColor:Ljava/lang/Integer;

    .line 2633
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->iconColor:Ljava/lang/Integer;

    .line 2634
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    .line 2635
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_1
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .line 2613
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    if-eq p1, v0, :cond_0

    .line 2614
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->icon:I

    .line 2615
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    .line 2616
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 2591
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->overrideClickListener:Landroid/view/View$OnClickListener;

    .line 2592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2593
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setRightIconVisibility(I)V
    .locals 1

    .line 2622
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    if-eq v0, p1, :cond_0

    .line 2623
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    .line 2624
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    .line 2625
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->rightIconVisibility:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2604
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->text:Ljava/lang/CharSequence;

    .line 2605
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_0

    .line 2606
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2607
    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2608
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 2584
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->visibility:I

    .line 2585
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2586
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
