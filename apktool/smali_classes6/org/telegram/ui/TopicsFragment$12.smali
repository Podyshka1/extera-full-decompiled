.class Lorg/telegram/ui/TopicsFragment$12;
.super Landroidx/recyclerview/widget/ItemTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$12;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-void
.end method


# virtual methods
.method protected shouldSwipeBack()Z
    .locals 1

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$12;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgethiddenCount(Lorg/telegram/ui/TopicsFragment;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
