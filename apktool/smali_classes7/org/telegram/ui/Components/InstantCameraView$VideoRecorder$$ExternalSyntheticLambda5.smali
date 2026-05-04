.class public final synthetic Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

.field public final synthetic f$1:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->$r8$lambda$w8k16z4yRK2BrTtNr2dUOuNus_4(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void
.end method
