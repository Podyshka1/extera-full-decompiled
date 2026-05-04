.class Lorg/telegram/ui/PrivacyControlActivity$2;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 857
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 858
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
