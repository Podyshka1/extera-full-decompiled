.class Lorg/telegram/ui/DialogsActivity$27$1;
.super Lorg/telegram/ui/Components/BlurredRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$27;->openAnimationStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$27;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$27;Landroid/content/Context;)V
    .locals 0

    .line 5622
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$27$1;->this$1:Lorg/telegram/ui/DialogsActivity$27;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected measureBlurTopPadding()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 5625
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
