.class Lorg/telegram/ui/Cells/TextCheckbox2Cell$1;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextCheckbox2Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Cells/TextCheckbox2Cell;)Ljava/lang/Float;
    .locals 0

    .line 57
    invoke-static {p1}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;->-$$Nest$fgetanimationProgress(Lorg/telegram/ui/Cells/TextCheckbox2Cell;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckbox2Cell;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckbox2Cell$1;->get(Lorg/telegram/ui/Cells/TextCheckbox2Cell;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 48
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckbox2Cell;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextCheckbox2Cell$1;->setValue(Lorg/telegram/ui/Cells/TextCheckbox2Cell;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Cells/TextCheckbox2Cell;F)V
    .locals 0

    .line 51
    invoke-static {p1, p2}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;->-$$Nest$msetAnimationProgress(Lorg/telegram/ui/Cells/TextCheckbox2Cell;F)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
