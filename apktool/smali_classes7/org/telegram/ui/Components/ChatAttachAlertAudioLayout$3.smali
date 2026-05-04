.class Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;
.super Lorg/telegram/ui/Components/FillLastLinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 183
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;Landroid/content/Context;)V

    .line 196
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 197
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
