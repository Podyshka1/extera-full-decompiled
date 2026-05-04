.class public final synthetic Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback5Return;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/UniversalFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/UniversalFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/UniversalFragment;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/UniversalFragment;

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Components/UItem;

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/UniversalFragment;->onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
