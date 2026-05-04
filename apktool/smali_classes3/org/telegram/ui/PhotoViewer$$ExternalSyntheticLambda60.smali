.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChooseDownloadQualityLayout$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda60;->f$0:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method


# virtual methods
.method public final onQualitySelected(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda60;->f$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$jg-M2nh9YHXUseoSuGLsu1qALco(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V

    return-void
.end method
