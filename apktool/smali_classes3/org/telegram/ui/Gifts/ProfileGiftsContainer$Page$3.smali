.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

.field final synthetic val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAddAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 250
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onAddAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    return-void
.end method

.method protected onChangeAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onChangeAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    return-void
.end method

.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    return-void
.end method

.method protected onRemoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onRemoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    return-void
.end method
