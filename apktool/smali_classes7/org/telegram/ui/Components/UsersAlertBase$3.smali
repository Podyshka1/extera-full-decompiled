.class Lorg/telegram/ui/Components/UsersAlertBase$3;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/UsersAlertBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Components/UsersAlertBase;)Ljava/lang/Float;
    .locals 0

    .line 346
    invoke-static {p1}, Lorg/telegram/ui/Components/UsersAlertBase;->-$$Nest$mgetColorProgress(Lorg/telegram/ui/Components/UsersAlertBase;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 338
    check-cast p1, Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$3;->get(Lorg/telegram/ui/Components/UsersAlertBase;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 338
    check-cast p1, Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/UsersAlertBase$3;->setValue(Lorg/telegram/ui/Components/UsersAlertBase;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Components/UsersAlertBase;F)V
    .locals 0

    .line 341
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UsersAlertBase;->setColorProgress(F)V

    return-void
.end method
