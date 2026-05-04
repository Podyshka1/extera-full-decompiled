.class public Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method public static synthetic $r8$lambda$29lAqpIqKXg_BNVnnlfL3uIbLIY(Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G8D7DO0p3G-8qqWZdvCQ0IAsv8g(Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->lambda$onCreateViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 2483
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x2

    .line 2510
    new-array v0, v0, [I

    .line 2511
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2512
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    add-float/2addr v0, p1

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$mshowUnlockPremium(Lorg/telegram/ui/Components/ReactionsContainerLayout;FF)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;)V
    .locals 0

    .line 2531
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$mshowCustomEmojiReactionDialog(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2565
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2570
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 2544
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2545
    :cond_1
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2546
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2547
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2548
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->-$$Nest$msetReaction(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    const/16 p1, 0x11

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 2498
    new-instance p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 2517
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;)V

    iput-object v2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    .line 2518
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;)V

    invoke-static {p2, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fputcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;)V

    .line 2519
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p2

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_reactions_expand:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2520
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2521
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result p2

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result p2

    if-eq p2, v1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 2524
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 2522
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2526
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p2

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2527
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 2528
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrExpandPanel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2529
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p2

    const/16 v1, 0x1e

    invoke-static {v1, v1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2530
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcustomEmojiReactionsIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2533
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    goto/16 :goto_2

    .line 2501
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockContainer:Landroid/widget/FrameLayout;

    .line 2502
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;I)V

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fputpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/Premium/PremiumLockIconView;)V

    .line 2503
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    move-result-object p2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const v3, 0x3f333333    # 0.7f

    invoke-static {v0, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setColor(I)V

    .line 2504
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    move-result-object p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2505
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2506
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2507
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 2508
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockContainer:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    move-result-object p2

    const/16 v1, 0x1a

    invoke-static {v1, v1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2509
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpremiumLockIconView(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2514
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockContainer:Landroid/widget/FrameLayout;

    .line 2537
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 2538
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, p2, v1

    invoke-direct {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2539
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 2554
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2555
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2556
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2557
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->updateSelected(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    .line 2560
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public updateItems(Z)V
    .locals 7

    .line 2574
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2575
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->oldItems:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2576
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 2577
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetvisibleReactionsList(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2578
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetvisibleReactionsList(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2579
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v4, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;

    iget-object v6, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-nez v6, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :cond_0
    move v6, v0

    :goto_1
    invoke-direct {v5, v3, v6, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;ILorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2581
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$mshowUnlockPremiumButton(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2582
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;ILorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2585
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InnerItem;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;ILorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 2588
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$Adapter;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->oldItems:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 2590
    :cond_4
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
