.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroidx/core/util/Consumer;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JJLandroidx/core/util/Consumer;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$2:J

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$3:Landroidx/core/util/Consumer;

    iput p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$1:J

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$2:J

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$3:Landroidx/core/util/Consumer;

    iget v6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda109;->f$4:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$_q7MQH9OeIKP_r1qU_A4zfyWivI(Lorg/telegram/messenger/MessagesController;JJLandroidx/core/util/Consumer;I)V

    return-void
.end method
