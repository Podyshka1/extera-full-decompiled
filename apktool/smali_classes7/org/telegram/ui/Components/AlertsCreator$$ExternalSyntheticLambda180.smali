.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda180;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# direct methods
.method public synthetic constructor <init>(ILorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda180;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda180;->f$1:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda180;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda180;->f$1:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$76YT2YI2man99sD2sQ30wzTGwX0(ILorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    return-void
.end method
