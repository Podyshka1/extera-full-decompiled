.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda82;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda82;->f$1:I

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$aK23P4I-6rqFiBmAo-p6XnFs1Y8(Lorg/telegram/ui/PhotoViewer;I)V

    return-void
.end method
