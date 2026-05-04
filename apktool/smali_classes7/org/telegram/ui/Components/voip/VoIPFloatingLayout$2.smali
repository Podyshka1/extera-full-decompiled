.class Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 116
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->-$$Nest$fgetoverrideCornerRadius(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->-$$Nest$fgetoverrideCornerRadius(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->-$$Nest$fgetoverrideCornerRadius(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->-$$Nest$fgetfloatingMode(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void

    .line 126
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->-$$Nest$fgetfloatingMode(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, v1

    :cond_3
    move v5, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
