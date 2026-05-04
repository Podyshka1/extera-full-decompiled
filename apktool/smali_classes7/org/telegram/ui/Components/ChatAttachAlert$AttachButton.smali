.class Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachButton"
.end annotation


# instance fields
.field private currentId:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 1

    .line 1110
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1111
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1112
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    .line 1113
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1115
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/glass/GlassTabView;->createAttachTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 p2, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 1116
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1127
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->updateCheckedState(Z)V

    return-void
.end method

.method public setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V
    .locals 1

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/glass/GlassTabView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/glass/GlassTabView;->setTabAnimation(Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 1133
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->currentId:I

    return-void
.end method

.method updateCheckedState(Z)V
    .locals 4

    .line 1120
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->currentId:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetselectedId(Lorg/telegram/ui/Components/ChatAttachAlert;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1121
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setSelected(ZZ)V

    return-void
.end method
