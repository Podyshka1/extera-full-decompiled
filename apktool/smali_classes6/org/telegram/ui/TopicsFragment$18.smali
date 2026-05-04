.class Lorg/telegram/ui/TopicsFragment$18;
.super Landroid/view/View;
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
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 0

    .line 1491
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$18;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 1494
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1495
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$18;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1496
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
