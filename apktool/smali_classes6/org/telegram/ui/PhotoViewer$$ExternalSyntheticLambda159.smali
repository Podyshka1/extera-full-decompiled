.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda159;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda159;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda159;->f$1:Lorg/telegram/ui/Components/ShareAlert;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda159;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda159;->f$1:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$uPvrEgqIS5NA0U4Bw4l3OdKJIrQ(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/ShareAlert;)V

    return-void
.end method
