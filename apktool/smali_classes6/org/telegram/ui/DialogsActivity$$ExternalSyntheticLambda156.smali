.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda156;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda156;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda156;->f$1:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda156;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda156;->f$1:Ljava/lang/Long;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$7dWwyoABzo9Ft5M1v7K75Ad88gI(Lorg/telegram/ui/DialogsActivity;Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method
