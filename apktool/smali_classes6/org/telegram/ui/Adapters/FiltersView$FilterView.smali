.class public Lorg/telegram/ui/Adapters/FiltersView$FilterView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/FiltersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterView"
.end annotation


# instance fields
.field avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field titleView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mupdateColors(Lorg/telegram/ui/Adapters/FiltersView$FilterView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->updateColors()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 707
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 708
    iput-object p2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 709
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x1e

    const/high16 v1, 0x41f00000    # 30.0f

    .line 710
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    const/4 p1, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    .line 713
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 714
    iget-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    const/high16 v3, 0x42100000    # 36.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->updateColors()V

    return-void
.end method

.method private updateColors()V
    .locals 5

    const/high16 v0, 0x42000000    # 32.0f

    .line 719
    invoke-static {v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v0, :cond_1

    .line 722
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v1, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 723
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    return-void

    .line 726
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getThemedColor(I)I
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 11

    .line 733
    iput-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->data:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 735
    iget v0, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x42000000    # 32.0f

    if-ne v0, v1, :cond_0

    .line 736
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/messenger/R$drawable;->chats_archive:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    .line 737
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->-$$Nest$fgettitle(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 744
    :cond_0
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->iconResFilled:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    .line 745
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v6

    invoke-static {v0, v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v7

    invoke-static {v0, v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 747
    iget v0, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    .line 748
    iget-object v0, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_2

    .line 749
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 750
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 751
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v5, Lorg/telegram/messenger/R$drawable;->chats_saved:I

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v0

    .line 752
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 753
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 754
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 755
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 757
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-static {v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 758
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 760
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4

    .line 761
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 762
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-static {v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 763
    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 766
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->thumbDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$FilterView;->titleView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->-$$Nest$fgettitle(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
