.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchFilterView"
.end annotation


# instance fields
.field avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field closeIconView:Landroid/widget/ImageView;

.field data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field removeSelectionRunnable:Ljava/lang/Runnable;

.field protected final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field selectAnimator:Landroid/animation/ValueAnimator;

.field private selectedForDelete:Z

.field private selectedProgress:F

.field shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field thumbDrawable:Landroid/graphics/drawable/Drawable;

.field titleView:Landroid/widget/TextView;

.field private final whiteBg:Z


# direct methods
.method public static synthetic $r8$lambda$hNQpj2K-QJlzCICIF219TmSjmew(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->lambda$setSelectedForDelete$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetselectedForDelete(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputselectedProgress(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 7

    .line 2275
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2262
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->removeSelectionRunnable:Ljava/lang/Runnable;

    .line 2276
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2277
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->whiteBg:Z

    .line 2278
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p3, 0x20

    const/high16 v0, 0x42000000    # 32.0f

    .line 2279
    invoke-static {p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2281
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    .line 2282
    sget p3, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2283
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    const/16 v2, 0x10

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2285
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    const/4 p1, 0x1

    const/high16 p3, 0x41600000    # 14.0f

    .line 2286
    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2287
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v3, 0x42180000    # 38.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x41e00000    # 28.0f

    .line 2288
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const p2, -0xbb906c

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 2289
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2290
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->updateColors()V

    return-void
.end method

.method private synthetic lambda$setSelectedForDelete$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2378
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    .line 2379
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->updateColors()V

    return-void
.end method


# virtual methods
.method public getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;
    .locals 1

    .line 2395
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 2399
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public isSelectedForDelete()Z
    .locals 1

    .line 2319
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    return v0
.end method

.method public setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 12

    .line 2323
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 2324
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x42000000    # 32.0f

    .line 2325
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->iconResFilled:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2326
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2327
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2328
    iget v1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v5, 0x4

    const/high16 v7, 0x41800000    # 16.0f

    if-ne v1, v5, :cond_3

    .line 2329
    iget-object p1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    .line 2330
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 2331
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v10, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    .line 2332
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget v0, Lorg/telegram/messenger/R$drawable;->chats_saved:I

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p1

    .line 2333
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 2334
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2335
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2336
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2338
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-static {v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2339
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2341
    :cond_1
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    .line 2342
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2343
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-static {v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2344
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x7

    if-ne v1, p1, :cond_4

    .line 2347
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget v0, Lorg/telegram/messenger/R$drawable;->chats_archive:I

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p1

    .line 2348
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 2349
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2350
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2351
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2353
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2359
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2361
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2362
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setSelectedForDelete(Z)V

    return-void
.end method

.method public setSelectedForDelete(Z)V
    .locals 4

    .line 2367
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 2370
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->removeSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2371
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    .line 2372
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 2373
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2374
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2376
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 2377
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2381
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2388
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2389
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedForDelete:Z

    if-eqz p1, :cond_3

    .line 2390
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->removeSelectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateColors()V
    .locals 8

    .line 2294
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->whiteBg:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v0

    .line 2295
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v2

    .line 2296
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v3

    .line 2297
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v5

    .line 2298
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    invoke-static {v0, v2, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2299
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->titleView:Landroid/widget/TextView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    invoke-static {v3, v5, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2300
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2302
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2303
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    const v3, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2304
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->closeIconView:Landroid/widget/ImageView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 2306
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2307
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2308
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 2310
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->selectedProgress:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2312
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    if-eqz v0, :cond_2

    iget v1, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 2313
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 2315
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
