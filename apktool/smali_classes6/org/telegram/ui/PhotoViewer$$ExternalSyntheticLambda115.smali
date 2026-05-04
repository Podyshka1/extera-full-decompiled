.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda115;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaController$SavedFilterState;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaController$SavedFilterState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda115;->f$0:Lorg/telegram/messenger/MediaController$SavedFilterState;

    return-void
.end method


# virtual methods
.method public final onEGLThreadAvailable(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda115;->f$0:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$XOTPhLAZm8mZ8L3lTQCTvxQRcFo(Lorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/FilterGLThread;)V

    return-void
.end method
