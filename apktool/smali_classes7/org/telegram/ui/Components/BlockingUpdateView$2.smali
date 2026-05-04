.class Lorg/telegram/ui/Components/BlockingUpdateView$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BlockingUpdateView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BlockingUpdateView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BlockingUpdateView;Landroid/content/Context;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView$2;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView$2;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->-$$Nest$fgetradialProgress(Lorg/telegram/ui/Components/BlockingUpdateView;)Lorg/telegram/ui/Components/RadialProgress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 166
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/high16 p2, 0x42100000    # 36.0f

    .line 169
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p4, p2

    .line 170
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p2

    .line 171
    div-int/lit8 p5, p5, 0x2

    .line 172
    iget-object p3, p1, Lorg/telegram/ui/Components/BlockingUpdateView$2;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {p3}, Lorg/telegram/ui/Components/BlockingUpdateView;->-$$Nest$fgetradialProgress(Lorg/telegram/ui/Components/BlockingUpdateView;)Lorg/telegram/ui/Components/RadialProgress;

    move-result-object p3

    add-int v0, p4, p2

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, v0, p2}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    return-void
.end method
