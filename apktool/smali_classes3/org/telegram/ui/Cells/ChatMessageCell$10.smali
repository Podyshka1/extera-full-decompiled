.class Lorg/telegram/ui/Cells/ChatMessageCell$10;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 25790
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$10;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/Float;
    .locals 0

    .line 25793
    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetanimationOffsetX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25790
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$10;->get(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 25790
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$10;->set(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Float;)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Float;)V
    .locals 0

    .line 25798
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    return-void
.end method
