.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/PhotoViewer;

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$xEwIVFtvgkW_2kPbgtOtz0SRPkQ(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    return-void
.end method
