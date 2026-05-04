.class Lorg/telegram/ui/Components/ChatAttachAlert$15;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0

    .line 2603
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 2613
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2614
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbottomFadeDrawable(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 2606
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2608
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$15;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbottomFadeDrawable(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int p4, p2, p4

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p4, v0

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
