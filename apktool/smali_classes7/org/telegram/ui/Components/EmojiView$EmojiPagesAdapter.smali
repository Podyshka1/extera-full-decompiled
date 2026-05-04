.class Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 8137
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method


# virtual methods
.method public canScrollToTab(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 8145
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView;->stickersBanned:Z

    if-eqz v3, :cond_2

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 8146
    :goto_0
    invoke-virtual {v2, v1, v0, p1}, Lorg/telegram/ui/Components/EmojiView;->showStickerBanHint(ZZZ)V

    return v0

    :cond_2
    if-nez p1, :cond_3

    .line 8149
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-boolean v2, p1, Lorg/telegram/ui/Components/EmojiView;->emojiBanned:Z

    if-eqz v2, :cond_3

    .line 8150
    invoke-virtual {p1, v1, v1, v0}, Lorg/telegram/ui/Components/EmojiView;->showStickerBanHint(ZZZ)V

    return v0

    :cond_3
    return v1
.end method

.method public customOnDraw(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 8140
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 8157
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcurrentTabs(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8172
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrStickers:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8170
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrGIFs:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8168
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->Emoji:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTabPadding(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41900000    # 18.0f

    .line 8179
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 8192
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcurrentTabs(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget-object p2, p2, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    .line 8193
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
