.class Lorg/telegram/ui/Components/AnimationProperties$5;
.super Lorg/telegram/ui/Components/AnimationProperties$IntProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimationProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/ShapeDrawable;)Ljava/lang/Integer;
    .locals 0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$5;->get(Landroid/graphics/drawable/ShapeDrawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/drawable/ShapeDrawable;I)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 93
    check-cast p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/AnimationProperties$5;->setValue(Landroid/graphics/drawable/ShapeDrawable;I)V

    return-void
.end method
