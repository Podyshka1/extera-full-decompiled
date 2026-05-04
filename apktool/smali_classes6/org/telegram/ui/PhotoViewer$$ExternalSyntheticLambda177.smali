.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda177;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda177;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda177;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda177;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda177;->f$1:Z

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$NsRW1trI4wPyb1Qs5kUZr_t6qEI(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void
.end method
