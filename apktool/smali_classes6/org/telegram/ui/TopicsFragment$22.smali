.class Lorg/telegram/ui/TopicsFragment$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 3937
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$22;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLayoutChanges()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$allowLayoutChanges(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic bottomOffsetAnimated()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$bottomOffsetAnimated(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic clipWithGradient(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$clipWithGradient(Lorg/telegram/ui/Components/Bulletin$Delegate;I)Z

    move-result p1

    return p1
.end method

.method public getBottomOffset(I)I
    .locals 0

    .line 3940
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$22;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetbottomOverlayContainer(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$22;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetbottomOverlayContainer(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$22;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetbottomOverlayContainer(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic getTopOffset(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$getTopOffset(Lorg/telegram/ui/Components/Bulletin$Delegate;I)I

    move-result p1

    return p1
.end method

.method public synthetic onBottomOffsetChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onBottomOffsetChange(Lorg/telegram/ui/Components/Bulletin$Delegate;F)V

    return-void
.end method

.method public synthetic onHide(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onHide(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method

.method public synthetic onShow(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onShow(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method
