.class public final synthetic Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$18;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$18;[I[IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/PhotoViewer$18;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;->f$1:[I

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;->f$2:[I

    iput-boolean p4, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/PhotoViewer$18;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;->f$1:[I

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;->f$2:[I

    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda19;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$18;->$r8$lambda$n5aQCRhkGXBrQBK6azRhUWsAzAo(Lorg/telegram/ui/PhotoViewer$18;[I[IZ)V

    return-void
.end method
