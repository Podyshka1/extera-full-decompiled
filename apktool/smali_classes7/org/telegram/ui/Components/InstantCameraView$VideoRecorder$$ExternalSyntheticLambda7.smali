.class public final synthetic Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->$r8$lambda$-hflIVS63LeU3X03zbaR0ZHC85Y(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void
.end method
