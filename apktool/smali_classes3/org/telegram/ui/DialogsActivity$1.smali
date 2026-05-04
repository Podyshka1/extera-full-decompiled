.class Lorg/telegram/ui/DialogsActivity$1;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Ljava/lang/String;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$1;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/Float;
    .locals 0

    .line 751
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$1;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 743
    check-cast p1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogsActivity$1;->get(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 743
    check-cast p1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$1;->setValue(Lorg/telegram/ui/DialogsActivity;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/DialogsActivity;F)V
    .locals 0

    .line 746
    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetScrollY(Lorg/telegram/ui/DialogsActivity;F)V

    return-void
.end method
