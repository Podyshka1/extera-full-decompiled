.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1$1;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1;Ljava/lang/String;)V
    .locals 0

    .line 37439
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1$1;->this$3:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/Float;
    .locals 0

    .line 37447
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTimeAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37439
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1$1;->get(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 37439
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5$1$1;->setValue(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Cells/ChatMessageCell;F)V
    .locals 0

    .line 37442
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTimeAlpha(F)V

    return-void
.end method
