.class Lorg/telegram/ui/Components/StickerEmptyView$3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerEmptyView;->createButtonLayout(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerEmptyView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerEmptyView;Landroid/content/Context;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerEmptyView$3;->this$0:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v0
.end method
