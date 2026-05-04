.class Lorg/telegram/ui/SecretMediaViewer$20;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/String;)V
    .locals 0

    .line 2422
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$20;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Float;
    .locals 0

    .line 2430
    invoke-virtual {p1}, Lorg/telegram/ui/SecretMediaViewer;->getAnimationValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2422
    check-cast p1, Lorg/telegram/ui/SecretMediaViewer;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/SecretMediaViewer$20;->get(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 2422
    check-cast p1, Lorg/telegram/ui/SecretMediaViewer;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer$20;->setValue(Lorg/telegram/ui/SecretMediaViewer;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/SecretMediaViewer;F)V
    .locals 0

    .line 2425
    invoke-virtual {p1, p2}, Lorg/telegram/ui/SecretMediaViewer;->setAnimationValue(F)V

    return-void
.end method
