.class Lorg/telegram/ui/Components/FragmentContextView$CallMessageItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/vkryl/core/lambda/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FragmentContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallMessageItem"
.end annotation


# instance fields
.field private final cell:Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;

.field private final parent:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetcell(Lorg/telegram/ui/Components/FragmentContextView$CallMessageItem;)Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView$CallMessageItem;->cell:Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lorg/telegram/messenger/voip/GroupCallMessage;)V
    .locals 3

    .line 2896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2897
    new-instance v0, Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$CallMessageItem;->cell:Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;

    const/high16 v1, -0x1000000

    const/16 v2, 0x22

    .line 2898
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;->setBackgroundColor(I)V

    .line 2899
    invoke-virtual {v0}, Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;->setSingleLine()V

    .line 2900
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;->set(Lorg/telegram/messenger/voip/GroupCallMessage;)V

    const/4 p2, 0x0

    .line 2901
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2903
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$CallMessageItem;->parent:Landroid/view/ViewGroup;

    .line 2904
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public performDestroy()V
    .locals 2

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$CallMessageItem;->parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$CallMessageItem;->cell:Lorg/telegram/ui/Components/conference/message/GroupCallMessageCell;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
