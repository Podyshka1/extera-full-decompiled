.class Lorg/telegram/ui/StickersActivity$2;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 1

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v0, 0x1

    aput p1, p2, v0

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
