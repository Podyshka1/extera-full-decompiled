.class Lorg/telegram/ui/Components/SearchViewPager$5;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchViewPager;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchViewPager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$5;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 373
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$5;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
