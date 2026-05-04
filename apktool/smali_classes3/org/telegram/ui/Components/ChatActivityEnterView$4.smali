.class Lorg/telegram/ui/Components/ChatActivityEnterView$4;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 820
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0

    .line 828
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 820
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$4;->set(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method
