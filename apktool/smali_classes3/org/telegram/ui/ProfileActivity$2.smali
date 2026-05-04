.class Lorg/telegram/ui/ProfileActivity$2;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$2;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/Float;
    .locals 0

    .line 815
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$2;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget p1, p1, Lorg/telegram/ui/ProfileActivity;->headerShadowAlpha:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 806
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$2;->get(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 806
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$2;->setValue(Lorg/telegram/ui/ProfileActivity;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/ProfileActivity;F)V
    .locals 0

    .line 809
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$2;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput p2, p1, Lorg/telegram/ui/ProfileActivity;->headerShadowAlpha:F

    return-void
.end method
