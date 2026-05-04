.class Lorg/telegram/ui/ChatRightsEditActivity$3;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatRightsEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatRightsEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetloading(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 540
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->-$$Nest$fgetloading(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 532
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
